# flake.nix
#
# This file packages licdata-artifact-infrastructure as a Nix flake.
#
# Copyright (C) 2024-today acm-sl/licdata-artifact-infrastructure
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
{
  description = "Nix flake for acmsl/licdata-artifact-infrastructure";
  inputs = rec {
    acmsl-licdata-artifact-domain = {
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:acmsl-def/licdata-artifact-domain/0.0.30";
    };
    acmsl-licdata-artifact-events = {
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:acmsl-def/licdata-artifact-events/0.0.22";
    };
    acmsl-licdata-artifact-events-infrastructure = {
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      inputs.acmsl-licdata-artifact-events.follows = "acmsl-licdata-artifact-events";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:acmsl-def/licdata-artifact-events-infrastructure/0.0.24";
    };
    azure-functions = {
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      url = "github:rydnr/nix-flakes/azure-functions-1.21.3.2?dir=azure-functions";
    };
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
    nixpkgs.url = "github:NixOS/nixpkgs/24.05";
    pythoneda-shared-artifact-events-infrastructure = {
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/events-infrastructure/0.0.73";
    };
    pythoneda-shared-pythonlang-banner = {
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      url = "github:pythoneda-shared-pythonlang-def/banner/0.0.74";
    };
    pythoneda-shared-pythonlang-domain = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      url = "github:pythoneda-shared-pythonlang-def/domain/0.0.110";
    };
    pythoneda-shared-pythonlang-infrastructure = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-pythonlang-def/infrastructure/0.0.85";
    };
    pythoneda-shared-pythonlang-artf-domain = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-pythonlang-artf-def/domain/0.0.83";
    };
    pythoneda-shared-pythonlang-artf-infrastructure = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      inputs.pythoneda-shared-pythonlang-infrastructure.follows =
        "pythoneda-shared-pythonlang-infrastructure";
      url = "github:pythoneda-shared-pythonlang-artf-def/infrastructure/0.0.78";
    };
    pythoneda-shared-runtime-secrets-events = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-runtime-def/secrets-events/0.0.11";
    };
    pythoneda-shared-runtime-secrets-events-infrastructure = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-runtime-def/secrets-events-infrastructure/0.0.10";
    };
  };
  outputs = inputs:
    with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        org = "acmsl";
        repo = "licdata-artifact-infrastructure";
        version = "0.0.6";
        sha256 = "07vhqmjmxh6za4kpjbg1lwhswcs21flldsz07blbakam9hy6169l";
        pname = "${org}-${repo}";
        pythonpackage = "org.acmsl.artifact.licdata.infrastructure";
        package = builtins.replaceStrings [ "." ] [ "/" ] pythonpackage;
        pkgs = import nixpkgs { inherit system; };
        description = "Licdata Artifact Infrastructure";
        license = pkgs.lib.licenses.gpl3;
        homepage = "https://github.com/${org}/${repo}";
        maintainers = [ "rydnr <github@acm-sl.org>" ];
        archRole = "B";
        space = "A";
        layer = "I";
        nixpkgsVersion = builtins.readFile "${nixpkgs}/.version";
        nixpkgsRelease =
          builtins.replaceStrings [ "\n" ] [ "" ] "nixpkgs-${nixpkgsVersion}";
        shared = import "${pythoneda-shared-pythonlang-banner}/nix/shared.nix";
        acmsl-licdata-artifact-infrastructure-for = {
            azure-functions
          , acmsl-licdata-artifact-domain
          , acmsl-licdata-artifact-events
          , acmsl-licdata-artifact-events-infrastructure
          , python
          , pythoneda-shared-artifact-events-infrastructure
          , pythoneda-shared-pythonlang-banner
          , pythoneda-shared-pythonlang-domain
          , pythoneda-shared-pythonlang-infrastructure
          , pythoneda-shared-pythonlang-artf-domain
          , pythoneda-shared-pythonlang-artf-infrastructure
          , pythoneda-shared-runtime-secrets-events
          , pythoneda-shared-runtime-secrets-events-infrastructure
        }:
          let
            pnameWithUnderscores =
              builtins.replaceStrings [ "-" ] [ "_" ] pname;
            pythonVersionParts = builtins.splitVersion python.version;
            pythonMajorVersion = builtins.head pythonVersionParts;
            pythonMajorMinorVersion =
              "${pythonMajorVersion}.${builtins.elemAt pythonVersionParts 1}";
            wheelName =
              "${pnameWithUnderscores}-${version}-py${pythonMajorVersion}-none-any.whl";
          in python.pkgs.buildPythonPackage rec {
            inherit pname version;
            projectDir = ./.;
            pyprojectTomlTemplate = ./templates/pyproject.toml.template;
            pyprojectToml = pkgs.substituteAll {
              authors = builtins.concatStringsSep ","
                (map (item: ''"${item}"'') maintainers);
              azureFunctions = azure-functions.version;
              desc = description;
              inherit homepage pname pythonMajorMinorVersion package
                version;
              acmslLicdataArtifactDomain = acmsl-licdata-artifact-domain.version;
              acmslLicdataArtifactEvents = acmsl-licdata-artifact-events.version;
              acmslLicdataArtifactEventsInfrastructure = acmsl-licdata-artifact-events-infrastructure.version;
              pythonedaSharedArtifactEventsInfrastructure = pythoneda-shared-artifact-events-infrastructure.version;
              pythonedaSharedPythonlangBanner =
                pythoneda-shared-pythonlang-banner.version;
              pythonedaSharedPythonlangDomain =
                pythoneda-shared-pythonlang-domain.version;
              pythonedaSharedPythonlangInfrastructure =
                pythoneda-shared-pythonlang-infrastructure.version;
              pythonedaSharedPythonlangArtfDomain =
                pythoneda-shared-pythonlang-artf-domain.version;
              pythonedaSharedPythonlangArtfInfrastructure =
                pythoneda-shared-pythonlang-artf-infrastructure.version;
              pythonedaSharedRuntimeSecretsEvents =
                pythoneda-shared-runtime-secrets-events.version;
              pythonedaSharedRuntimeSecretsEventsInfrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.version;
              src = pyprojectTomlTemplate;
            };
            src = pkgs.fetchFromGitHub {
              owner = org;
              rev = version;
              inherit repo sha256;
            };

            format = "pyproject";

            nativeBuildInputs = with python.pkgs; [ pip poetry-core ];
            propagatedBuildInputs = with python.pkgs; [
              acmsl-licdata-artifact-domain
              acmsl-licdata-artifact-events
              acmsl-licdata-artifact-events-infrastructure
              pythoneda-shared-artifact-events-infrastructure
              pythoneda-shared-pythonlang-banner
              pythoneda-shared-pythonlang-domain
              pythoneda-shared-pythonlang-infrastructure
              pythoneda-shared-pythonlang-artf-domain
              pythoneda-shared-pythonlang-artf-infrastructure
              pythoneda-shared-runtime-secrets-events
              pythoneda-shared-runtime-secrets-events-infrastructure
            ];

            # pythonImportsCheck = [ pythonpackage ];

            unpackPhase = ''
              command cp -r ${src} .
              sourceRoot=$(ls | grep -v env-vars)
              command chmod -R +w $sourceRoot
              command cp ${pyprojectToml} $sourceRoot/pyproject.toml
            '';

            postInstall = ''
              command pushd /build/$sourceRoot
              for f in $(command find . -name '__init__.py' | sed 's ^\./  g'); do
                if [[ ! -e $out/lib/python${pythonMajorMinorVersion}/site-packages/$f ]]; then
                  command mkdir -p $out/lib/python${pythonMajorMinorVersion}/site-packages/"$(command dirname $f)";
                  command cp -r "$(command dirname $f)"/* $out/lib/python${pythonMajorMinorVersion}/site-packages/"$(command dirname $f)";
                fi
              done
              command popd
              command mkdir $out/dist
              command cp dist/${wheelName} $out/dist
            '';

            meta = with pkgs.lib; {
              inherit description homepage license maintainers;
            };
          };
      in rec {
        defaultPackage = packages.default;
        devShells = rec {
          default = acmsl-licdata-artifact-infrastructure-python312;
          acmsl-licdata-artifact-infrastructure-python39 =
            shared.devShell-for {
              banner = "${
                  pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39
                }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package =
                packages.acmsl-licdata-artifact-infrastructure-python39;
              python = pkgs.python39;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python39;
              inherit archRole layer org pkgs repo space;
            };
          acmsl-licdata-artifact-infrastructure-python310 =
            shared.devShell-for {
              banner = "${
                  pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310
                }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package =
                packages.acmsl-licdata-artifact-infrastructure-python310;
              python = pkgs.python310;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python310;
              inherit archRole layer org pkgs repo space;
            };
          acmsl-licdata-artifact-infrastructure-python311 =
            shared.devShell-for {
              banner = "${
                  pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311
                }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package =
                packages.acmsl-licdata-artifact-infrastructure-python311;
              python = pkgs.python311;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python311;
              inherit archRole layer org pkgs repo space;
            };
          acmsl-licdata-artifact-infrastructure-python312 =
            shared.devShell-for {
              banner = "${
                  pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312
                }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package =
                packages.acmsl-licdata-artifact-infrastructure-python312;
              python = pkgs.python312;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python312;
              inherit archRole layer org pkgs repo space;
            };
          acmsl-licdata-artifact-infrastructure-python313 =
            shared.devShell-for {
              banner = "${
                  pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python313
                }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package = packages.acmsl-licdata-artifact-infrastructure-python313;
              python = pkgs.python313;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python313;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python313;
              inherit archRole layer org pkgs repo space;
            };
        };
        packages = rec {
          default = acmsl-licdata-artifact-infrastructure-python312;
          acmsl-licdata-artifact-infrastructure-python39 =
            acmsl-licdata-artifact-infrastructure-for {
              azure-functions =
                azure-functions.packages.${system}.azure-functions-python39;
              acmsl-licdata-artifact-domain =
                acmsl-licdata-artifact-domain.packages.${system}.acmsl-licdata-artifact-domain-python39;
              acmsl-licdata-artifact-events =
                acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python39;
              acmsl-licdata-artifact-events-infrastructure =
                acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python39;
              python = pkgs.python39;
              pythoneda-shared-artifact-events-infrastructure = pythoneda-shared-artifact-events-infrastructure.packages.${system}.pythoneda-shared-artifact-events-infrastructure-python39;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python39;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python39;
              pythoneda-shared-pythonlang-artf-domain =
                pythoneda-shared-pythonlang-artf-domain.packages.${system}.pythoneda-shared-pythonlang-artf-domain-python39;
              pythoneda-shared-pythonlang-artf-infrastructure =
                pythoneda-shared-pythonlang-artf-infrastructure.packages.${system}.pythoneda-shared-pythonlang-artf-infrastructure-python39;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python39;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python39;
            };
          acmsl-licdata-artifact-infrastructure-python310 =
            acmsl-licdata-artifact-infrastructure-for {
              azure-functions =
                azure-functions.packages.${system}.azure-functions-python310;
              acmsl-licdata-artifact-domain =
                acmsl-licdata-artifact-domain.packages.${system}.acmsl-licdata-artifact-domain-python310;
              acmsl-licdata-artifact-events =
                acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python310;
              acmsl-licdata-artifact-events-infrastructure =
                acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python310;
              python = pkgs.python310;
              pythoneda-shared-artifact-events-infrastructure = pythoneda-shared-artifact-events-infrastructure.packages.${system}.pythoneda-shared-artifact-events-infrastructure-python310;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python310;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python310;
              pythoneda-shared-pythonlang-artf-domain =
                pythoneda-shared-pythonlang-artf-domain.packages.${system}.pythoneda-shared-pythonlang-artf-domain-python310;
              pythoneda-shared-pythonlang-artf-infrastructure =
                pythoneda-shared-pythonlang-artf-infrastructure.packages.${system}.pythoneda-shared-pythonlang-artf-infrastructure-python310;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python310;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python310;
            };
          acmsl-licdata-artifact-infrastructure-python311 =
            acmsl-licdata-artifact-infrastructure-for {
              azure-functions =
                azure-functions.packages.${system}.azure-functions-python311;
              acmsl-licdata-artifact-domain =
                acmsl-licdata-artifact-domain.packages.${system}.acmsl-licdata-artifact-domain-python311;
              acmsl-licdata-artifact-events =
                acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python311;
              acmsl-licdata-artifact-events-infrastructure =
                acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python311;
              python = pkgs.python311;
              pythoneda-shared-artifact-events-infrastructure = pythoneda-shared-artifact-events-infrastructure.packages.${system}.pythoneda-shared-artifact-events-infrastructure-python311;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python311;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python311;
              pythoneda-shared-pythonlang-artf-domain =
                pythoneda-shared-pythonlang-artf-domain.packages.${system}.pythoneda-shared-pythonlang-artf-domain-python311;
              pythoneda-shared-pythonlang-artf-infrastructure =
                pythoneda-shared-pythonlang-artf-infrastructure.packages.${system}.pythoneda-shared-pythonlang-artf-infrastructure-python311;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python311;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python311;
            };
          acmsl-licdata-artifact-infrastructure-python312 =
            acmsl-licdata-artifact-infrastructure-for {
              azure-functions =
                azure-functions.packages.${system}.azure-functions-python312;
              acmsl-licdata-artifact-domain =
                acmsl-licdata-artifact-domain.packages.${system}.acmsl-licdata-artifact-domain-python312;
              acmsl-licdata-artifact-events =
                acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python312;
              acmsl-licdata-artifact-events-infrastructure =
                acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python312;
              python = pkgs.python312;
              pythoneda-shared-artifact-events-infrastructure = pythoneda-shared-artifact-events-infrastructure.packages.${system}.pythoneda-shared-artifact-events-infrastructure-python312;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python312;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python312;
              pythoneda-shared-pythonlang-artf-domain =
                pythoneda-shared-pythonlang-artf-domain.packages.${system}.pythoneda-shared-pythonlang-artf-domain-python312;
              pythoneda-shared-pythonlang-artf-infrastructure =
                pythoneda-shared-pythonlang-artf-infrastructure.packages.${system}.pythoneda-shared-pythonlang-artf-infrastructure-python312;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python312;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python312;
            };
          acmsl-licdata-artifact-infrastructure-python313 =
            acmsl-licdata-artifact-infrastructure-for {
              azure-functions =
                azure-functions.packages.${system}.azure-functions-python313;
              acmsl-licdata-artifact-domain =
                acmsl-licdata-artifact-domain.packages.${system}.acmsl-licdata-artifact-domain-python313;
              acmsl-licdata-artifact-events =
                acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python313;
              acmsl-licdata-artifact-events-infrastructure =
                acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python313;
              python = pkgs.python313;
              pythoneda-shared-artifact-events-infrastructure = pythoneda-shared-artifact-events-infrastructure.packages.${system}.pythoneda-shared-artifact-events-infrastructure-python313;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python313;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python313;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python313;
              pythoneda-shared-pythonlang-artf-domain =
                pythoneda-shared-pythonlang-artf-domain.packages.${system}.pythoneda-shared-pythonlang-artf-domain-python313;
              pythoneda-shared-pythonlang-artf-infrastructure =
                pythoneda-shared-pythonlang-artf-infrastructure.packages.${system}.pythoneda-shared-pythonlang-artf-infrastructure-python313;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python313;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python313;
            };
        };
      });
}
