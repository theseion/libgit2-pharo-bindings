accessing
id
	"| ffi oidPtr extStr str |
	ffi := self gitffi.
	oidPtr := ffi object_id: self.
	extStr := NativeBoost allocate: 40 + 1.
	
	ffi oid_fmt: extStr id: oidPtr.

	str := extStr readString.
	extStr free.
	^ str"
	^ id