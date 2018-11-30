require 'date'
require 'open3'

Open3.capture3("ffmpeg -i rtmp://fms-base1.mitene.ad.jp/agqr/aandg22 ~/agr/frst/frst-#{Date.today.to_s}.mp4")
