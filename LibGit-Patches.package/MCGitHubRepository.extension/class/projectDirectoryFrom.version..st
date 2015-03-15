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
						repository open.
						(LGitRemote of: repository named: 'origin')
							lookup;
							pull.
						repository fastForward ] ].
			self downloadCache at: downloadCacheKey put: githubCacheDirectory fullName ].
	^ githubCacheDirectory