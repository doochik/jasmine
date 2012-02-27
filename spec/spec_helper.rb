# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper.rb"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end

require 'awesome_print'
require 'tmpdir'

def project_root
  File.join(File.expand_path(File.dirname(__FILE__)), '..')
end

require "#{project_root}/tasks/jasmine_dev"

def capture_output
  output = StringIO.new
  $stdout = output
  yield
  output.string
ensure
  $stdout = STDOUT
end

def reset_dir(dir)
  FileUtils.rm_r dir if File.exists?(dir)
  FileUtils.mkdir_p dir
end