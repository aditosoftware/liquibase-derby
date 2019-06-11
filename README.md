# Description

This image contain the liquibase tool. This tool can help you import the data (from xmls) in to [apache derby](https://db.apache.org/derby/) db.

# Variables

**LIQUIBASE_CHANGELOGFILE** - path to liquibase changelog.xml. Default "changelog.xml"  
**DERBY_HOST** - URL or IP of derby server. Default "localhost"  
**DERBY_PORT** - derby server port. Default "1527"  
**DERBY_DB** - name of derby db. Default "dbtest"  
**LIQUIBASE_DEFAULTSCHEMA** - name of schama. Default "app"

# Volumes
The workingdir ist "/workspace", so you need to mount you liqubiase xml files into this folder.

# Run
```
sudo docker run --rm --name liq -v /vagrant/liquibaseDerby/Data_alias/:/workspace/ -e LIQUIBASE_CHANGELOGFILE=changelog.xml -e DERBY_HOST=192.168.42.80 -e DERBY_DB=dbtest  22 -t adito/liquibase-derby update
```