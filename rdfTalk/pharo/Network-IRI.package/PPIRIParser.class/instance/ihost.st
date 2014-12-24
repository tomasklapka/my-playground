grammar
ihost
	^ super ihost ==> [ :nodes | PPIRIComponent name: 'host' value: nodes asString ]