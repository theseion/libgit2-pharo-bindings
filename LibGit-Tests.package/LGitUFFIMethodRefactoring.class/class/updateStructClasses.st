as yet unclassified
updateStructClasses

	LGitExternalStructure allSubclassesDo: [ :eachClass |
		self updateStructClass: eachClass ]