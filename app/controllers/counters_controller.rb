class CountersController < ApplicationController
  def show
    @value = Count.value
    render
  end

  def inc
    Count.value += 1
    redirect_to action: 'show'
  end

  def dec
    Count.value -= 1
    redirect_to action: 'show'
  end
end

