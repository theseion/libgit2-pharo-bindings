tests
testNumDeltasZero
	| repo diff options |
	repo := self newRepo state4WithCommit.
	diff := LGitDiff of: repo.
	options := LGitDiffOptions externalNew.
	options diff_init_options: options version: LGitDiffOptionsVersionEnum GIT_DIFF_OPTIONS_VERSION.
	diff diff_index_to_workdir: diff repo: repo index: repo index opts: options.
	self assert: (diff diff_num_deltas: diff) equals: 0