Pod::Spec.new do |s|
  s.name             = 'CustomButton'
  s.version          = '0.1.0'
  s.summary          = 'Custom Button inherited from UIView'
  s.description      = <<-DESC
                      This is Custom Button. Inherited from UIView. Not using UIControl
                      DESC
  s.homepage         = 'https://github.com/godpp/CustomButton'
  # s.screenshots      = '[IMAGE URL 1]', '[IMAGE URL 2]'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'godpp' => 'taylored@naver.com' }
  s.source           = { :git => 'git@github.com:godpp/CustomButton.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.source_files = 'Sources/*.swift'
end