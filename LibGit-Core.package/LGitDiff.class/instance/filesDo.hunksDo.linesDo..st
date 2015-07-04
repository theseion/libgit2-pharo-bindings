enumerating
filesDo: filesBlockOrNil hunksDo: hunksBlockOrNil linesDo: linesBlockOrNil
	self withReturnHandlerDo: [
		self
			diff_foreach: self
			file_cb: (filesBlockOrNil ifNotNil: [
				LGitDiffFileCallback on: filesBlockOrNil ])
			hunk_cb: (hunksBlockOrNil ifNotNil: [
				LGitDiffHunkCallback on: hunksBlockOrNil ])
			line_cb: (linesBlockOrNil ifNotNil: [
				LGitDiffLineCallback on: linesBlockOrNil ])
			payload: nil ]