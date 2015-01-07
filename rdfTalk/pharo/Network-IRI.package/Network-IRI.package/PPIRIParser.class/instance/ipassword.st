grammar
ipassword
	^ super ipassword ==> [ :nodes |
		nodes first
				ifNotNil: [ PPIRIComponent name: 'password' value: nodes asString ] ]