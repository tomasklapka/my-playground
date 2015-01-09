grammar
ihost
	^ super ihost flatten ==> [ :nodes | PPIRIComponent name: 'host' value: nodes ]