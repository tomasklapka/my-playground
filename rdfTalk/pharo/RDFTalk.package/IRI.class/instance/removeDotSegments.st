accessing - path
removeDotSegments
	| newPath |
	self hasPath
		ifFalse: [ ^ self ].
	newPath := path class new.
	self path
		do: [ :segment | 
			segment = '..'
				ifTrue: [ 
					((newPath size > 0 and: newPath last ~= '..') and: newPath last ~= '.')
						ifTrue: [ newPath := newPath parent ] ]
				ifFalse: [ 
					segment = '.'
						ifFalse: [ newPath := newPath / segment ] ].
			self path: newPath ]