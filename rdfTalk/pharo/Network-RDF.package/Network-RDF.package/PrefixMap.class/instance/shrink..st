as yet unclassified
shrink: anIRI
        self keysAndValuesDo: [ :prefix :iri |
                ((anIRI copyFrom: 1 to: iri size) == iri)
                        ifTrue: [ ^ prefix, ':', anIRI copyFrom: iri size to: anIRI size ] ].
        ^ anIRI
