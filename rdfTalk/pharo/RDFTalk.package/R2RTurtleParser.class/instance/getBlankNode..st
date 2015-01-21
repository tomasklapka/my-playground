as yet unclassified
getBlankNode: anID
	bnHash at: anID ifAbsent: [ ^ bnHash at: anID ].
	^ bnHash at: anID put: environment createBlankNode