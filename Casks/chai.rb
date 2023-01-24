cask "chai" do
  version "3.3.0-beta.1"
  sha256 "2adb8ac617b00919cae8e9ebae7cedf6049e9344d0b8cdcf10e377c9bc645c57"

  url "https://github.com/lvillani/chai/releases/download/v#{version}/Chai-v#{version}.zip"
  name "Chai"
  desc "Utility to prevent the system from going to sleep"
  homepage "https://github.com/lvillani/chai"

  depends_on macos: ">= :big_sur"

  app "Chai.app"
end
