tests
testPackCRC
	self fail.
	"larger repositories (larger than we use for testing) exhibit problems with object CRC in the packfile (see https://github.com/libgit2/libgit2/pull/2535). This has been fixed in libgi2 v0.22.1" 