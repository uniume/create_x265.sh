DEST	= /usr/local/bin
EXEC	= create_x265.sh

install:	$(EXEC)
	install $(EXEC) $(DEST)
