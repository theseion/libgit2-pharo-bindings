*LibGit-GT
gtInspectorGitBranchesIn: composite
	<gtInspectorPresentationOrder: 10>
	| repository |
	repository := LGitRepository on: self.
	composite list
			title: 'Branches';
			display: [ 
				| branches |
				branches := OrderedCollection new.
				repository branchesDo: [ :ref | branches add: ref ].
				branches ];
			format: #basename;
			when: [ repository isProperRepository ];
			act: [ :list | list update ] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'update'