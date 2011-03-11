SRC  = "source"
DEST = "static"

def rebuild_site(relative)
  extension = File.extname(relative)
  fileName  = File.basename(relative,extension)
  puts relative
  if File.extname(relative) == ".sass"
    `sass #{SRC}/#{relative} #{DEST}/css/#{fileName}.css`
  else
     `haml #{SRC}/#{relative} #{DEST}/#{fileName}.html --trace`
  end
end