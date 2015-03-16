instance creation
fromDateAndTime: aDateAndTime
	^ self externalNew 
		time: aDateAndTime asUnixTime;
		offset: aDateAndTime offset asMinutes asInteger;
		yourself