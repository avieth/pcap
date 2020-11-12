{ mkDerivation, autoconf, automake, base, bytestring, libpcap, network, stdenv, time }:
mkDerivation {
  pname = "pcap";
  version = "0.4.5.2";
  src = ./.;
  libraryHaskellDepends = [ base bytestring network time ];
  librarySystemDepends = [ libpcap ];
  preConfigure = "autoreconf -i";
  buildDepends = [ autoconf automake ];
  homepage = "https://github.com/bos/pcap";
  description = "A system-independent interface for user-level packet capture";
  license = stdenv.lib.licenses.bsd3;
}
