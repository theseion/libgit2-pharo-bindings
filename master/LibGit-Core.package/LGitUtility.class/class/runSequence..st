operations
runSequence: aBlock
	[
		self threads_init.
		aBlock value
	] ensure: [ self threads_shutdown ]