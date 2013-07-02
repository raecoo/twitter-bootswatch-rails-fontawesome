#!/usr/bin/env rake
require 'bundler'
Bundler::GemHelper.install_tasks

desc "Configure then bundle the gem"
task :bundle do

  #sh 'bundle install'

  ## begin font-awesome config ##

  sh 'rm -f vendor/assets/fonts/fontawesome/*.*'
  sh 'cp -f font-awesome/font/*.* vendor/assets/fonts/fontawesome'

  sh 'rm -f vendor/toolkit/fontawesome/*.less'
  sh 'cp -f font-awesome/less/*.less vendor/toolkit/fontawesome'

  sh 'thor setup:fontawesome_update_less_files_for_asset_pipeline'

  sh 'cp -f vendor/toolkit/fontawesome/variables.less lib/generators/bootswatch/fontawesome/install/templates/variables.less'
  sh 'cp -f vendor/toolkit/fontawesome/font-awesome.less lib/generators/bootswatch/fontawesome/install/templates/font-awesome.less'

  ## end font-awesome config ##

  sh 'gem build *.gemspec'
  sh 'gem install *.gem'

end

task(:default).clear
task :default => :bundle

desc "Clean up files"
task :clean do

  sh 'rm *.gem'

end