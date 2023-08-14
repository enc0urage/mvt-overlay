{
  buildPythonApplication,
  fetchPypi,
  adb-shell,
  appdirs,
  click,
  iOSbackup,
  libusb1,
  packaging,
  pyahocorasick,
  pyyaml,
  requests,
  rich,
  simplejson,
  tld,
}:
buildPythonApplication rec {
  pname = "mvt";
  version = "2.4.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-qQM2hrnKZA28Yx0Kwdthk83QstSOpn48HL9DAIc87Wc=";
  };

  propagatedBuildInputs = [adb-shell appdirs click iOSbackup libusb1 packaging pyahocorasick pyyaml requests rich simplejson tld];

  doCheck = false;

  meta = {
    homepage = "https://mvt.re/";
    description = "MVT (Mobile Verification Toolkit) helps with conducting forensics of mobile devices in order to find signs of a potential compromise.";
  };
}
