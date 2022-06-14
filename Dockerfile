FROM java:8

ARG SCALA_VER=2.12.9
ARG SBT_VER=1.6.2

RUN wget -c www.scala-lang.org/files/archive/scala-$SCALA_VER.deb
RUN dpkg -i scala-$SCALA_VER.deb
RUN rm scala-$SCALA_VER.deb

RUN wget -c https://repo.scala-sbt.org/scalasbt/debian/sbt-$SBT_VER.deb
RUN dpkg -i sbt-$SBT_VER.deb
RUN rm sbt-$SBT_VER.deb

VOLUME /volume

EXPOSE 8000