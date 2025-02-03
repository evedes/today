# frozen_string_literal: true

class Card < ViewComponent::Base
  renders_one :body

  def initialize(padding: "p-4", rounded: "rounded-lg", shadow: "shadow")
    @padding = padding
    @rounded = rounded
    @shadow = shadow
  end

  private

  attr_reader :padding, :rounded, :shadow

  def classes
    [ "bg-white", padding, rounded, shadow ].join(" ")
  end
end
