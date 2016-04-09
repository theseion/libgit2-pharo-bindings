libgit-calls
treebuilder_insert: out bld: bld filename: filename id: objectId filemode: filemode
	
	^ self
		call:
			#(LGitReturnCodeEnum git_treebuilder_insert #(LGitTreeEntry * out , self , String filename , LGitId objectId , LGitFilemodeEnum filemode))
		options: #()