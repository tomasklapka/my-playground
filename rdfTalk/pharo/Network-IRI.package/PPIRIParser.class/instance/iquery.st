grammar
iquery
	^ super iquery ==> [ :nodes | PPIRIComponent name: 'query' value: nodes asString ]