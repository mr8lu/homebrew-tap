cask "blackmarker-studio" do
  version "0.4.0"
  sha256 "5cc5a16fa84f6d77d4de7029f1b8ef972a0d583cd31dc2e126cc3cd863203d41"

  url "https://github.com/mr8lu/blackmarker-studio/releases/download/v#{version}/Blackmarker-Studio-#{version}-macos.zip"
  name "Blackmarker Studio"
  desc "On-device FOIA, HIPAA, and financial PDF redactor"
  homepage "https://github.com/mr8lu/blackmarker-studio"

  depends_on macos: :sonoma
  depends_on formula: "uv"
  depends_on formula: "qpdf"

  app "Blackmarker Studio.app"

  zap trash: [
    "~/Library/Application Support/RedactGov",
  ]
end
