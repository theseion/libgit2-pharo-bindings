doits
setUpFonts
	#('SourceCodeProRegular' 'SourceCodeProBold' 'SourceSansProRegular' 'SourceSansProBold') do: [ :each | 
		Smalltalk globals 
			at: each asSymbol
			ifAbsent: [
				Gofer new 
					smalltalkhubUser: 'girba' project: 'FreeFonts';
					package: each;
					load ] ].
	FreeTypeSystemSettings loadFt2Library: true.
	FreeTypeFontProvider current updateFromSystem.
	
	(Smalltalk at: #StandardFonts) codeFont: (LogicalFont 
			familyName: 'Source Code Pro' 
			fallbackFamilyNames: nil 
			pointSize: 10 
			stretchValue: 5 
			weightValue: 400
			slantValue: 0)