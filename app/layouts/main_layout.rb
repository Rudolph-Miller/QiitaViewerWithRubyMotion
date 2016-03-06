class MainLayout < MK::Layout
  include MainStyles

  view :button

  def layout
    root :main do
      add UILabel, :label
      @button = add UIButton, :button
    end
  end
end
