private
installAccessors
	"Copy superclass methods, which serve as a template where generated code will be installed.
	Each subclass of NBExternalArray should implement (override) these key methods "
	Author useAuthor: 'NativeBoost' during: [ 
		self basicAddSelector: #primAt: withMethod: (NBExternalArray >> #at:) copy.
		self basicAddSelector: #primAt:put: withMethod: (NBExternalArray >> #at:put:) copy
	]