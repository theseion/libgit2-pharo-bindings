tests
testRepoShouldHaveWorkingDirectory
	| repo |
	repo := self newRepo state3Opened.
	"Don't compare full path here. Resolving via libgit2 can lead to situations
	where the LOCATION is the same but the PATH is not (e.g. with symlinked 
	directories:
	/a/b/
	/c/ -> /a/
	=> /a/b/ ~= /c/b/"
	self assert: repo workingDirectory basename equals: '_test_repo_'.
	self assert: repo repositoryReference basename equals: '_test_repo_'