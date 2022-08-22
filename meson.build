project(
  'repo1',
  'cpp'
)


run_command('./gen_files.sh')

include_dir = 'foo/bar'
includes = include_directories(include_dir)

repo1_lib = static_library(
  'repo1Lib', 
  include_directories: includes,
)

repo1_dep = declare_dependency(
  include_directories: includes,
  link_with: repo1_lib,
)
