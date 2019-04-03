cat ./selenium_versions | while read version;do
  echo "Generating gemfile for selenium version $version"
  echo "source 'https://rubygems.org'\n ruby '2.2.5' \n gem 'browserstack-fast-selenium', path: '~/Desktop/code/fast-selenium-scripts/fast-selenium-gem' \n  \n gem 'selenium-webdriver', '= $version'" > Gemfile
  bundle install > /dev/null
  bundle exec ruby ./ex_fast_sel_gem.rb
done
rm Gemfile*
