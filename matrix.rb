def matrix?
  File.file?('/.dockerenv')
end

def exist_connection?
  File.file?('./Dockerfile')
end

def up_connection
  `docker build -t matrix .`
end

def load_working_connection
  `docker inspect matrix | grep -m1 "WorkingDir" | cut -d '"' -f 4`
end

def load_user_environment
  ENV['USER']
end
