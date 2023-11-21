class ChugguMe < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/v1.1.1.tar.gz"
    sha256 "21d8814c9e583658a9b7b6e388d2abc811ca688cb96d35a5dddc1df8a34aa04c"
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
