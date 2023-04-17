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
  version = "2.2.5";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-TFnoyrt6u9kDCDJHehPwyFVq0dtSXWAqLh5QujbGYXo=";
  };

  propagatedBuildInputs = [adb-shell appdirs click iOSbackup libusb1 packaging pyyaml requests rich simplejson tld];

  doCheck = false;

  meta = {
    homepage = "https://mvt.re/";
    description = "MVT (Mobile Verification Toolkit) helps with conducting forensics of mobile devices in order to find signs of a potential compromise.";
  };
}
