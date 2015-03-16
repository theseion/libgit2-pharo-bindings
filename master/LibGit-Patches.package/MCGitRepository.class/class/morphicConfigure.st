instance creation
morphicConfigure
	^ self new
		repoUrl: (UIManager default request: 'URL to repository ("file://", "git://", "ssh://", "scp like")');
		ensureDirectory;
		yourself