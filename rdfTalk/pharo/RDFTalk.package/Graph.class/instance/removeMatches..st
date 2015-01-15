adding/removing
removeMatches: aTriple
	(self match: aTriple) do: [ :triple | self remove: triple ].
	^ self