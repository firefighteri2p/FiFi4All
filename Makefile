PANDOC=/usr/bin/pandoc
DATE=/bin/date -u
CP=sudo cp -f
RM=/bin/rm -f

all: index.html

index.html:
	$(PANDOC) README.md -o index.html --toc --toc-depth=4 -w html --template template.html -V "pagetitle: FiFi4All.i2p = Freedom of Information by access over a Free Internet for All" -V "lastmodified: `$(DATE)`"
	$(CP) index.html /var/lib/i2p/i2p-config/eepsite/docroot/

clean:
	$(RM) index.html
