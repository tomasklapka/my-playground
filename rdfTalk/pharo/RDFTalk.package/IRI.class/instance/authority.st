accessing
authority
	"ZnUrl does not include the userinfo in the authority. Aligned with RFC 3986/3987 even it is not considered to be secure"
	^ (String << [  :stream | self printAuthorityOn: stream ]) ifEmpty: [ nil ].
