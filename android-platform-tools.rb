class AndroidPlatformTools < Formula
  desc "Tools for the Android SDK"
  homepage "https://developer.android.com/studio/releases/platform-tools.html"
  # the url is from:
  # https://dl.google.com/android/repository/repository-12.xml
  url "https://dl.google.com/android/repository/platform-tools_r29.0.4-darwin.zip"
  version "29.0.4"
  sha256 "0138d738eeb96a48a0b04894e502d4b4ef802cb8cf446a61838fb7c2a386a532"

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
