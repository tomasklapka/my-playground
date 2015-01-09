grammar
isegmentNzNc
"""
	isegment-nz-nc = 1*( iunreserved / pct-encoded / sub-delims / '@' )
                  ; non-zero-length segment without any colon ':'
"""
	^ (iunreserved / pctEncoded / subDelims / $@ asParser) plus