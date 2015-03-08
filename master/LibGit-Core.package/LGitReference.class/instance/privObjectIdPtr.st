private
privObjectIdPtr
	| oId |
	oId := self reference_target: self.
	oId address isNull
		ifTrue: [ 
			| resolvedRef |
			resolvedRef := self class of: self repository.
			self reference_resolve: self ref: resolvedRef.
			oId := self reference_target: resolvedRef ].
	^ oId