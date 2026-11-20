# Upstream release pins.
#
# Regenerate with ./update.sh — it reads the latest GitHub release, pulls the
# SHA-256 table out of the release notes and rewrites this file.
{
  version = "2.25.8";

  # variant -> nix system -> { debArch, hash }
  #
  # The two .deb flavours are mutually exclusive upstream (they Conflict: each
  # other) and ship different builds of the same file names:
  #
  #   gui  windscribe_<v>_<arch>.deb      48 MB Windscribe  (Qt desktop client)
  #   cli  windscribe-cli_<v>_<arch>.deb  16 MB Windscribe  (headless engine)
  #
  # helper, windscribe-cli and libwsnet.so also differ between the two; the
  # protocol binaries (openvpn, wstunnel, amneziawg, ctrld) are byte-identical.
  variants = {
    gui = {
      x86_64-linux = {
        debArch = "amd64";
        hash = "sha256-JYkLk1dsdTOF5UlUj2DdJ9Jwdo0EfRzSwPpVBhnQ5ks=";
      };
      aarch64-linux = {
        debArch = "arm64";
        hash = "sha256-bFal4vz0JpOITxszAv6Kjw/ihuBG6mVopvw7qEB9B/U=";
      };
    };
    cli = {
      x86_64-linux = {
        debArch = "amd64";
        hash = "sha256-iFONiBYfGgttZI+7dNf9Su3ZjXcaBTr4WQ6/l14KPII=";
      };
      aarch64-linux = {
        debArch = "arm64";
        hash = "sha256-h2Jsjhllzpvbd/inBr0HxIbIfTAJ0mvseUJPi/jJ5Ko=";
      };
    };
  };
}
