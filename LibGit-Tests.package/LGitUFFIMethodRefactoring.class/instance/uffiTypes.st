accessing
uffiTypes

	^uffiTypes ifNil: [ 
		uffiTypes := Dictionary new
			at: #NBVoid put: FFIVoid name;
			at: #NBInt8 put: FFIInt8 name;
			at: #NBUInt8 put: FFIUInt8 name;
			at: #NBInt16 put: FFIInt16 name;
			at: #NBUInt16 put: FFIUInt16 name;
			at: #NBInt32 put: FFIInt32 name;
			at: #NBUInt32 put: FFIUInt32 name;
			at: #NBInt64 put: FFIInt64 name;
			at: #NBUInt64 put: FFIInt64 name;
			at: #NBExternalString put: FFIExternalString name;
			at: #NBCharacterType put: FFICharacterType name;
			yourself ]