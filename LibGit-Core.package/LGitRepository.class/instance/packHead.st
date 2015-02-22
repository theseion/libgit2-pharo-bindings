operations
packHead
	<todo: 'This method is distructive. It will delete *all* objects, including those not in the pack (not reachable from head'>
	"USE VERY CAREFULLY"
	
	self createPackForReference: self head.
	self deleteAllLooseObjects.