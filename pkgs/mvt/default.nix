{
  buildPythonApplication,
  fetchPypi,
  adb-shell,
  appdirs,
  click,
  iOSbackup,
  libusb1,
  packaging,
  pyyaml,
  requests,
  rich,
  simplejson,
  tld,
}:
buildPythonApplication rec {
  pname = "mvt";
  version = "2.2.2";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-Gks+0IK2hH9TIKTSw4ULBbWW63WwpJtPUWI94A0LczI=";
  };

  propagatedBuildInputs = [adb-shell appdirs click iOSbackup libusb1 packaging pyyaml requests rich simplejson tld];

  doCheck = false;

  meta = {
    homepage = "https://mvt.re/";
    description = "MVT (Mobile Verification Toolkit) helps with conducting forensics of mobile devices in order to find signs of a potential compromise.";
  };
}
