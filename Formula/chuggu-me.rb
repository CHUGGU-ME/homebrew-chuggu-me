class ChugguMe < Formula
    desc "epl info for everyone"
    homepage ""
    url "https://github.com/CHUGGU-ME/CHUGGU-ME-v2/archive/refs/tags/v1.0.18.tar.gz"
    sha256 "0a157b8766e4ac939ea8e6715b53d6c5fa841d6c7a955f180f9fe4c18e583739"
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
