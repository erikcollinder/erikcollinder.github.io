desc 'Serve Jekyll so its accessible to local devices'
task :hello do
  puts "I'm meant to be serving"
  status = system("jekyll serve --host 0.0.0.0")
  puts status ? "Success" : "Failed"
end

desc 'Jekyll serving with staging configuration file'
task :staging do
  sh "JEKYLL_ENV=development jekyll serve --config=_config.yml,_config.staging.yml"
end

desc 'Jekyll serving with production configuration file'
task :production do
  sh "JEKYLL_ENV=production jekyll serve --config=_config.yml,_config.production.yml"
end