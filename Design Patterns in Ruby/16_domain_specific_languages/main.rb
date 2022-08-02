require 'finder'
require_relative 'packrat'

eval(File.read('backup.pr'))
PackRat.instance.run
# the above line takes the lines in backup.pr and executes them as ruby statements where we have defined methods that maps to them.
