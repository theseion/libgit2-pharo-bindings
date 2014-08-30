accessing
updateReference
	^ updateReference ifNil: [ updateReference := 'HEAD' ]