FROM registry.sitehost.co.nz/sitehost-php74-apache:2.0.6 

# Add PPA repo 

RUN apt-get update -qy && apt-get install -qy software-properties-common && add-apt-repository ppa:ondrej/php 

 

 

# Add libgmp and enable gmp extension to support SilverStripe MFA 

RUN apt-get update -qy && apt-get install -qy libgmp-dev php7.3-gmp 
 
#Installing gmp extension and enabling 
