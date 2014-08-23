baseline
baseline03: spec
    <version: '0.3-baseline'>
    
	spec for: #common do: [ 
		spec blessing: #baseline.

		spec package: 'LibGit2Bindings' with: [ 
			spec repository: 'github://theseion/LibGit' ].

		spec package: 'LibGit-GT' with: [ 
			spec
				repository: 'github://theseion/LibGit';
				requires: 'LibGit-Core' ].
		
		spec package: 'LibGit-Patches' with: [ 
			spec 
				repository: 'github://theseion/LibGit';
				requires: 'LibGit-Core' ].
				
		spec project: 'GToolkit' with: [
			spec
				className: 'ConfigurationOfGToolkit';
				version: #development;
				file:  'ConfigurationOfGToolkit';
				repository: 'http://www.smalltalkhub.com/mc/Moose/GToolkit/main';
				postLoadDoIt: #setUpIDE ].
	
		spec package: 'LibGit-Core' with: [
			spec repository: 'github://theseion/LibGit'.
			spec
				requires: #(LibGit2Bindings);
				postLoadDoIt: #postLoadRecompile ].
				
		spec 
			group: 'default' with: #('LibGit-Core' 'LibGit-Patches');
			group: 'defaultPlusGT' with: #('LibGit-Core' 'GToolkit' 'LibGit-GT')

	].

	spec for: #'pharo4.x' do: [ 
		spec project: 'GToolkit' with: [
			spec
				className: 'ConfigurationOfGToolkit';
				version: #bleedingEdge;
				file:  'ConfigurationOfGToolkit';
				repository: 'http://www.smalltalkhub.com/mc/Moose/GToolkit/main';
				postLoadDoIt: #setUpIDE ] ].
		
	spec postLoadDoIt: #changeRepositoryType