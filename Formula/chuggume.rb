class Chuggume < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/test.tar.gz"
    sha256 "2029de05ba0cb8fd3b41127b1cb9e8a6c3df28735553165bbc88be8eb3723238"
    version "test"

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
