doits
load_UFFI_64bitFixes
	"Temp, load fixes for issue: https://pharo.fogbugz.com/f/cases/17978"
	
	Gofer it
		url: 'http://smalltalkhub.com/mc/JanVanDeSandt/Stuff/main';
		package: 'FFI-Kernel';
		package: 'UnifiedFFI-Tests';
		load.