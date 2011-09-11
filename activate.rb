#! /usr/bin/env ruby -w
# vim: sw=4 sts=4 et si

require 'fileutils'
require 'optparse'

if ARGV[0] == '-n'
  include FileUtils::DryRun
else
  include FileUtils::Verbose
end

working_dir = File.expand_path(File.dirname(__FILE__))
me = File.expand_path(__FILE__)
home_dir = File.expand_path("~")

Dir.glob( File.join( working_dir, '*' ) ).each do |file|
  sym_link = File.join( home_dir, '.' + File.basename( file ) )
  next if file == me

  rm sym_link if File.symlink?(sym_link) || File.exist?(sym_link)
  ln_s file, sym_link
end
