.PHONY: all clean static

all: clean static

static:
	rsync --checksum --itemize-changes --recursive \
		'static/' 'dist/'

clean:
	rm --force --recursive \
		'dist'
