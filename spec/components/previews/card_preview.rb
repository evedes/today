class CardPreview < Lookbook::Preview
  include ActionView::Helpers::TagHelper

  # @label Basic Examples
  def default
    render Card.new do |card|
      card.with_body do
        "This is a basic card"
      end
    end
  end

  # Card with custom padding
  def custom_padding
    render Card.new(padding: "p-8") do |card|
      card.with_body do
        "This card has more padding"
      end
    end
  end

  # @label Advanced
  # @group Customization
  def custom_style
    render Card.new(padding: "p-6", rounded: "rounded-xl", shadow: "shadow-lg") do |card|
      card.with_body do
        tag.div class: "space-y-2" do
          tag.h2("Custom Card", class: "text-xl font-bold") +
          tag.p("This card has custom styling")
        end
      end
    end
  end

  # @param padding select [p-2, p-4, p-6, p-8] The padding class
  # @param rounded select [rounded-none, rounded, rounded-lg, rounded-xl] The border radius
  # @param shadow select [shadow-none, shadow-sm, shadow, shadow-lg] The shadow size
  def playground(padding: "p-4", rounded: "rounded-lg", shadow: "shadow")
    render Card.new(padding: padding, rounded: rounded, shadow: shadow) do |card|
      card.with_body do
        "Interactive card example"
      end
    end
  end
end
