class FileAdapter
  def send(message)
    #
    # Get the path from the URL
    # and remove the leading '/'
    #
    to_path = message.to.path
    to_path.slice!(0)

    File.open(to_path, 'w') { |file| file.write(message.text) }
  end
end
