helpers
createAuthor
	^ LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		when: DateAndTime now;
		yourself