class AndroidPlatformTools < Formula
  desc "Tools for the Android SDK"
  homepage "https://developer.android.com/studio/releases/platform-tools.html"
  # the url is from:
  # https://dl.google.com/android/repository/repository-12.xml
  url "https://dl.google.com/android/repository/platform-tools_r28.0.2-darwin.zip"
  version "28.0.2"
  sha256 "ee3a6762bead5d77c19d8772f205b846c0170b8cd387f8e6d6932aed60d7814c"

  bottle :unneeded

  conflicts_with "android-sdk",
    :because => "the Android Platform-tools are part of the Android SDK"

  def install
    bin.install "adb", "fastboot"
  end

  test do
    system bin/"fastboot --version"
    system bin/"adb version"
  end
end
