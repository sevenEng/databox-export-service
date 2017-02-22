#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "databox-export-service" @@ fun c ->
  Ok [
    Pkg.mllib ~api:["Export"] "src/databox-export-service.mllib";
    Pkg.bin "bin/service" ~dst:"databox-export-service";
    Pkg.test "test/test"
  ]
