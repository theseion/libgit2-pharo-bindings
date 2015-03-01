accessing
value
	"prevent double frees when freeing manually"
	self disable.
	^ handle value