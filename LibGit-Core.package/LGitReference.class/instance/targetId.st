accessing
targetId
	| oId |
	oId := self reference_target: self.
	oId getHandle isNull
		ifTrue: [ ^ nil ].
	oId internalize.
	^ oId