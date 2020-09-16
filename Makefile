VIDEO=pelea.mp4

all:
	video-to-ascii -f $(VIDEO) --strategy just-ascii
	ln -s libs/ptgms/* ./ || true && python main.py --file $(VIDEO) || true && python "final_out $(VIDEO).py" && find . -maxdepth 1 -type l -delete
