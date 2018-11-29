Pod::Spec.new do |s|
    s.name             = 'MSADateFormatter'
    s.version          = '1.0.0'
    s.summary          = 'Date formatter helper for iOS apps.'
    s.description      = <<-DESC
    Date formatter helper for iOS apps.
    DESC
    
    s.homepage         = 'https://github.com/aslanmehmetsalih/MSADateFormatter'
    s.screenshots      = 'https://github.com/aslanmehmetsalih/MSADateFormatter/blob/master/ss1.png', 'https://github.com/aslanmehmetsalih/MSADateFormatter/blob/master/ss2.png', 'https://github.com/aslanmehmetsalih/MSADateFormatter/blob/master/ss3.png'
    s.license          = { :type => 'APACHE', :file => 'LICENSE' }
    s.author           = { 'aslanmehmetsalih' => 'aslanmehmetsalih@hotmail.com' }
    s.source           = { :git => 'https://github.com/aslanmehmetsalih/MSADateFormatter.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/aslanmsalih'
    
    s.ios.deployment_target = '8.0'
    
    s.source_files = 'MSADateFormatter/Classes/**/*'
end
