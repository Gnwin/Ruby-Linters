
#!/usr/bin/env ruby
require_relative './lib/user_file'
require_relative './lib/css_checker'

user_file = ARGV

user_file = user_file[0]

user = User.new(user_file)

file_details = user.read_file

css_linter = CssChecker.new(file_details)

css_linter.check_file