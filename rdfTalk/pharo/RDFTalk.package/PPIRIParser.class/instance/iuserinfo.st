grammar
iuserinfo
	^ super iuserinfo ==> [ :nodes |
		OrderedCollection new
			add: (PPIRIProperty name: 'hasUserinfo' value: true);
			addAll: nodes;
			yourself ]