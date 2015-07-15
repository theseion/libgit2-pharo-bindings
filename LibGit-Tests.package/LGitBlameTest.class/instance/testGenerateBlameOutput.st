tests
testGenerateBlameOutput
	| blame blob |
	self
		touchFileWithMultipleLines;
		touchFileAndCommit.
	
	blame := LGitBlame
		of: self repository
		on: self file.
	
	blob := LGitBlob
		of: self repository
		fromFile: self file.

	String streamContents: [ :stream |
	blob contents lines doWithIndex: [ :line :index |
		| hunk |
		hunk := blame hunkAtLineNumber: index.
		hunk ifNotNil: [
			stream
				nextPutAll: (hunk finalCommitId hexString first: 8);
				nextPutAll: ' (';
				nextPutAll: (hunk finalSignature name); space;
				nextPutAll: (hunk finalSignature dateAndTime asString); space;
				nextPutAll: index asString;
				nextPutAll: ') ';
				nextPutAll: line; crlf ] ] ]