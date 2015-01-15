private
deleteIndex: anIndex a: anA b: aB c: aC
	(anIndex at: anA) ifNotNil: [
		((anIndex at: anA) at: aB) ifNotNil: [ 
			(((anIndex at: anA) at: aB) at: aC) ifNotNil: [ 
				((anIndex at: anA) at: aB) removeKey: aC.
				(((anIndex at: anA) at: aB) size == 0) ifTrue: [ (anIndex at: anA) removeKey: aB ].
				((anIndex at: anA) size == 0) ifTrue: [ anIndex removeKey: anA ] ] ] ] .
	^ anIndex