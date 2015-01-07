accessing
printOn: stream
	self class == PPIRIProperty
		ifTrue: [ stream nextPutAll: 'IRI:_' ].
	stream
		nextPutAll: name;
		nextPut: $=;
		nextPutAll: value asString