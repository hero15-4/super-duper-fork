{ pkgs ? import <nixpkgs> {} }:

pkgs.dockerTools.buildImage {
  name = "my-docker-image";
  tag = "latest";
  contents = [ (pkgs.path ./Dockerfile1) ];
}
