transforming
updateFieldsDesc
	"self new updateFieldsDesc"

	| replacer |
	
	replacer := RBParseTreeRewriter new.
	self uffiTypes keysAndValuesDo: [ :old :new |
		replacer replaceTree: (RBLiteralNode value: old)
			withTree: (RBLiteralNode value: new) ].

	self convertMethod: #fieldsDesc for: class theMetaClass using: replacer