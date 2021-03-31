require 'json'

CONFIG = JSON.parse(`parse-hocon global.conf`)

task :mokuroku do
  sh "curl -O #{CONFIG['MOKUROKU_URL']}"
end

task :transcode do
  sh [
    "zcat mokuroku.csv.gz |",
    "parallel ruby transcode.rb"
  ].join(' ')
end

task :host do
  sh "budo -d docs"
end

task :style do
  sh [
    "SITE_ROOT=#{CONFIG['SITE_ROOT']}",
    "parse-hocon hocon/style.conf > docs/style.json"
  ].join(' ')
  sh "gl-style-validate docs/style.json"
end

