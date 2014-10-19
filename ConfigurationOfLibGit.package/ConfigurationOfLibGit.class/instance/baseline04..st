baseline
baseline04: spec
    <version: '0.4-baseline'>
    
	spec for: #common do: [ 
		spec blessing: #baseline.

		spec package: 'LibGit2Bindings' with: [ 
			spec repository: 'github://theseion/LibGit' ].

		spec package: 'LibGit-Tests' with: [ 
			spec repository: 'githhub://theseion/LibGit' ].
		
		spec package: 'LibGit-GT' with: [ 
			spec
				repository: 'github://theseion/LibGit';
				requires: 'LibGit-Core' ].
		
		spec package: 'LibGit-Patches' with: [ 
			spec 
				repository: 'github://theseion/LibGit';
				requires: 'LibGit-Core' ].
	
		spec package: 'LibGit-Core' with: [
			spec repository: 'github://theseion/LibGit'.
			spec
				requires: #(LibGit2Bindings);
				postLoadDoIt: #postLoadRecompile ].
				
		spec group: 'default' with: #('LibGit-Core' 'LibGit-Patches' 'LibGit-Tests' 'LibGit-GT').
			
		spec postLoadDoIt: #changeRepositoryType
	]