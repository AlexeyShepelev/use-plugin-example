%w{ models }.each do |dir|
  path = File.join(File.dirname(__FILE__), 'app', dir)
  $LOAD_PATH << path
  if ActiveSupport::Dependencies.respond_to?(:autoload_paths)
    ActiveSupport::Dependencies.autoload_paths << path
    ActiveSupport::Dependencies.autoload_once_paths.delete(path)
  else
    ActiveSupport::Dependencies.load_paths << path
    ActiveSupport::Dependencies.load_once_paths.delete(path)
  end
end

%w{ models controllers }.each do |dir|
  path = File.join(File.dirname(__FILE__), 'app', dir)
  $LOAD_PATH << path
  if ActiveSupport::Dependencies.respond_to?(:autoload_paths)
    ActiveSupport::Dependencies.autoload_paths  << path
    ActiveSupport::Dependencies.autoload_once_paths.delete(path)
  else
    ActiveSupport::Dependencies.load_paths << path
    ActiveSupport::Dependencies.load_once_paths.delete(path)
  end
end
