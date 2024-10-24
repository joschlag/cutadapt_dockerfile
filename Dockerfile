FROM continuumio/miniconda3:24.9.2-0

ENV PATH /opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda cutadapt=4.9 && \
	conda clean -a -y

CMD ["cutadapt"]
