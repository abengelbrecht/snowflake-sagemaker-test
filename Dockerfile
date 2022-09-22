FROM public.ecr.aws/lambda/python:3.8

RUN     pip install sagemaker==2.107.0 &&\
        pip install --upgrade snowflake-connector-python[secure-local-storage,pandas]==2.7.9 &&\
        pip install --upgrade snowflake-snowpark-python[pandas]==0.9.0 &&\
        pip install matplotlib==3.4.1 && \
        pip install ipywidgets seaborn scikit-plot fsspec s3fs && \
        pip install ipykernel && \
        python -m ipykernel install --sys-prefix && \
        pip install jupyter_kernel_gateway
