Comet
=====

MS/MS search engine.

installed software
--------

comet 2014.01 rev. 1


how to build
------------

`sudo docker build -t comet .`


how to download and install
---------------------------

`docker pull hexabio/comet`


how to use
----------

`docker run hexabio/comet [params]`


using files from host inside the container
------------------------------------------

In case you need to use inputs/outputs you will have to place into a host directory the file you need to use. In this case let's place a file called prot.fa inside a folder called /home/docker/.

The /home/docker folder will be mapped inside the container and both the iput and the output files will be placed there. After that we can run the following command:

`docker run -v /home/docker/:/data/ hexabio/comet [params] -input /data/prot.fa -output /data/result.txt`

Our local path /home/docker will map inside the container into /data/ and the software will have acces to the file. After the processing is done the result file will be saved and we can have it outside the container in the same folder.

parameters file
---------------

You will have to pass the params file using the above example, by creating a shared directory.


about
-----
 
If you are looking for containerized bioinformatics software;

visit the [Bio Docker](http://biodocker.github.io "Bio Docker")
visit the [GitHub page](https://github.com/BioDocker/SPAdes) for the source code.
