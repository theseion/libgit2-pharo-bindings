libgit-calls
diff_patch_from_blob_and_buffer: out old_blob: old_blob old_as_path: old_as_path buffer: buffer buffer_len: buffer_len buffer_as_path: buffer_as_path opts: opts
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_patch_from_blob_and_buffer(LGitPatch * self, LGitBlob old_blob, String old_as_path, String buffer, NBUInt32 buffer_len, String buffer_as_path, LGitDiffOptions opts))
		options: #(  )