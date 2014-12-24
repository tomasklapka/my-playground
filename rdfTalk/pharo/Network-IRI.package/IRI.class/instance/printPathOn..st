printing
printPathOn: stream
	self hasPath ifFalse: [ ^ nil ].
 	segments
		do: [ :each |
			each == #/
				ifFalse: [ self encodePath: each on: stream ] ]
		separatedBy: [
			stream nextPut: $/ ]
