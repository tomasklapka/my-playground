grammar
ipassword
	^ super ipassword flatten ==> [ :nodes |
		nodes ifNotNil: [ PPIRIComponent name: 'password' value: nodes ] ]