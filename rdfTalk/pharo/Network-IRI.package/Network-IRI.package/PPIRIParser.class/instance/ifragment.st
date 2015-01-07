grammar
ifragment
	^ super ifragment ==> [ :nodes |
		OrderedCollection new
			add: (PPIRIProperty name: 'isAbsolute' value: false);
			add: (PPIRIComponent name: 'fragment' value: nodes asString);
			yourself ]