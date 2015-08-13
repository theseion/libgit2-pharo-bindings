baseline
baseline: spec
  <baseline>
  spec
    for: #('pharo4.x' 'pharo5.x')
    do: [ 
      spec
        package: 'NativeBoost'
        with: [ 
          spec
            repository: 'http://smalltalkhub.com/mc/Pharo/Pharo50Inbox/main';
            file: 'NativeBoost-Core-MaxLeske.168' ].
		spec
			baseline: 'QualityAssistant'
	      with: [ 
	       	spec repository: 'github://Uko/QualityAssistant:master' ].
      spec
        package: 'LibGit-Tests';
        package: 'LibGit-GT' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-Patches' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-Core' with: [ spec requires: #(#'NativeBoost') ].
      spec
        group: 'default'
        with: #('LibGit-Core' 'LibGit-Patches' 'LibGit-GT').
		spec
			group: 'development'
			with: #('default' 'LibGit-Tests' 'QualityAssistant').
		spec postLoadDoIt: #changeRepositoryType ]
