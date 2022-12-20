# mrt-maven-parent
A git super project with maven parent pom.xml to manage dependencies for all mrt- java projects


## Analyzing Dependecies

https://maven.apache.org/guides/introduction/introduction-to-dependency-mechanism.html
```
# show dependencies for project in a tree
mvn dependency:tree

# dependency tree per given scope
# https://maven.apache.org/plugins/maven-dependency-plugin/tree-mojo.html
mvn dependency:tree -Dscope=test
mvn dependency:tree -Dscope=provided

# Analyzes the dependencies of this project and determines which are: used and declared; used and undeclared; unused and declared.
# https://maven.apache.org/plugins/maven-dependency-plugin/analyze-mojo.html
mvn dependency:analyze

# output used but undeclared as xml for inclusion in pom files
mvn dependency:analyze -DoutputXML=true

# order in which dependencies are available on your classpath
# https://maven.apache.org/plugins/maven-dependency-plugin/build-classpath-mojo.html
mvn dependency:build-classpath
```
