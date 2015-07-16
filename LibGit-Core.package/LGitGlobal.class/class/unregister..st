private
unregister: aHandle
	self allocationRegistry
		removeKey: aHandle
		ifAbsent: [ Warning signal: 'double free detected' ]