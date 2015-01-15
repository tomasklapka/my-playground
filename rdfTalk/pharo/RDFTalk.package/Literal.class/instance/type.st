accessing
type
	dataType ifNotNil: [ ^ 'TypedLiteral' ].
	^ 'PlainLiteral'