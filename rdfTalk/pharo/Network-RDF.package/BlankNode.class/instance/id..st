as yet unclassified
id: anID
	(anID isKindOf: String) ifTrue: [
 		(anID copyFrom: 1 to: 2) == '_:' ifTrue: [
			nominalValue := anID copyFrom: 3 to: anID size.
			^ self ] ].
	anID ifNotNil: [
		nominalValue := anID.
		^ self ].
	nominalValue := BlankNodesIDGenerator nextID.
	^ self
