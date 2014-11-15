*LibGit-Patches
projectDirectoryFrom: projectPath version: versionString
  | mcPlatform githubCacheDirectory downloadCacheKey cachePath repository |
  downloadCacheKey := self downloadCacheKey: projectPath version: versionString.
  mcPlatform := MetacelloPlatform current.
  githubCacheDirectory := mcPlatform
    directoryFromPath: versionString
    relativeTo: (self cacheDirectoryFor: projectPath).
  cachePath := self downloadCache at: downloadCacheKey ifAbsent: [  ].
  (cachePath isNil or: [ githubCacheDirectory exists not ])
    ifTrue: [ 
      MetacelloScriptGitHubDownloadNotification new
        projectPath: projectPath;
        versionString: versionString;
        signal.	

	repository := LGitRepository on: githubCacheDirectory asFileReference.
	(githubCacheDirectory exists and: [ repository isProperRepository ])
		ifFalse: 	[
			[ repository
				cloneHttps: 'https://github.com/' , projectPath, '.git';
				checkout: versionString ] asLibGitActionSequence ]
		ifTrue: [ 
			[ 
				repository open.
				(LGitRemote 
					of: repository
					named: 'origin')
						load;
						pull.
				repository fastForward ] asLibGitActionSequence ].
	
      self downloadCache at: downloadCacheKey put: githubCacheDirectory fullName ].
  ^ githubCacheDirectory