testing
isEnabled
	"Don't make the free call if object not in external memory"
	^ enabled and: [ handle isNull not ]