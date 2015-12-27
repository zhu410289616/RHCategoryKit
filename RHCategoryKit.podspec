Pod::Spec.new do |s|
  s.name         = "RHCategoryKit"
  s.version      = "1.0.3"
  s.summary      = "RHCategory: Some Categorys."
  s.homepage     = "https://github.com/zhu410289616/RHCategoryKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "zhu410289616" => "zhu410289616@163.com" }

  s.ios.deployment_target = "6.0"

  s.source       = { :git => "https://github.com/zhu410289616/RHCategoryKit.git", :tag => s.version.to_s }

  s.source_files  = "RHCategory/*.{h,m}"

  s.requires_arc = true
  s.frameworks = "Foundation", "UIKit"

  s.dependency 'Base64nl', '~> 1.2'

end
