tests
testPatchFromDiff
	<todo: 'the explicit delay shouldn''t be necessary. There seems to be some kind of race condition. Note that the delay needs to be before the write (might be a FileSystem issue)'>
	| repo diff options file patch printCallback |
	repo := self newRepo state4WithCommit.
	file := repo repositoryReference / 'libgit_tests' / 'foo'.
	1 second asDelay wait.
	file writeStreamDo: [ :stream |
			stream nextPutAll: 'extra text' ].
	diff := LGitDiff of: repo.
	options := LGitDiffOptions externalNew.
	options diff_init_options: options version: LGitDiffOptionsVersionEnum GIT_DIFF_OPTIONS_VERSION.
	diff diff_index_to_workdir: diff repo: repo index: repo index opts: options.
	self assert: (diff diff_num_deltas: diff) equals: 1.
	
	patch := LGitPatch of: repo.
	(patch patch_from_diff: patch diff: diff idx: 0).
	Transcript open.
	printCallback := LGitDiffLineCallback on: [ :delta :hunk :line :payload |
		Transcript show: line prim_content. 0].
	patch patch_print: patch print_cb: printCallback payload: nil