# ideal_objectscript
Ideal simplest objectscript app template for code guidelines and deployment.


# Installation

Go to [Releases](https://github.com/evshvarov/ideal_objectscript/releases), download ideal__.xml file and import it into your InterSystems Data Platform (Caché, Ensemble, IRIS) into the namespace you like.

# How it works

# Hello World
Open terminal and call HelloWorld() method:

USER>w ##class(Ideal.ObjectScript).HelloWorld()
Hello World!

# Writing to the device and using class paremeters
This method write system info and class version to the device. Open terminal and call WriteToDevice() method:

USER>d ##class(Ideal.ObjectScript).WriteToDevice()
The version of the class: 1.0
The version of the system: Cache for UNIX (Apple Mac OS X for x86-64)
  
