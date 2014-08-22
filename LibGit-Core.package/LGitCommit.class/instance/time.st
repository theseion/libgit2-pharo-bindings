accessing
time
	| time offset |
	time := self commit_time: self.
	offset := self commit_time_offset: self.
	^ LGitUtils dateAndTimeFrom: time time and: (Duration minutes: offset)