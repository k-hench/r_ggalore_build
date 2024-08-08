FROM docker.io/khench/r_tidyr:v0.1
LABEL authors="Kosmas Hench" \
      description="R container providing a ggplot based plotting environment"

# install additional R packages
RUN R --slave -e 'chooseCRANmirror(ind=50); install.packages("prismatic")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("patchwork")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("cowplot")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("scico")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("rcartocolor")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggstance")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggnewscale")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggforce")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("geomtextpath")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggridges")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggdist")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggtext")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggrastr")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggfx")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("tidytree")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggraph")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggdag")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggalt")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggh4x")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggalluvial")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggpointdensity")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggmagnify")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggblend")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("ggbraid")'
