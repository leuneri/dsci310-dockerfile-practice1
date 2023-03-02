FROM rocker/rstudio:4.1.3

RUN R -e "install.packages('cowsay',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN Rscript -e "cowsay::say('hello')"

COPY renv.lock renv.lock

# RUN Rscript -e "renv::restore()"