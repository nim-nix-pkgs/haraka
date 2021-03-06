{
  description = ''Haraka v2 short-input hash function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."haraka-master".dir   = "master";
  inputs."haraka-master".owner = "nim-nix-pkgs";
  inputs."haraka-master".ref   = "master";
  inputs."haraka-master".repo  = "haraka";
  inputs."haraka-master".type  = "github";
  inputs."haraka-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."haraka-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."haraka-v0_1_0".dir   = "v0_1_0";
  inputs."haraka-v0_1_0".owner = "nim-nix-pkgs";
  inputs."haraka-v0_1_0".ref   = "master";
  inputs."haraka-v0_1_0".repo  = "haraka";
  inputs."haraka-v0_1_0".type  = "github";
  inputs."haraka-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."haraka-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}