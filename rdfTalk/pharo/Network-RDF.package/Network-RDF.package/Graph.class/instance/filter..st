enumerating
filter: aTripleFilter
	| newGraph |
	newGraph := Graph new.
	self do: [ :t | (aTripleFilter value: t) ifTrue: [ newGraph add: t ] ].
	^ newGraph