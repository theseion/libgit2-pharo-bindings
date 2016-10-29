libgit-calls
treebuilder_new: out repo: repo source: source
	
	^ self
		callUnchecked:
			#(LGitReturnCodeEnum git_treebuilder_new #(LGitTreeBuilder * out , LGitRepository repo , LGitTree source))
		options: #(+ optCoerceNilToNull)