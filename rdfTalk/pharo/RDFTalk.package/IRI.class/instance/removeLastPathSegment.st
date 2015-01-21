accessing - path
removeLastPathSegment
	self hasPath
		ifTrue: [ self path: path parent ]