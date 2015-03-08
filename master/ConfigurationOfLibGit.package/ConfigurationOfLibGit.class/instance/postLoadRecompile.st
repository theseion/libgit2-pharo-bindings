doits
postLoadRecompile
	| package |
	package := (Smalltalk classNamed: #PackageInfo) 
		ifNotNil: [ :packageInfo | packageInfo named: 'LigGit' ]
		ifNil: [ (Smalltalk classNamed: #RPackageOrganizer) 
			ifNotNil: [ :rPackageOrganizer | 
				rPackageOrganizer default packageNamed: 'LibGit-Core' ]
			ifNil: [ ^ self ] ].
	package classes do: #compileAll