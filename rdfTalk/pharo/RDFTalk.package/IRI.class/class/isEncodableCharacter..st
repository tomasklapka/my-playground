as yet unclassified
isEncodableCharacter: aChar
	self rfc3987UcscharAndIprivateRanges keysAndValuesDo: [ :from :to | (from < aChar asInteger and: aChar asInteger <= to) ifTrue: [ ^ true ] ].
	^ false