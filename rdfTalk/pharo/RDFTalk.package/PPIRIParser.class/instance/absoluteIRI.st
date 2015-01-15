grammar
absoluteIRI
	^ super absoluteIRI ==> [ :nodes |
		OrderedCollection new
			add: (PPIRIProperty name: 'isAbsolute' value: true);
			addAll: nodes;
			yourself ]