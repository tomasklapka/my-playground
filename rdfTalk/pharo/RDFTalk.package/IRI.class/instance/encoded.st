converting
encoded
	^ String << [ :stream |
		self printOn: stream encoded: true ]