converting
toNT
	| string |
	string := '"', nominalValue, '"'.
	dataType ifNotNil: [ ^ string, '^^<', dataType asString, '>' ].
	language ifNotNil: [ ^ string, '@', language ].
	^ string