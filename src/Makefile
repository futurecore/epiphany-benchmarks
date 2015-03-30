SUBDIRS = hello

.PHONY: all clean

all:
	@for dir in $(SUBDIRS); \
	do \
		$(MAKE) -C $${dir} $@ || exit $$?; \
	done

clean:
	@for dir in $(SUBDIRS); \
	do \
		$(MAKE) -C $${dir} clean || exit $$?; \
	done
