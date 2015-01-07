private
insertIndex: anIndex a: anA b: aB c: aC triple: aTriple
	anIndex at: anA ifAbsent: [ anIndex at: anA put: Dictionary new ].
	(anIndex at: anA) at: aB ifAbsent: [ (anIndex at: anA) at: aB put: Dictionary new ].
	((anIndex at: anA) at: aB) at: aC put: aTriple.
	^ anIndex