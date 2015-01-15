as yet unclassified
fixtureIRIPaths
	^ self fixturePaths do: [ :each | IRIPath fromString: each ]