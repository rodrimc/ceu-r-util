INSTALL_DIR=/usr/local/lib/ceu
PROGRAMS=$(wildcard *.ceu)

install:
	@mkdir -p $(INSTALL_DIR)				
	for i in $(PROGRAMS); do cp $$i $(INSTALL_DIR) ; done

uninstall:
	@for i in $(PROGRAMS); do rm $(INSTALL_DIR)/$$i ; done

.PHONY: install
