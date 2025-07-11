cask "quickboot" do
  version "1.1-92"
  sha256 "5119e1113949baae165efc726b757d58a887743f1dc6ae8d03a978be7b5da4a3"

  url "https://buttered-cat.com/downloads/get/4/QuickBoot-#{version}.zip"
  name "QuickBoot"
  homepage "https://buttered-cat.com/product/quickboot/"

  no_autobump! because: :requires_manual_review

  # no release in the past 10 years
  # user has reported it stopped working in catalina
  # https://github.com/jfro/QuickBoot/issues/5
  deprecate! date: "2024-01-01", because: :unmaintained
  disable! date: "2025-01-04", because: :unmaintained

  app "QuickBoot.app"
end
