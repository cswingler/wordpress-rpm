wordpress-rpm
=============

Specfiles and scripts for building Wordpress RPMs in Jenkins. 

This is a fork of the upstream Fedora repository and patch set from 
https://apps.fedoraproject.org/packages/wordpress/bugs
with minor changes to automate builds in Jenkins.

This project was born of a need to get releases of Wordpress pushed up to
a CentOS 6 system ASAP (given the Wordpress project's security record), 
and the EPEL release lagging a bit behind Fedora for patches. 

Credit all goes to Fedora Project/Remi Collet, who did a crapton
of the heavy lifting here.

Usage
-----

 * Install rpmdevtools
 * Set up your Jenkins project as such:
  * Check out this repo
  * Add a String Build Parameter named `"WORDPRESS_VERSION"` and set it to the release you'd like to build
  * For a Build, execute the script `bash build_wordpress.sh`
