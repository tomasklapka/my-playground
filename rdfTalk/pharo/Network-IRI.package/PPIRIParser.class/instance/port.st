grammar
port
	^ super port ==> [ :nodes | PPIRIComponent name: 'port' value: nodes asString asNumber ]