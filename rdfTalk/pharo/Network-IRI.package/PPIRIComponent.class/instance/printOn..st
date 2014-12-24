as yet unclassified
printOn: stream
	self class == PPIRIComponent
		ifTrue: [ stream nextPutAll: 'IRI:' ].
	super printOn: stream