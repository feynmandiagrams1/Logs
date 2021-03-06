# Logs
A way to efficiently devise logs in command line.

#The NSLog base.

var NSLog = dlsym(RTLD_DEFAULT, "NSLog");
var slice = [].slice;

module.exports = function(format) {
    var args = slice.call(arguments);
    new Functor(NSLog, "v" + ["@" for (x in args)].join("")).apply(null, args);
};
