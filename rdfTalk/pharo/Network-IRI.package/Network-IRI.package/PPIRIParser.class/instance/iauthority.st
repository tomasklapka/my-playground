grammar
iauthority
	^ super iauthority ==> [ :nodes |
		OrderedCollection new
			add: (PPIRIProperty name: 'hasAuthority' value: true);
			addAll: nodes;
			yourself ]