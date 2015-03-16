accessing
fieldsDesc
	^#(
	NBUInt32 version;
	LG2RemoteH2Cb set_callbacks;
	LG2RemoteH5Cb connect;
	LG2RemoteH7Cb ls;
	LG2RemoteH8Cb push;
	LG2RemoteH9Cb negotiate_fetch;
	LG2RemoteH11Cb download_pack;
	LG2RemoteH12Cb is_connected;
	LG2RemoteH13Cb read_flags;
	LG2RemoteH14Cb cancel;
	LG2RemoteH12Cb close;
	LG2RemoteH14Cb free;

	)