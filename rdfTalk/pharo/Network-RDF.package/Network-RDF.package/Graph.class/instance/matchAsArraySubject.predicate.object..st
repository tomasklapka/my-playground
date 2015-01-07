enumerating
matchAsArraySubject: aSubject predicate: aPredicate object: anObject
	| triples pattern map patternType index data |
	triples := OrderedCollection new.
	pattern := Dictionary newFrom: { 's' -> aSubject. 'p' -> aPredicate. 'o' -> anObject }.
	map := Array new: 8.
	map at: 1 put: (Dictionary newFrom: { 'index' -> indexOPS. 'constants' -> #( 'o' 'p' 's' ). 'variables' -> #( ) }).
	map at: 2 put: (Dictionary newFrom: { 'index' -> indexPSO. 'constants' -> #( 'p' 's' ). 'variables' -> #( 'o' ) }).
	map at: 3 put: (Dictionary newFrom: { 'index' -> indexSOP. 'constants' -> #( 's' 'o' ). 'variables' -> #( 'p' ) }).
	map at: 4 put: (Dictionary newFrom: { 'index' -> indexSOP. 'constants' -> #( 's' ). 'variables' -> #( 'o' 'p' ) }).
	map at: 5 put: (Dictionary newFrom: { 'index' -> indexOPS. 'constants' -> #( 'o' 'p' ). 'variables' -> #( 's' ) }).
	map at: 6 put: (Dictionary newFrom: { 'index' -> indexPSO. 'constants' -> #( 'p' ). 'variables' -> #( 's' 'o' ) }).
	map at: 7 put: (Dictionary newFrom: { 'index' -> indexOPS. 'constants' -> #( 'o' ). 'variables' -> #( 'p' 's' ) }).
	map at: 8 put: (Dictionary newFrom: { 'index' -> indexPSO. 'constants' -> #( ). 'variables' -> #( 'p' 's' 'o' ) }).
	patternType := 0.
	(pattern at: 's') ifNil: [ patternType := patternType | 4 ].
	(pattern at: 'p') ifNil: [ patternType := patternType | 2 ].
	(pattern at: 'o') ifNil: [ patternType := patternType | 1 ].
	index := map at: patternType+1.
	(data := index at: 'index') ifNil: [ ^ triples ].
	(index at: 'constants') do: [  :v | data ifNotNil: [ data := data at: (pattern at: v) ] ].
	data ifNil: [ ^ triples ].
	self searchIndex: data length: (index at: 'variables') size triples: triples.
	^ triples