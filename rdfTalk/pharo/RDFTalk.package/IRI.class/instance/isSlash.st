testing
isSlash
	^ self hasPath not or: [ self pathOrRoot = IRIPath root ]