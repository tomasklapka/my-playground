as yet unclassified
rfc3987UcscharRanges
"""
ucschar        = %xA0-D7FF / %xF900-FDCF / %xFDF0-FFEF
                  / %x10000-1FFFD / %x20000-2FFFD / %x30000-3FFFD
                  / %x40000-4FFFD / %x50000-5FFFD / %x60000-6FFFD
                  / %x70000-7FFFD / %x80000-8FFFD / %x90000-9FFFD
                  / %xA0000-AFFFD / %xB0000-BFFFD / %xC0000-CFFFD
                  / %xD0000-DFFFD / %xE1000-EFFFD
"""
	^ Dictionary newFrom: { 
		16rA0 -> 16rD7FF.
		16rF900 -> 16rFDCF.
		16rFDF0 -> 16rFFEF.
		16r10000 -> 16r1FFFD.
		16r20000 -> 16r2FFFD.
		16r30000 -> 16r3FFFD.
		16r40000 -> 16r4FFFD.
		16r50000 -> 16r5FFFD.
		16r60000 -> 16r6FFFD.
		16r70000 -> 16r7FFFD.
		16r80000 -> 16r8FFFD.
		16r90000 -> 16r9FFFD.
		16rA0000 -> 16rAFFFD.
		16rB0000 -> 16rBFFFD.
		16rC0000 -> 16rCFFFD.
		16rD0000 -> 16rDFFFD.
		16rE1000 -> 16rEFFFD }