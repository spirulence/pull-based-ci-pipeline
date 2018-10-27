class DoNothing
  def do_nothing(time_minutes)
    time_minutes.times do
      60.times do
        sleep(1)
      end
    end
  end

  def do_nothing_and_fail(time_minutes)
    do_nothing(time_minutes)
    fail_immediately
  end

  def fail_immediately
    raise 'An error, man!'
  end
end