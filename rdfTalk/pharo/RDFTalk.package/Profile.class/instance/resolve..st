as yet unclassified
resolve: toResolve
	^ (toResolve findString: ':') > 0
		ifTrue: [ prefixes resolve: toResolve ]
		ifFalse: [  terms resolve: toResolve ]
