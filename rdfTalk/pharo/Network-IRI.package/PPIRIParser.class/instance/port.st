grammar
port
	^ super port flatten ==> [ :nodes | PPIRIComponent name: 'port' value: nodes asNumber ]