*LibGit-Patches
projectDirectoryFrom: projectPath version: versionString
  | mcPlatform githubCacheDirectory projectDirectory downloadCacheKey cachePath |
  downloadCacheKey := self downloadCacheKey: projectPath version: versionString.
  mcPlatform := MetacelloPlatform current.
  githubCacheDirectory := mcPlatform
    directoryFromPath: versionString
    relativeTo: (self cacheDirectoryFor: projectPath).
  cachePath := self downloadCache at: downloadCacheKey ifAbsent: [  ].
  (cachePath isNil
    or: [ 
      (projectDirectory := mcPlatform
        directoryFromPath: cachePath
        relativeTo: githubCacheDirectory) exists not ])
    ifTrue: [ 
      MetacelloScriptGitHubDownloadNotification new
        projectPath: projectPath;
        versionString: versionString;
        signal.	
	
	[ (LGitRepository on: githubCacheDirectory asFileReference)
		cloneHttps: 'https://github.com/' , projectPath, '.git';
		checkout: versionString ] asLibGitActionSequence.
	
      self downloadCache at: downloadCacheKey put: (githubCacheDirectory / 'repository') fullName.
      projectDirectory := mcPlatform
        directoryFromPath: cachePath
        relativeTo: githubCacheDirectory ].
  ^ projectDirectory