FROM docker.bintray.io/jfrog/artifactory-pro:5.5.1

RUN set -x \
    && cd /opt/jfrog/artifactory \
    && curl -SLO "https://gist.github.com/khorevaa/53758daac0d1f1afd43b995f185a337d/raw/0cd76e8335b3583b6d03914071f3d3eb5608baca/ArtifactoryProInjector.jar" \
    && java -jar ArtifactoryProInjector.jar /opt/jfrog/artifactory
 
MAINTAINER Khorevaa@gmail.com
