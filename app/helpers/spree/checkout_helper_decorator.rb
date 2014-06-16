module Spree
  module CheckoutHelper
    def wrapper_class
      klass = @order.confirm? && 'omega sixteen' || 'twelve'
      %Q|columns alpha #{klass}|
    end

    def order_states
      %w{ address delivery payment confirm }
    end

    def step_class state
      state = 'disabled-step' unless state == @order.state
      %Q|row checkout_content #{state}|
    end

    def confirm? state
      state == 'confirm'
    end
  end
end

