libgit-calls
diff_patch_from_buffers: out old_buffer: old_buffer old_len: old_len old_as_path: old_as_path new_buffer: new_buffer new_len: new_len new_as_path: new_as_path opts: opts
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_patch_from_blobuffers(LGitPatch * self, NBVoid * old_buffer, NBUInt32 old_len, String old_as_path, String new_buffer, NBUInt32 new_len, String new_as_path, LGitDiffOptions opts))
		options: #(  )