helpers
createAuthor
	^ LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		setDateAndTime: DateAndTime now;
		yourself