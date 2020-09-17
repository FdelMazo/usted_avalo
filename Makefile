VIDEO=rotoscopeado.mp4

amia:
	video-to-ascii -f $(VIDEO) --strategy just-ascii
	video-to-ascii -f $(VIDEO) --strategy filled-ascii
	ln -s libs/ptgms/* ./ || true && python main.py --file $(VIDEO) --scale 2 || true && python "final_out $(VIDEO).py" && find . -maxdepth 1 -type l -delete && rm -f "final_out $(VIDEO).py"
	asciit $(VIDEO) -s 0.15
	asciit $(VIDEO) -s 0.15 --i
	python libs/ascii_video.py -f $(VIDEO) -r 200
