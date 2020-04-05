
FROM tcrow.io:5000/scipy-notebook:c4ee6e3ad6c5


RUN conda install -y \
    pymssql \
    python-decouple \
    fbprophet \
    plotly \
    nbgitpuller \
    pandas-datareader 


RUN conda remove --quiet --yes --force qt && \
    conda clean -tipsy
