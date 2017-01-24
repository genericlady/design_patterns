class InputTest
  def self.main
    c = 0

    begin
      input_stream =
        LowerCaseInputStream.new(
          BufferedInputStream.new(
            FileInputStream.new ("test.txt")))

      # Use the stream to read
      # characters until the end
      # of file and print as we go
      while (c = input_stream.read) >= 0 do
        print c
      end

      c.close

    rescue SystemCallError
      print "IO failed: "
      opFile.close
      File.delete(opName)
      raise
    end
  end
end
