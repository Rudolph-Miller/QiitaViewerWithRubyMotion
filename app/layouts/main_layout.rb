class MainLayout < MK::Layout
  def layout
    root :main do
      add UILabel, :label
      @button = add UIButton, :button
    end
  end

  def main_style
    background_color "#F9F9F9".uicolor
  end

  def label_style
    text 'Main'
    size_to_fit
    center ['50%', '50%']
  end

  def button_style
    title 'button'
    size_to_fit
    center ['50%', '50% + 50']
    background_color '#51A8E7'.uicolor
  end
end
