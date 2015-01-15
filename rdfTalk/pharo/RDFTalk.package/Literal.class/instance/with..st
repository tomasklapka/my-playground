accessing
with: aLanguageOrDataType
	(aLanguageOrDataType isKindOf: String) ifTrue: [ ((aLanguageOrDataType at: 0) == '@')
		ifTrue: [
			language := aLanguageOrDataType copyFrom: 1 to: aLanguageOrDataType size.
			^ self ] ].
	(aLanguageOrDataType isKindOf: String) ifTrue: [ dataType := aLanguageOrDataType	].
	^ self