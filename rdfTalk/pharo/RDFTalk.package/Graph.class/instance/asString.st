converting
asString
	| s |
	s := ''.
	self do: [ :t | s := s, t asString, String cr ].
	^ s