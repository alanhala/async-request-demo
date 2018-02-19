class MyJob
  def execute(id)
    puts "llegue #{id}"
    sleep(15.seconds)
    puts "me fui #{id}"
    [:ok, { message: 'slow' }.to_json]
  end
end
