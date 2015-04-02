converting
asArray
	^ super asArray collect: [ :address | address readString ]