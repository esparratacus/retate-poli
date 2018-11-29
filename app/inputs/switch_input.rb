class SwitchInput < SimpleForm::Inputs::Base
  def input
    template.content_tag(:div, class:'switch') do
      template.content_tag(:label)
    end
  end

  def label_tag
    template.content_tag(:label) do
      template.concat "Off"
      template.concat @builder.input_field(attribute_name, {type: :checkbox})
      template.concat span_tag
      template.concat "On"
    end

  end

  def span_tag
    template.content_tag(:span, class: 'lever') do
    end
  end

end