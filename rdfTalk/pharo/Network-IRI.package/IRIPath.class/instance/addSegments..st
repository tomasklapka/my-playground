accessing
addSegments: pathSegments
	"Modify the receiver's path by adding the elements of pathSegments at the end"

	pathSegments do: [ :each | self addSegment: each ]