module Sass::Script::Functions
  def labels
    Sass::Script::List.new AnystyleIO.labels.map { |label|
      Sass::Script::String.new label
    }, :comma
  end
  declare :labels, args: []

  def translate_label(label)
    assert_type label, :String
    Sass::Script::String.new(AnystyleIO.translated_label(label.value), :string)
  end
  declare :translate_label, args: []
end
