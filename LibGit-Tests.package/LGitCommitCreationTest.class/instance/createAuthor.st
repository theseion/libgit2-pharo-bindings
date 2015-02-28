helpers
createAuthor
	^ LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		dateAndTime: DateAndTime now;
		yourself