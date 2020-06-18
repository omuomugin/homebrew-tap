class Castit < Formula
  desc "Post Multiple Message to Multiple Channel with single command"
  homepage "https://github.com/omuomugin/castit"
  url "https://github.com/omuomugin/castit/releases/download/v0.1.0/castit-0.1.0.zip"
  sha256 "616761cc43b7d257994669c8e7a7cf545261beb1ae179fe5d20cf22067bc6021"

  head "https://github.com/omomugin/castit.git"

  depends_on "openjdk"

  def install
    if build.head?

      system "./gradlew", "shadowJar"
      libexec.install "build/libs/castit-0.1.0-all.jar"
    else
      libexec.install "castit-0.1.0-all.jar"
    end
    bin.write_jar_script libexec/"castit-0.1.0-all.jar", "castit"
  end

  test do
    system "castit"
  end
end
