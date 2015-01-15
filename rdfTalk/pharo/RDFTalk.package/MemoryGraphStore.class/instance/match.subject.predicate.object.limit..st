as yet unclassified
match: anIRI subject: aSubject predicate: aPredicate object: anObject limit: aLimit
	graphs at: anIRI ifPresent: [ ^ (graphs at: anIRI) matchSubject: aSubject predicate: aPredicate object: anObject limit: aLimit ] ifAbsent: [ ^ nil ]