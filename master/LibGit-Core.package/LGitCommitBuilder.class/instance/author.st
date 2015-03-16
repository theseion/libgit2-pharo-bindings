accessing
author
	^ author ifNil: [
		author := self repository defaultSignature
			freeAfterUse: true;
			yourself ]