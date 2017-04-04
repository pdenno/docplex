FROM jupyterhub/jupyterhub


RUN conda install -c IBMDecisionOptimization docplex cplex
RUN git clone https://github.com/IBMDecisionOptimization/Decision-Optimization-with-CPLEX-samples.git

RUN useradd --create-home --shell /bin/bash admin
RUN echo "1234\n1234"  | passwd admin


