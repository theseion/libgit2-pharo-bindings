helpers
createAuthor
	^ LGitSignature new
		setName: 'Bart Simpson';
		setEmail: 'bartman@gotham.com';
		setDateAndTime: DateAndTime now;
		yourself