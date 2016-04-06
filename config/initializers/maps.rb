if Rails.env.development?
  config = "#{Rails.root}/config/maps.yml"
  if File.exists? config 
    maps = YAML.load_file(config)
    maps.each { |key, value| ENV[key] = value.to_s }
  else
    raise "Missing File google.yml"
  end
end