enumerating
every: aTripleFilter
	self do: [ :t | (aTripleFilter value: t) ifFalse: [ ^ false ] ].
	^ true