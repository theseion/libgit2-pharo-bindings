private
setUpHandlers
	^ (self declaration associations collect: [ :assoc |
		assoc value -> (LGitCallReturnHandler for: assoc value) ]) asDictionary