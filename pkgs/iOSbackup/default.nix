{
  buildPythonPackage,
  fetchPypi,
  NSKeyedUnArchiver,
  pycryptodome,
}:
buildPythonPackage rec {
  pname = "iOSbackup";
  version = "0.9.925";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-M1Rakknls/qq3x7ngv5r3823D64N77oazuM2pl+T0co=";
  };

  propagatedBuildInputs = [pycryptodome NSKeyedUnArchiver];

  meta = {
    homepage = "https://github.com/avibrazil/iOSbackup";
    description = "A Python 3 class that reads and extracts files from a password-encrypted iOS backup created by iTunes on Mac and Windows.";
  };
}
