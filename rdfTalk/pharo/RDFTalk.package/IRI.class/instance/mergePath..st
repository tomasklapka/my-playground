accessing
mergePath: aReference
	(self hasHost and: self isSlash)
		ifTrue: [ self addPathSegments: aReference pathSegments ]
		ifFalse: [ 
			self isFilePath ifTrue: [ self removeLastPathSegment ].
			(aReference firstPathSegment = #/ and: self isDirectoryPath) ifTrue: [ self removeLastPathSegment ].
			aReference pathSegments do: [ :segment |
				(self isSlash not or: segment ~= #/) ifTrue: [
					(segment = '..' and: self canGoPathUp)
						ifTrue: [ self removeLastPathSegment. self removeLastPathSegment ]
						ifFalse: [ self addPathSegment: segment ] ] ] ]