http://hirt.se/blog/?p=1116

This is a very short post on what I ended up doing to get an OpenJDK 11 build for Raspbian on my Raspberry Pi 3.


#### 1) Get the latest JDK 11 build of the Liberica JVM (Debian package for ARM v7 & v8, provided by Bell Soft)
The java download page is here https://www.bell-sw.com/java.html.

For example:
```
wget https://github.com/bell-sw/Liberica/releases/download/11.0.2/bellsoft-jdk11.0.2-linux-arm32-vfp-hflt.deb
```

#### 2) Install it
```
sudo apt-get install ./bellsoft-jdk11.0.2-linux-arm32-vfp-hflt.deb
```

#### 3) Set the defaults (if you want to - optional)
```
sudo update-alternatives --config javac
sudo update-alternatives --config java
```

## Fix locales:
Run dpkg-reconfigure locales as root, select the locales you want in the list (with your settings, you need en_GB and en_US.UTF-8 — I recommend selecting en_US and en_GB.UTF-8 as well) then press <OK>.