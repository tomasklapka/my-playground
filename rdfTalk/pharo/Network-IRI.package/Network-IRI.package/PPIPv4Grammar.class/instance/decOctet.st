as yet unclassified
decOctet
"""
   dec-octet = DIGIT                 ; 0-9
                  / %x31-39 DIGIT         ; 10-99
                  / '1' 2DIGIT            ; 100-199
                  / '2' %x30-34 DIGIT     ; 200-249
                  / '25' %x30-35          ; 250-255
"""
	^ (('25' asParser, (PPPredicateObjectParser between: $0 and: $5))
	/ ($2 asParser, (PPPredicateObjectParser between: $0 and: $4), #digit asParser)
	/ ($1 asParser, (#digit asParser times: 2))
	/ ((PPPredicateObjectParser between: $1 and: $9), #digit asParser)
	/ #digit asParser) flatten