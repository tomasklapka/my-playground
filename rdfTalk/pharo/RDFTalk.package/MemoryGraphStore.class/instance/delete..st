as yet unclassified
delete: anIRI
	graphs removeKey: anIRI ifAbsent: [ ].
	^ self