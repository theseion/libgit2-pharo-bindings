tests
testFeatures

	| features |
	
	features := LGitLibrary uniqueInstance libgit2_features.
	self assert: features > 0