instance creation
subject: aSubject predicate: aPredicate object: anObject
	| triple |
	triple := Triple new.
	triple subject: aSubject.
	triple predicate: aPredicate.
	triple object: anObject.
	^ triple