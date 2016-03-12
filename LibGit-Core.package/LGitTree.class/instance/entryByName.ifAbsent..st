accessing
entryByName: aString ifAbsent: aBlock
	^ (self tree_entry_byname: self name: aString) ifNil: aBlock