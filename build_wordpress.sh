#!/usr/bin/env bash

# Clean up and create directories
for dir in BUILD RPMS SOURCES SPECS SRPMS
do
 [[ -d $dir ]] && rm -Rf $dir
  mkdir $dir
done

# Put our files in the right place
cp wordpress-patches/* SOURCES/.
cp wordpress.spec SPECS/.

# Have spectool download the sources in the source file.
spectool -g -S --define 'version '$WORDPRESS_VERSION SPECS/wordpress.spec -C SOURCES/

# Create rpm in RPMS/noarch/
rpmbuild --define 'dist '$BUILD_NUMBER --define 'version '$WORDPRESS_VERSION --define '_topdir '`pwd` -ba SPECS/wordpress.spec
