grammar
ipath
	^ super ipath ==> [ :nodes | PPIRIComponent name: 'path' value: nodes asString ]