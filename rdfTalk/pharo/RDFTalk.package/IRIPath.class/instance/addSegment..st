accessing
addSegment: segment
	"Modify the receiver's path by adding segment at the end"
	segment isEmpty not ifTrue: [
		segments isNil ifTrue: [
			segments := OrderedCollection new ].
		segments add: segment ]