baseline
baseline04: spec
    <version: '0.5-baseline'>
    
	spec for: #common do: [ 
		spec blessing: #baseline.

		spec package: 'NativeBoost' with: [ 
			spec
				repository: 'http://smalltalkhub.com/mc/Pharo/Pharo40Inbox/main';
				file: 'NativeBoost-Core-MaxLeske.162' ].

		spec package: 'LibGit-Tests' with: [ 
			spec repository: 'github://theseion/LibGit' ].
		
		spec package: 'LibGit-GT' with: [ 
			spec
				repository: 'github://theseion/LibGit';
				requires: 'LibGit-Core' ].
		
		spec package: 'LibGit-Patches' with: [ 
			spec 
				repository: 'github://theseion/LibGit';
				requires: 'LibGit-Core' ].
	
		spec package: 'LibGit-Core' with: [
			spec
				repository: 'github://theseion/LibGit';
				requires: #(NativeBoost) ].
				
		spec group: 'default' with: #('LibGit-Core' 'LibGit-Patches' 'LibGit-Tests' 'LibGit-GT').
			
		spec postLoadDoIt: #changeRepositoryType
	]