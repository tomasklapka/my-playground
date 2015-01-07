enumerating
matchSubject: aSubject predicate: aPredicate object: anObject
	^ Graph new addAll: (self matchAsArraySubject: aSubject predicate: aPredicate object: anObject)