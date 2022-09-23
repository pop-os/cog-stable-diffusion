NAME=stable-diffusion
LIB=${DESTDIR}/usr/lib/$(NAME)/
BIN=${DESTDIR}/usr/bin/$(NAME)

.PHONY: all clean install uninstall

all:
	cd src && tar pcf $(NAME).tar.xz . && mv $(NAME).tar.xz ..

clean:
	rm -f $(NAME).tar.xz

install:
	mkdir -p $(LIB)
	mv $(NAME).tar.xz $(LIB)
	install -Dm755 $(NAME) $(BIN)

uninstall:
	rm -rf $(LIB) $(BIN)