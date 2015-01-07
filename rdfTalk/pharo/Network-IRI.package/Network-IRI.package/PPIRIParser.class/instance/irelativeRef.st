grammar
irelativeRef
	^ super irelativeRef ==> [ :nodes |
		OrderedCollection new
			add: (PPIRIProperty name: 'isAbsolute' value: false);
			addAll: nodes;
			yourself ]