final: prev: {
  python38 = prev.python38.override {packageOverrides = final.pythonOverrides;};
  python39 = prev.python39.override {packageOverrides = final.pythonOverrides;};
  python310 = prev.python310.override {packageOverrides = final.pythonOverrides;};
  python311 = prev.python311.override {packageOverrides = final.pythonOverrides;};

  pythonOverrides = python-self: python-super:
    with python-self; {
      NSKeyedUnArchiver = callPackage ./pkgs/NSKeyedUnArchiver {};
      iOSbackup = callPackage ./pkgs/iOSbackup {};
    };
  mvt = final.python3.pkgs.callPackage ./pkgs/mvt {};
}
