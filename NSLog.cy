# Logs
A way to efficiently devise logs in command line.

#The NSLog base.

var NSLog = dlsym(RTLD_DEFAULT, "NSLog");
var slice = [].slice;
