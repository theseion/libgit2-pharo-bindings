operations
finish
	| unpackOk refFailed refStatus callback |
	self withReturnHandlerDo: [ self push_finish: self ].
	
	unpackOk := self push_unpack_ok: self.
	refFailed := false.
	refStatus := #().
	callback := LGitPushStatusForeachCallback on: [ :ref :msg :data |
		refStatus := { ref. msg. data }.
		(msg isString and: [ (msg beginsWith: 'ok') not ]) 
			ifTrue: [ refFailed := true. 1 ]
			ifFalse: [ 0 ] ].
	self
		push_status_foreach: self
		cb: callback
		data: (NativeBoost allocate: 4).
		
	(unpackOk and: [ refFailed not ]) ifFalse: [ LGitAbstractError signalWith: refStatus ].
	self updateTips