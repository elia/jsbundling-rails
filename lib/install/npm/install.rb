if Rails.root.join(".gitignore").exist?
  append_to_file(".gitignore", %(\n/node_modules\n))
end

unless Rails.root.join("package.json").exist?
  say "Add default package.json"
  copy_file "#{__dir__}/package.json", "package.json"
end

say "Add bin/build-js to build JavaScript"
copy_file "#{__dir__}/build-js", "bin/build-js"
chmod "bin/build-js", 0755, verbose: false
