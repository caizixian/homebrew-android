class AndroidPlatformTools < Formula
  desc "Tools for the Android SDK"
  homepage "https://developer.android.com/studio/releases/platform-tools.html"
  # the url is from:
  # https://dl.google.com/android/repository/repository-12.xml
  url "https://dl.google.com/android/repository/platform-tools_r29.0.5-darwin.zip"
  version "29.0.5"
  sha256 "f4a671ab24845f26cb4b579079e2cc3a58c9931e07ae2fca1c83ffebdf773cc1"

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
