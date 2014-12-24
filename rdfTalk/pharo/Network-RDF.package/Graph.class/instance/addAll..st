adding/removing
addAll: aTriples
	aTriples do: [ :triple | self add: triple ].
	^ self