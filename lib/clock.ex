# this is not part of an app
# it was just example
defmodule Clock do

  def start(f) do
    run(f, 0)
  end

  def run(your_hears_desire, count) do
    your_hears_desire.(count)
    new_count = Counter.Core.inc(count)
    :timer.sleep(1000)
    run(your_hears_desire, new_count)
  end
end