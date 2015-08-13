enumerating
filesDo: filesBlockOrNil binaryFilesDo: binaryBlockOrNil hunksDo: hunksBlockOrNil linesDo: linesBlockOrNil
	self withReturnHandlerDo: [
		self
			diff_foreach: self
			file_cb: (filesBlockOrNil ifNotNil: [
				LGitDiffFileCallback on: filesBlockOrNil ])
			binary_cb: (binaryBlockOrNil ifNotNil: [
				LGitDiffBinaryCallback on: binaryBlockOrNil ])
			hunk_cb: (hunksBlockOrNil ifNotNil: [
				LGitDiffHunkCallback on: hunksBlockOrNil ])
			line_cb: (linesBlockOrNil ifNotNil: [
				LGitDiffLineCallback on: linesBlockOrNil ])
			payload: nil ]