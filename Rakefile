#!/usr/bin/env rake
require "bundler/gem_tasks"

directory TempDir = "tmp"
directory JavaScriptsDir = "vendor/assets/javascripts"

desc "import an upstream archive of the jquery drag event"
task "import" => [TempDir, JavaScriptsDir] do
  archive = ENV['archive'] or fail "specify and archive to import with archive=FILE"
  fail "no such file #{archive}" unless File.exists?(archive)
  sh "cp #{archive} tmp"
  sh "cd tmp && unzip #{archive}"
  sh "rm -rf #{JavaScriptsDir}/*"
  Dir['**/*.js'].each do |file|
    require_name = File.basename(file).gsub(/(.*)-.*\.js$/,'\1.js')
    sh "cp -f #{file} vendor/assets/javascripts/#{require_name}"
  end
end

task "clean" do
  sh "rm -rf tmp/*"
end