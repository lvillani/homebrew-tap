cask 'remote-for-mac' do
  version '2020.4'
  sha256 'edbda5a9d1ccae440cc0f26b99b60d42aed299fb1f5b32b912a31b5f4c3f6aa0'
  release = '6030'

  url "https://s3.amazonaws.com/remoteappz/Remote-for-Mac-#{release}.pkg.zip"
  name 'Remote for Mac'
  homepage 'https://cherpake.com/remote-for-mac/'

  pkg "Remote-for-Mac-#{release}.pkg"

  uninstall login_item: 'Remote for Mac',
            quit: 'com.cherpake.macrc.server',
            pkgutil: 'com.cherpake.pkg.macrc.server'

  zap trash: [
               '~/Library/Application Support/com.cherpake.macrc.server',
               '~/Library/Caches/com.cherpake.macrc.server',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.cherpake.macrc.server',
               '~/Library/Logs/Remote for Mac',
               '~/Library/Preferences/com.cherpake.macrc.server.plist',
             ]
end
