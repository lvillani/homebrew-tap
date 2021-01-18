cask "solvespace" do
  version "3.0.rc2"
  sha256 "55fd217b85523e790347567cc8aaa2588eea4ae680c68918f58ccb6dcac4ea11"

  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/SolveSpace.dmg",
      verified: "github.com/"
  appcast "https://github.com/solvespace/solvespace/releases.atom"
  name "SolveSpace"
  homepage "https://solvespace.com/"

  app "SolveSpace.app"
end
