baseline
baseline02: spec
    <version: '0.2-baseline'>
    
	spec for: #common do: [ 
		spec blessing: #baseline.

		spec package: 'LibGit2Bindings' with: [ 
			spec repository: 'http://smalltalkhub.com/mc/FileSystemGitDev/LibGit2Bindings/main' ].
		
		spec project: 'GToolkit' with: [
			spec
				className: 'ConfigurationOfGToolkit';
				version: #development;
				file:  'ConfigurationOfGToolkit';
				repository: 'http://www.smalltalkhub.com/mc/Moose/GToolkit/main';
				postLoadDoIt: #setUpIDE ].
		
	   	spec package: 'Phexample' with: [
			spec repository: 'http://smalltalkhub.com/mc/Phexample/Phexample/main' ].
	
		spec package: 'LibGit-Core' with: [
			spec repository: 'http://smalltalkhub.com/mc/FileSystemGitDev/LibGit2/main'.
			spec
				requires: #(Phexample LibGit2Bindings GToolkit);
				postLoadDoIt: #postLoadRecompile ]
	].