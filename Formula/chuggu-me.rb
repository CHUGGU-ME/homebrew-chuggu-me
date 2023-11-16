class ChugguMe < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/test.tar.gz"
    sha256 "7204a7647d2f9c2caf0ce8a65a2bf77bcfc1cae6750b50fc8d9bb98d59a55ee3"
    version "1.0"

    depends_on "openjdk"

    def install
        system "./gradlew", "jar", "-x", "test"
        libexec.install "./build/libs/CHUGGU-ME-v2.jar"
        bin.write_jar_script libexec/"CHUGGU-ME-v2.jar", "chuggu-me"
    end
  end