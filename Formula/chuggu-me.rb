class ChugguMe < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/test_brew_zip.tar.gz"
    sha256 "77c4b0dcb8e1fb202ebdf76136a8817887257d3303dfda9bca4089dfaecac4af"
    version "1.0"

    depends_on "openjdk"

    def install
        system "./gradlew", "jar", "-x", "test"
        libexec.install "./build/libs/CHUGGU-ME-v2.jar"
        bin.write_jar_script libexec/"CHUGGU-ME-v2.jar", "chuggu-me"
    end
  end