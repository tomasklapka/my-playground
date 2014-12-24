enumerating
some: aTripleFilter
	self do: [ :t | (aTripleFilter value: t) ifTrue: [ ^ true ] ].
	^ false