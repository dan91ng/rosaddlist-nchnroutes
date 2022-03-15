produce:
	git pull
	curl -o delegated-apnic-latest https://ftp.apnic.net/stats/apnic/delegated-apnic-latest
	python3.8 produce.py --exclude 74.120.174.95 65.49.204.251
	sudo mv routes4.conf /etc/bird/routes4.conf
	sudo mv routes6.conf /etc/bird/routes6.conf
	sudo mv noCN.rsc /var/www/html/noCN.rsc
	sudo birdc configure
	sudo birdc6 configure
