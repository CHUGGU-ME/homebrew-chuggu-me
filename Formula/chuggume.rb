class Chuggume < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/v1.1.8.tar.gz"
    sha256 "ac58eb7d8d8016aaef8d493fd3c823043cbbdb36d9aa7cf720cb80940383ba26"
    version "1.0"

    depends_on "openjdk"

    def install
        system "./gradlew", "jar", "-x", "test"
        libexec.install "./build/libs/CHUGGU-ME-v2.jar"
        bin.write_jar_script libexec/"CHUGGU-ME-v2.jar", "chuggume"
    end

    test do
        system "chuggume", "update"
    end
  end
