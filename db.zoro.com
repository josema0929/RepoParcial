;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	zoro.com. root.zoro.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.zoro.com.
ns	IN	A	192.168.50.3
www	IN	CNAME	ns
