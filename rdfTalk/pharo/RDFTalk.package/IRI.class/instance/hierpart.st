accessing
hierpart
	"I return hierpart of the IRI"
	^ String << [ :stream |
		self hasScheme ifTrue: [ 
			self isSchemeUsingDoubleSlash
				ifTrue: [ stream nextPut: $/; nextPut: $/ ] ].
		stream nextPutAll: self authority.
		self printPathQueryFragmentOn: stream ]