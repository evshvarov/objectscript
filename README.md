# ideal_objectscript
InterSystems objectscript app template with object script samples for code guidelines and deployment.

# Installation

Checkout the repo. 
Make sure you have Docker installed.

build container:

$ docker-compose build 

run container:

$ docker-compose up -d

it creates OSCRIPT Namespace and Database and loads the code into IRIS container

# How it works

# Hello World

start IRIS terminal and call the sample method:
$ docker-compose exec iris iris session iris
USER>zn "OSCRIPT"

OSCRIPT>w ##class(Ideal.ObjectScript).HelloWorld()
Hello World!

# Writing to the device and using class paremeters
This method write system info and class version to the device. Open terminal and call WriteToDevice() method:

OSCRIPT>d ##class(Ideal.ObjectScript).WriteToDevice()
The version of the class: 1.0
The version of the system: Cache for UNIX (Apple Mac OS X for x86-64)

# Array Sample

OSCRIPT> do ##class(Ideal.ObjectScript).ArraySampleTest()
Initial array:
^A(1)=1
^A(2)=2
^A(3)=3
^A(4)=4
^A(5)=5
^A(6)=6
^A(7)=7
^A(8)=8
^A(9)=9
^A(10)=10

After multiplication:
^A(1)=2
^A(2)=4
^A(3)=6
^A(4)=8
^A(5)=10
^A(6)=12
^A(7)=14
^A(8)=16
^A(9)=18
^A(10)=20

  
