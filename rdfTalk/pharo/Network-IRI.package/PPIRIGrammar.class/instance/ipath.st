grammar
ipath
"""
ipath          = ipath-abempty   ; begins with '/' or is empty
                  / ipath-absolute  ; begins with '/' but not '//'
                  / ipath-noscheme  ; begins with a non-colon segment
                  / ipath-rootless  ; begins with a segment
                  / ipath-empty     ; zero characters
"""
	^ (ipathAbsolute | ipathNoscheme) / ipathRootless / ipathAbempty / ipathEmpty