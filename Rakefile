require_relative 'config/application'
require 'sdoc'
require 'rdoc/task'

Rails.application.load_tasks

RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.options << '--format=sdoc'
  rdoc.template = 'rails'
end