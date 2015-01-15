as yet unclassified
initialize
	environment := RDFEnvironment new initializeDefaultPrefixes.
	graph := Graph new.
	graph add: self fixtureTriplet1.
	graph add: self fixtureTriplet2.
	graph add: self fixtureTriplet3