{
  lib,
  buildPythonPackage,
  fetchPypi,
}:
buildPythonPackage rec {
  pname = "NSKeyedUnArchiver";
  version = "1.5";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-7toEgAIYFzNuD/6sqAN3wajwjsxfwGvkg7SMRLrUFPQ=";
  };

  meta = with lib; {
    homepage = "https://github.com/avibrazil/NSKeyedUnArchiver";
    description = "Unserializes any binary|text|file|memory plist data and returns a usable Python dict";
    licenses = licenses.bsd;
  };
}
