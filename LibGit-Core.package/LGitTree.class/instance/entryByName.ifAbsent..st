accessing
entryByName: aString ifAbsent: aBlock
	| entry |
	entry := self tree_entry_byname: self name: aString.
	entry isNil
		ifTrue: [ ^aBlock value ].
	entry repository: self repository.
	^entry