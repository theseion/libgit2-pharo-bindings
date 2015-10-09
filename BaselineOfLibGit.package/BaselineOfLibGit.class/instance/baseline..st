baseline
baseline: spec
  <baseline>
  spec
    for: #(common)
    do: [ 
		spec
			baseline: 'QualityAssistant'
	      with: [ 
	       	spec repository: 'github://Uko/QualityAssistant:master' ].
      spec
        package: 'LibGit-Tests' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-GT' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-Patches' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-Core'.
      spec
        group: 'default'
        with: #('LibGit-Core').
		spec
			group: 'development'
			with: #('default' 'LibGit-Tests' 'QualityAssistant' 'LibGit-Patches' 'LibGit-GT').
		spec
			group: 'tests'
			with: #('LibGit-Tests').
		spec postLoadDoIt: #changeRepositoryType ].
	
	spec
		for: #('pharo4.x')
		do: [ 
			spec
	        package: 'NativeBoost'
	        with: [ 
	          spec
	            repository: 'http://smalltalkhub.com/mc/Pharo/Pharo50Inbox/main';
	            file: 'NativeBoost-Core-MaxLeske.168' ].
		 	spec
				package: 'LibGit-Core'
				with: [ spec requires: 'NativeBoost' ].
			
			spec
	        group: 'default'
	        with: #('LibGit-Core') ]
