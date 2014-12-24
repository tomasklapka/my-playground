grammar
ipathEmpty
	^ super ipathEmpty ==> [ :nodes | PPIRIProperty name: 'hasEmptyPath' value: true ]