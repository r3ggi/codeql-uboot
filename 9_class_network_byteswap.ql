import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation mi |
      mi.getMacro().getName().regexpMatch("ntoh(s|l|ll)")
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap"