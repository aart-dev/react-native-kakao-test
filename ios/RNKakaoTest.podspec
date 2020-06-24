
Pod::Spec.new do |s|
  s.name         = "RNKakaoTest"
  s.version      = "1.0.0"
  s.summary      = "RNKakaoTest"
  s.description  = <<-DESC
                      RNKakaoTest
                       DESC
  s.homepage     = "http://aartkorea.com"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNKakaoTest.git", :tag => "v#{s.version}" }
  s.source_files  = "*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

