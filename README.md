# 10b256

```
curl https://maps.gsi.go.jp/xyz/dem_png/9/475/220.png | node ../boxer/index.js | cwebp -lossless -z 7 -o docs/zxy/9/475/220.webp -- -                        
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current                                                                              
                                 Dload  Upload   Total   Spent    Left  Speed
100   806  100   806    0     0  11681      0 --:--:-- --:--:-- --:--:-- 11681
Saving file 'docs/zxy/9/475/220.webp'
File:      -
Dimension: 256 x 256
Output:    90 bytes
Lossless-ARGB compressed size: 90 bytes
  * Header size: 38 bytes, image data size: 26
  * Lossless features used: PALETTE
  * Precision Bits: histogram=5 transform=5 cache=0
  * Palette size:   9
rake aborted!
Command failed with status (2): [zcat mokuroku.csv.gz | parallel ruby trans...]                                                                              
/home/pi/10b256/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => transcode
(See full trace by running task with --trace)

real    4266m28.506s
user    12812m15.502s
sys     845m43.831s
```

