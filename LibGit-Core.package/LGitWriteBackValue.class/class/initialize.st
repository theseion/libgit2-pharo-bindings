class initialization
initialize
	"self allSubclassesDo: [ :class |
		class
			initValueType: class valueTypeName;
			installAccessors ]"