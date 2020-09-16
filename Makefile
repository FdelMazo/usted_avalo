VIDEO=pelea.mp4

all:
	video-to-ascii -f $(VIDEO) --strategy just-ascii

install:
	pip install -r requirements.txt
