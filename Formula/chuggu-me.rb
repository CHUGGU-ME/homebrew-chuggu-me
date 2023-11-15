class ChugguMe < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/releases/download/test_brew/CHUGGU-ME.jar"
    sha256 "565f87fe2e77d9feba552d087608f51c6511b14b5f0a70a2cc3508479f4c99b1"
    version "1.0"

    depends_on "openjdk"

    def install
        jar = "CHUGGU-ME.jar"
        libexec.install "CHUGGU-ME.jar" => jar
        chmod 0755, bin/"chuggu-me"
    end
  end