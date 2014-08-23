*LibGit-Patches
writeVersion: aVersion
    | members |
    directory := (members := MCGitRepository parseName: aVersion info name) last.
    self deleteExistingPackageStructureFor: members.
    self fileUtils ensureDirectoryExists: self packageFileDirectory.
    self initializePackageFileDirectoryCache.
    super writeVersion: aVersion