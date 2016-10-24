settings
settingsOn: aBuilder 
	<systemsettings>
	(aBuilder group: #'SSH Credentials')
		parent: #SCM;
		with: [ 
			(aBuilder setting: #'usernameSsh')
				target: self;
				label: 'SSH Username';
				description: 'If you are trying to connect to github through ssh (something like git@github.com:owner/projectName), the username should be `git`'.

			(aBuilder setting: #'keyPassPhrase')
				target: self;
				label: 'Passphrase of your SSH key'.


			(aBuilder setting: #keyFilePublicPath)
				target: self;
				type: #FilePathEncoder;
				label: 'Public SSH key';
				description: 'The path to your private ssh key, probably /home/<userName>/.ssh/id_rsa.pub'.

			(aBuilder setting: #keyFilePrivatePath)
				target: self;
				type: #FilePathEncoder;
				label: 'Private SSH key';
				description: 'The path to your private ssh key, probably /home/<userName>/.ssh/id_rsa'.
		]