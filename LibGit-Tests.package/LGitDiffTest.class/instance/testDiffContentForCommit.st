tests
testDiffContentForCommit
	| referenceCommit diffCommit diff delta newFile relativePath oldFile |
	self touchFileAndCommit.
	referenceCommit := self repository head object.
	diffCommit := referenceCommit parents first.
	diff := (LGitDiff of: self repository)
		diffTree: referenceCommit tree toTree: diffCommit tree;
		yourself.
	
	"number of changed files"
	self assert: diff numberOfDeltas equals: 1.
	delta := diff deltaAt: diff numberOfDeltas.
	
	"what change has been made to a given file"
	self assert: delta status equals: LGitDeltaTypeEnum GIT_DELTA_MODIFIED.
	newFile := delta newFile.
	oldFile := delta oldFile.
	"informations about the objects in the delta, e.g. old / new id"
	self assert: newFile path equals: oldFile path.
	relativePath := self file parent basename, '/', self file basename.
	self assert: newFile path equals: relativePath.
	Transcript open.
	diff
		filesDo: [ :currentDelta :progress :payload | 0 ]
		hunksDo: [ :currentDelta :hunk :payload |
			"hunk start"
			Transcript show: 'start: ', hunk oldStart asString, ' -> ', hunk newStart asString ; cr.
			"hunk end"
			Transcript show: 'end: ', (hunk oldStart + hunk oldNumberOfLines) asString.
			Transcript show: ' -> ', (hunk newStart + hunk newNumberOfLines) asString; cr. 0 ]
		linesDo: [ :currentDelta :hunk :line :payload |
			Transcript show: line oldLineNumber asString, ' -> ', line newLineNumber asString; cr.
			Transcript show: line content, '; length: ', line size asString; cr. 0 ]