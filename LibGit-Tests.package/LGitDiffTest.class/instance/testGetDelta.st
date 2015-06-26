tests
testGetDelta
	<todo: 'the explicit delay shouldn''t be necessary. There seems to be some kind of race condition. Note that the delay needs to be before the write (might be a FileSystem issue)'>
	| repo diff options file |
	repo := self newRepo state4WithCommit.
	file := repo repositoryReference / 'libgit_tests' / 'foo'.
	500 milliSeconds asDelay wait.
	file writeStreamDo: [ :stream |
			stream nextPutAll: 'extra text' ].
	diff := LGitDiff of: repo.
	options := LGitDiffOptions externalNew.
	options diff_init_options: options version: LGitDiffOptionsVersionEnum GIT_DIFF_OPTIONS_VERSION.
	diff diff_index_to_workdir: diff repo: repo index: repo index opts: options.
	self
		shouldnt: [ diff diff_get_delta: diff idx: 0 ]
		raise: Error