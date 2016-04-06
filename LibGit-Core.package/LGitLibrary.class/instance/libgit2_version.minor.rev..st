libgit-calls
libgit2_version: major minor: minor rev: rev
	"Return the version of the libgit2 library being currently used."
	^self ffiCall: #(void git_libgit2_version(int *major, int *minor, int *rev))