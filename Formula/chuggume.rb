class Chuggume < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/v1.1.15.tar.gz"
    sha256 "bd36bbc782b0363d1a4531a8cd28bac458e20428399ee301e1fef2b8884457d7"
    version "1.1.15"

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
