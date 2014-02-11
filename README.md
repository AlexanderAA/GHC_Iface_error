GHC_Iface_error
===============
GHC 7.6.3 Bug (?)

 * Compile the project using, e.g. "cabal install" - compiles successfully
 * Make a minor change to Main.hs (add whitespace?)
 * Compile the project again - fails when trying to recompile just Main.hs
 
Error message:
<pre>
Declaration for Doc:
  Iface type variable out of scope:  k
</pre>



Full output:
<pre>
$ cabal install
Resolving dependencies...
Configuring someapp-0.1...
Building someapp-0.1...
Preprocessing executable 'ifaceError' for someapp-0.1...
[2 of 2] Compiling Main             ( Main.hs, dist/dist-sandbox-95913e4a/build/ifaceError/ifaceError-tmp/Main.o )
The interface for `main:Types'
Declaration for Doc:
  Iface type variable out of scope:  k
Cannot continue after interface file error
Failed to install someapp-0.1
cabal: Error: some packages failed to install:
someapp-0.1 failed during the building phase. The exception was:
ExitFailure 1
</pre>
