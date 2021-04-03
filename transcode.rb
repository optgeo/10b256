require 'json'
require 'rake'

CONFIG = JSON.parse(`parse-hocon global.conf`)

r = ARGV[0].split(',')
return unless /(\d*)\/(\d*)\/(\d*)\.png$/.match r[0]
(z, x, y) = [$1, $2, $3].map {|v| v.to_i}
sh "mkdir -p #{CONFIG['DST_DIR']}/#{z}/#{x}"
sh [
  "curl #{CONFIG['BASE_URL']}/#{z}/#{x}/#{y}.png |",
  "node ../boxer/index.js |",
  "cwebp -lossless -z 7 -o #{CONFIG['DST_DIR']}/#{z}/#{x}/#{y}.webp -- -"
].join(' ')


