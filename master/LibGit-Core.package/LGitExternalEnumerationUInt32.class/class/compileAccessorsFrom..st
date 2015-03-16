class initialization
compileAccessorsFrom: aDictionary
	aDictionary keysAndValuesDo: [ :value :symbol |
		(self class canUnderstand: symbol) ifFalse: [
			self class
				compile: (String streamContents: [ :stream |
					stream
						nextPutAll: symbol asString; lf; tab;
						nextPutAll: '^ self basicNew'; lf; tab; tab;
						nextPutAll: 'value: ';
						nextPutAll: value asString;
						nextPutAll: ';'; lf; tab; tab;
						nextPutAll: 'yourself' ])
				classified: 'accessing-values' ] ]