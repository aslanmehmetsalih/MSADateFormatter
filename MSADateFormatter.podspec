Pod::Spec.new do |s|
    s.name             = 'MSADateFormatter'
    s.version          = '1.0.0'
    s.summary          = 'Date formatter helper for iOS apps.'
    
    s.homepage         = 'https://github.com/aslanmehmetsalih/MSADateFormatter'
    s.screenshots      = 'https://raw.githubusercontent.com/aslanmehmetsalih/MSADateFormatter/master/Images/ss1.png', 'https://raw.githubusercontent.com/aslanmehmetsalih/MSADateFormatter/master/Images/ss2.png', 'https://raw.githubusercontent.com/aslanmehmetsalih/MSADateFormatter/master/Images/ss3.png'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'aslanmehmetsalih' => 'aslanmehmetsalih@hotmail.com' }
    s.source           = { :git => 'https://github.com/aslanmehmetsalih/MSADateFormatter.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/aslanmsalih'
    
    s.ios.deployment_target = '8.0'
    s.swift_version = '4.2'
    
    s.source_files = 'MSADateFormatter/Classes/**/*'
end
