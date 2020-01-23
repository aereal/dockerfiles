dockefiles = Dir.glob('dockerfiles/**/*.Dockerfile')

build_targets = []
dockefiles.each do |dockerfile|
  name = dockerfile.sub(%r{\Adockerfiles/}, '').sub(%r{\.Dockerfile\z}, '')
  product, variant = *name.split('/', 2)
  tag = "#{name}:latest"
  task_name = 'build:' + name.gsub(%r{/}, ':')

  desc "Build #{product} docker image (#{variant})"
  task task_name do
    sh 'docker', 'build', '-t', tag, '-f', dockerfile, '.'
  end
  build_targets << task_name
end

desc 'Build all docker image'
task :build => build_targets
