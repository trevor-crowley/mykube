
FROM registry.tcrow.io/scipy-notebook:latest


RUN conda install -y \
    pymssql \
    python-decouple \
    fbprophet \
    plotly \
    ipywidgets \
    pydot \
    pandas-datareader 


RUN conda clean -tipsy
