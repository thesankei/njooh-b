Rake::Task["doc:app"].clear
Rake::Task["doc/app"].clear
Rake::Task["doc/app/index.html"].clear

namespace :doc do    
    RDoc::Task.new :rdoc do |rdoc|
      rdoc.rdoc_dir  = 'doc/app'
      rdoc.title     = 'Smart Consumer Web App Documentation'
      rdoc.main = "README.rdoc"
    
      rdoc.rdoc_files.include("README.rdoc", "doc/*.rdoc", "app/**/*.rb", "lib/*.rb", "config/**/*.rb")
      #change above to fit needs
    
      rdoc.title = "App Documentation"
      rdoc.options << "--all" 
    end
end