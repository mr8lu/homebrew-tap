cask "blackmarker-studio" do
  version "0.4.1"
  sha256 "d1865a2078a23aac903af2bdac961f16a7358c26e34b4a1930aeeb951a421bf7"

  url "https://github.com/mr8lu/blackmarker-studio/releases/download/v#{version}/Blackmarker-Studio-#{version}-macos.zip"
  name "Blackmarker Studio"
  desc "On-device FOIA, HIPAA, and financial PDF redactor"
  homepage "https://github.com/mr8lu/blackmarker-studio"

  depends_on macos: ">= :sonoma"

  app "Blackmarker Studio.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Blackmarker Studio.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/RedactGov",
    "~/Library/Preferences/studio.blackmarker.app.plist",
  ]
end
