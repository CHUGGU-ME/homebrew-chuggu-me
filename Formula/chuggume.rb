class Chuggume < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/v1.1.10.tar.gz"
    sha256 "9fb7d46d6de379308f3d868f4bea41365903b8241cded6f3df523cf76db29776"
    version "1.1.10"

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
