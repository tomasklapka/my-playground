grammar
iuserinfo
	" iusername [ ':' ipassword ] "
	^ iusername, ($: asParser, ipassword) optional