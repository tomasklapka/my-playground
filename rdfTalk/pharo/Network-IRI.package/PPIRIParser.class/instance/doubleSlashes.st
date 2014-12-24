grammar
doubleSlashes
	^ super doubleSlashes ==> [ :nodes | PPIRIProperty name: 'hasDoubleSlashes' value: true ]