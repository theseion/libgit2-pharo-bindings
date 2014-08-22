*LibGit-Core-FFI-Handling
asLibGitActionSequence
	| threads |
	threads := LG2ThreadsH uniqueInstance.
	[
		threads threads_init.
		self value.
	] ensure: [ threads threads_shutdown ]
	