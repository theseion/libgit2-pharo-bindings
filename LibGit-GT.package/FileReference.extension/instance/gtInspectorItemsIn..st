*LibGit-GT
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 6000>
	| table1 repo |
	(table1 := composite table )
		title: 'git: Items';
		display: [ 
			| children |
			children := self directories, self files.
			self isRoot 
				ifTrue: [ children ]
				ifFalse: [ 
					children asOrderedCollection 
						addFirst: self parent;
						yourself ] ];
		column: 'Name' evaluated: [:each | (self isChildOf: each) 
								ifTrue: [ '..' ] 
								ifFalse: [ each basename ]] width: 400;
		column: 'Size' evaluated: [:each | each humanReadableSize] width: 100;
		column: 'Creation' evaluated: [ :each | 
			String streamContents: [:s | 
				each creationTime printYMDOn: s.
				s nextPut: Character space.
				each creationTime printHMSOn: s ]];
		icon: [ :each | 
			each isDirectory 
				ifTrue: [ GLMUIThemeExtraIcons glamorousFolder ] 
				ifFalse: [ GLMUIThemeExtraIcons glamorousBrowse ] ];
		when: [self isDirectory and: [self hasChildren]];
		selectionAct: [:table | table selection delete. table update] entitled: 'Delete'.
		LGitGlobal runSequence: [
			repo := LGitRepository on: self.
			repo isProperRepository ifFalse: [ ^ self ].
			[ repo repositoryReference allDirectories contains: [ :e | e basename = '.git' ] ] whileFalse: [ repo repositoryReference: repo repositoryReference parent ]. 
			table1 column: 'Dirty' evaluated: [ :each | ((self isChildOf: each) or: [ each basename = '.git' or: [ each isDirectory ] ])
				ifTrue: [ '-' ]
				ifFalse: [ (repo isDirty: each) asString ] ] ]