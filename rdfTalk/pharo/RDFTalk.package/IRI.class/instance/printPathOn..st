printing
printPathOn: stream
	self hasPath ifFalse: [ ^ stream nextPut: $/ ].
 	segments do: [ :each | 
		stream nextPut: $/.
		each == #/
			ifFalse: [ 
				stream nextPutAll: each
				"self encodePath: each on: stream" ] ] 