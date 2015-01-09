grammar
ifragment
	^ super ifragment flatten ==> [ :nodes |
		OrderedCollection new
			add: (PPIRIProperty name: 'isAbsolute' value: false);
			add: (PPIRIComponent name: 'fragment' value: nodes);
			yourself ]