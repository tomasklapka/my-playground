grammar
iquery
	" iquery = *( ipchar / iprivate / '/' / '?' ) "
	^ ($/ asParser / $? asParser / ipchar / iprivate) star flatten