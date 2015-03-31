*LibGit-GT
gtInspectorGitBranchesIn: composite
	<gtInspectorPresentationOrder: 5999>
	| repository |
	LGitGlobal runSequence: [
		repository := LGitRepository on: self.
		composite list
				title: 'git: Branches';
				display: [ 
					| branches |
					branches := OrderedCollection new.
					repository branchesDo: [ :ref | branches add: ref ].
					branches ];
				format: #basename;
				when: [ repository isProperRepository ];
				act: [ :list | list update ] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'update' ]