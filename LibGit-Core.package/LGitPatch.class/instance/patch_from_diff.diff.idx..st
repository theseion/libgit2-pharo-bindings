libgit-calls
patch_from_diff: out diff: diff idx: idx
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_patch_from_diff(LGitPatch * self, LGitDiff diff, NBUInt32 idx))
		options: #(  )