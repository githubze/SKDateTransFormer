Pod::Spec.new do |s|
  s.name         = "SKDateTransFormer"
  s.version      = "1.0.0"
  s.summary      = "An iOS DateTransFormer."
  s.homepage     = "https://github.com/githubze/SKDateTransFormer.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'githubze' => '1424395628@qq.com' }
  s.source       = { :git => "https://github.com/githubze/SKDateTransFormer.git", :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = "SKDateTransFormer/**/*.{h,m}"
  s.requires_arc = true

end