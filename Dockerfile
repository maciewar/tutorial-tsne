 FROM jupyter/scipy-notebook:latest
 RUN pip2 install moviepy
 RUN pip2 install Pygame
 RUN /bin/bash -c "source activate python2 && python2 -c 'import imageio; imageio.plugins.ffmpeg.download()'"
 CMD start-notebook.sh
