
FROM tcrow.io:5000/scipy-notebook:ad3574d3c5c7


RUN conda install -y \
    pymssql \
    python-decouple \
    fbprophet \
    plotly \
    nbgitpuller \
    jupytext \
    papermill \
    pandas-datareader 


RUN conda remove --quiet --yes --force qt && \
    conda clean -tipsy
