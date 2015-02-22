private
deleteAllLooseObjects
	(self repositoryReference / '.git/objects') directories
		select: [ :directory | directory basename ~= 'pack']
		thenDo: [ :directory | directory deleteAll ] 