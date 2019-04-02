Gem::Specification.new do |s|
  s.name = %q{browserstack-fast-selenium}
  s.version = "1.0.0"
  s.date = %q{2019-03-26}
  s.summary = %q{fast-selenium gem to speed up your selenium tests on BrowserStack.}
  s.files = [
    "lib/fast-selenium.rb"
  ]
  s.metadata = {
    'source_code_uri' => 'https://github.com/browserstack/fast-selenium-scripts/tree/master/fast-selenium-gem'
  }
  s.homepage = 'https://www.browserstack.com'
  s.require_paths = ["lib"]
  s.authors     = ["Browserstack"]
  s.add_runtime_dependency 'curb', ['= 0.9.9']
end
