accessing
updateReference
	^ updateReference ifNil: [ updateReference := self repository master ]