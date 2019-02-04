class AndroidPlatformTools < Formula
  desc "Tools for the Android SDK"
  homepage "https://developer.android.com/studio/releases/platform-tools.html"
  # the url is from:
  # https://dl.google.com/android/repository/repository-12.xml
  url "https://dl.google.com/android/repository/platform-tools_r28.0.1-darwin.zip"
  version "28.0.1"
  sha256 "3bc833ae3f4bd831af03811f2d1be540c2eb2eb9a17de9398b0a06dc5af6fa84"

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
