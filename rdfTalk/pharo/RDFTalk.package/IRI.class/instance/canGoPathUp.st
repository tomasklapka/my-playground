accessing
canGoPathUp
	self segments ifNil: [ ^ false ].
	self segments size = 0 ifTrue: [ ^ false ].
	^ (self lastPathSegment = '..') not