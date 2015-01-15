as yet unclassified
characterRange: aRange
	" parser matching character from range "
	^ PPPredicateObjectParser between: aRange key asCharacter and: aRange value asCharacter
