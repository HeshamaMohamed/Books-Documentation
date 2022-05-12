fh = File.open('/tmp/display.out', 'w')
'Hello'.display(fh)
fh.close
puts(File.read('/tm[/display.out'))
