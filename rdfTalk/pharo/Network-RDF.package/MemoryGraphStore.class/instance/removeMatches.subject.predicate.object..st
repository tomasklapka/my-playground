as yet unclassified
removeMatches: anIRI subject: aSubject predicate: aPredicate object: anObject
	graphs at: anIRI ifPresent: [ (graphs at: anIRI) removeMatchesSubject: aSubject predicate: aPredicate object: anObject ] ifAbsent: [ ].
	^ self