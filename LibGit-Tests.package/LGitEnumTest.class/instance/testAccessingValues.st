tests
testAccessingValues
	LGitExternalEnumerationUInt32 allSubclassesDo: [ :class |
		class declaration keys do: [ :symbol |
			[ class perform: symbol ]
				on: MessageNotUnderstood
				do: [ :ex | ex resignalAs: AssertionFailure ] ] ]