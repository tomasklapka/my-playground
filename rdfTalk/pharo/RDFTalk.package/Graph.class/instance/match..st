enumerating
match: aTriple
	^ Graph new addAll: (self matchAsArraySubject: aTriple subject predicate: aTriple predicate object: aTriple object)