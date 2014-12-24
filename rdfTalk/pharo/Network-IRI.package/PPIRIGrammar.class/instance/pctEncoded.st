grammar
pctEncoded
	" pct-encoded = '%' HEXDIG HEXDIG "
	^ $% asParser, (#hex asParser times: 2)