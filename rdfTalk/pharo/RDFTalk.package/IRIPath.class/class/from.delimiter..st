as yet unclassified
from: aString delimiter: aDelimiterCharacter 
	"Answer a path composed of several elements delimited by aCharacter"
	| pathClass |
	aString isEmpty
		ifTrue: [ ^ self root ].
	
	pathClass :=  ((self isAbsoluteUnixPath: aString) or: [self isAbsoluteWindowsPath: aString]) 
		ifTrue: [ IRIAbsolutePath ]
		ifFalse:[ IRIRelativePath ].
	
	^ pathClass withAll: (pathClass canonicalizeElements: (aDelimiterCharacter split: aString))