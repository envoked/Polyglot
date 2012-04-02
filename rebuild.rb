SRC  = "source"
DEST = "public"

def rebuild_site(relative)
  extension = File.extname(relative)
  fileName  = File.basename(relative,extension)
  puts relative
  case extension
  when "sass", "scss"
    `sass #{SRC}/#{relative} #{DEST}/css/#{fileName}.css`
  when "haml"
     `haml #{SRC}/#{relative} #{DEST}/#{fileName}.html --trace`
  when "coffee"
    `coffee --join main.js --compile #{SRC}/*.coffee`
  end
end
