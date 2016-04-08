as yet unclassified
updateCallMethods

	| methods |
	
	methods := class existingMethodsThatReferTo: #primitiveNativeCall.
	methods do: [ :each | self updateCallMethod: (class methodFor: each) ]