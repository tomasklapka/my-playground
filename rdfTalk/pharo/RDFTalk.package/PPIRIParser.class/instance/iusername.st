grammar
iusername
	^ super iusername flatten ==> [ :nodes |
		nodes 	ifNotNil: [ PPIRIComponent name: 'username' value: nodes ] ]