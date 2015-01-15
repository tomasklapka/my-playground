grammar
iquery
	^ super iquery flatten ==> [ :nodes | PPIRIComponent name: 'query' value: nodes ]