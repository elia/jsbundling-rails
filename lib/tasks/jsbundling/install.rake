namespace :javascript do
  namespace :install do
    desc "Install shared elements for all bundlers"
    task :shared do
      system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install/install.rb",  __dir__)}"
    end

    desc "Install shared elements for all NPM bundlers"
    task npm: "javascript:install:shared" do
      system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install/npm/install.rb",  __dir__)}"
    end

    desc "Install esbuild"
    task esbuild: "javascript:install:npm" do
      system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install/esbuild/install.rb",  __dir__)}"
    end

    desc "Install rollup.js"
    task rollup: "javascript:install:npm" do
      system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install/rollup/install.rb",  __dir__)}"
    end

    desc "Install Webpack"
    task webpack: "javascript:install:npm" do
      system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install/webpack/install.rb",  __dir__)}"
    end

    desc "Install Opal"
    task opal: "javascript:install:shared" do
      system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../install/opal/install.rb",  __dir__)}"
    end
  end
end
