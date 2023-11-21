class ChugguMe < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/v1.1.1.tar.gz"
    sha256 "b21f54ab959049320908771f0f7a871ada2a2211f91f6bba2d7b9cf76700607a"
    version "1.0"

    depends_on "openjdk"

    def install
        system "./gradlew", "jar", "-x", "test"
        libexec.install "./build/libs/CHUGGU-ME-v2.jar"
        bin.write_jar_script libexec/"CHUGGU-ME-v2.jar", "chuggu-me"
    end

    test do
        system "chuggu-me", "goal"
    end
  end
