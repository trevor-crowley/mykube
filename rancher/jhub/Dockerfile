
FROM tcrow.io:5000/scipy-notebook:ad3574d3c5c7


RUN conda install -y \
    pymssql \
    python-decouple \
    ggplot \
    fbprophet \
    nbgitpuller \
    nltk \
    qgrid \
    mpld3 \
    pandas-datareader \
    pytables \
    tqdm \
    pivottablejs \
    mkl \
    nose \
    pygpu \
    geopandas



RUN conda remove --quiet --yes --force qt pyqt && \
    conda clean -tipsy
