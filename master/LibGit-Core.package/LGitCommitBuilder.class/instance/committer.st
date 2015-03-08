accessing
committer
	^ committer ifNil: [
		committer := self repository defaultSignature
		freeAfterUse: true;
		yourself ]