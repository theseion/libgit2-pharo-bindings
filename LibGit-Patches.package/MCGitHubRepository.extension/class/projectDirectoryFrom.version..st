*LibGit-Patches
projectDirectoryFrom: projectPath version: versionString
	| mcPlatform githubCacheDirectory downloadCacheKey cachePath repository |
	downloadCacheKey := self downloadCacheKey: projectPath version: versionString.
	mcPlatform := MetacelloPlatform current.
	githubCacheDirectory := mcPlatform directoryFromPath: versionString relativeTo: (self cacheDirectoryFor: projectPath).
	cachePath := self downloadCache at: downloadCacheKey ifAbsent: [  ].
	(cachePath isNil or: [ githubCacheDirectory exists not ])
		ifTrue: [ 
			MetacelloScriptGitHubDownloadNotification new
				projectPath: projectPath;
				versionString: versionString;
				signal.
			LGitGlobal runSequence: [
				repository := LGitRepository on: githubCacheDirectory asFileReference.
				(githubCacheDirectory exists and: [ repository isProperRepository ])
					ifFalse: [ 
						repository
							cloneHttps: 'https://github.com/' , projectPath , '.git';
							checkout: versionString ]
					ifTrue: [ 
						| credentials credentialsCallback |
						repository open.
						credentials := LGitRemote credentialsSsh.
						credentialsCallback := LGitCredAcquireCallback
							on: [ :cred :url :username_from_url :allowed_types :data | 
								credentials createWith: cred.
								0 ].
						(LGitRemote of: repository named: 'origin')
							lookup;
							pullWithFetchOptions: (LGitFetchOptions defaults
								callbacks: (LGitRemoteCallbacks defaults
									credentials: credentialsCallback;
									yourself);
								yourself).
						repository fastForward ] ].
			self downloadCache at: downloadCacheKey put: githubCacheDirectory fullName ].
	^ githubCacheDirectory