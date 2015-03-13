operations
runSequence: aBlock
	[
		self libgit2_init.
		aBlock value
	] ensure: [ self libgit2_shutdown ]