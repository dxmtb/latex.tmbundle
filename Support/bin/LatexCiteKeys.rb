#!/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby
require ENV["TM_BUNDLE_SUPPORT"] + "/lib/LaTeXUtils.rb"
phrase = STDIN.read.chomp
include LaTeX
items = LaTeX.get_citekeys
items = items.grep(/#{phrase}/) if phrase != ""
exit if items.empty?
puts items.join("\n")