accessing - path
removeFirstPathSegment
	| newPath |
	self hasPath
		ifFalse: [ ^ self ].
	newPath := IRIPath root.
	(2 to: path size) do: [ :index | newPath := newPath / (path at: index) ].
	self path: newPath