ffi-calls
libSSH2Version: required_version

	^self ffiCall: #( const char * libssh2_version(int required_version) ) module: self libSSH2LibraryName