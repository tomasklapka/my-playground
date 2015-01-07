grammar
iusername
	^ super iusername ==> [ :nodes |
		nodes first
				ifNotNil: [ PPIRIComponent name: 'username' value: nodes asString ] ]