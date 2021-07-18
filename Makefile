.PHONY: all clean kiwiirc static

all: clean kiwiirc static

kiwiirc:
	cd 'kiwiirc' \
	&& yarn install --frozen-lockfile \
	&& yarn build \
	&& rsync --checksum --itemize-changes --recursive \
		'dist/' '../dist/'

static:
	rsync --checksum --itemize-changes --recursive \
		'static/' 'dist/'

clean:
	rm --force --recursive \
		'dist' \
		'kiwiirc/dist'
