
FROM registry.tcrow.io/scipy-notebook:565af01


RUN conda install -y \
    pymssql \
    python-decouple \
    fbprophet \
    plotly \
    ipywidgets \
    pydot \
    pandas-datareader \
    geopandas

RUN conda build purge-all 
