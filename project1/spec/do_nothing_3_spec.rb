require 'rspec'

require_relative '../app/do_nothing'

describe DoNothing do

  it 'should do a 1 minute task' do
    subject.do_nothing(1)
  end

  it 'should do a 2 minute task' do
    subject.do_nothing(2)
  end

  it 'should do a 3 minute task' do
    subject.do_nothing(3)
  end

  it 'should do a 5 minute task' do
    subject.do_nothing(5)
  end

  it 'should do an 8 minute task' do
    subject.do_nothing(8)
  end

  it 'should perform without error' do
    expect { subject.do_nothing_and_fail(2) } .to_not raise_error
  end

  it 'should perform with error' do
    expect { subject.do_nothing_and_fail(2) } .to raise_error
  end
end