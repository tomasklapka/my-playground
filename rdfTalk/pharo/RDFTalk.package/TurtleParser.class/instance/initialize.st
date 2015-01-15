as yet unclassified
initialize
	super initialize.
	environment := RDFEnvironment new.
	bnHash := Dictionary new.
	base := IRI new.
	quick := false.
	processor := nil.
	filter := nil.
	graph := nil
