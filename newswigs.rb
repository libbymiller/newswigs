require 'squib'

Squib::Deck.new(width: 1250, height: 900, cards: 8, layout: 'layout.yml', dpi: 300) do
  background color: '#ffffff'
  deck = xlsx file: 'newswigs.xlsx'

#  safe_zone

  text str: deck['Title'], layout: :Title

  svg file: deck['Left_i'], layout: :LeftIcon
  text str: deck['Left'], layout: :LeftText

  svg file: deck['Centre_i'], layout: :CentreIcon
  text str: deck['Centre'], layout: :CentreText

  svg file: deck['Right_i'], layout: :RightIcon
  text str: deck['Right'], layout: :RightText

  svg file: 'svgs/arrow.svg', layout: :CentreArrow

  save_png prefix: 'newswigs_'

  save_pdf 

end
