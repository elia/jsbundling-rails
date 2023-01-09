bundle_command 'add opal --version "~> 1.7.1" --skip-install' # run bundle install in the next line
bundle_command 'add opal --skip-install' # run bundle install in the next line
bundle_command 'add listen --group development'

say "Add bin/build-js to build JavaScript"
copy_file "#{__dir__}/build-js", "bin/build-js"
chmod "bin/build-js", 0755, verbose: false

keep_file "app/assets/builds/opal"
keep_file "app/javascript/opal"

copy_file "#{__dir__}/application.js.rb", "app/javascript/opal/application.js.rb"
