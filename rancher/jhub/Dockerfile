
FROM tcrow.io:5000/scipy-notebook:903c591af249


RUN conda install -y \
    pymssql \
    python-decouple \
    fbprophet \
    plotly \
    nbgitpuller \
    ipywidgets \
    papermill \
    pydot \
    pandas-datareader 


RUN conda clean -tipsy
