converting
mergePath: aReference
	| base newPath |
	base := self pathOrRoot.
	base last isEmptyOrNil not ifTrue: [ base := base parent ].
	newPath := base resolvePath: aReference.
	^ ((aReference isNotNil and: aReference last isEmptyOrNil) and: newPath last isEmptyOrNil not)
		ifTrue: [ newPath / '' ] ifFalse: [ newPath ]