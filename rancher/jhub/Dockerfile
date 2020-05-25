
FROM tcrow.io:5000/scipy-notebook:903c591af249


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
