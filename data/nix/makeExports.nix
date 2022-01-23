list:

let 
  inherit (builtins) length elemAt;
  len = length list;
  makeExports' = n: return:
    if n == len
    then return
    else  
      let
        path = (elemAt list n) + "/lib" + ":" + return;
      in
        makeExports' (n + 1) path;
in
  "export LD_LIBRARY_PATH=" + (makeExports' 0 "") + ":$LD_LIBRARY_PATH"
