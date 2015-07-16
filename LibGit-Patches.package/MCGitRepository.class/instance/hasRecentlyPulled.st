testing
hasRecentlyPulled
	^ pullTimeStamp isNil or: [ pullTimeStamp > (DateAndTime now - 2 minute) ]