require 'squib'

Squib::Deck.new(width: 1125, height: 825, cards: 8, layout: 'layout.yml') do
  background color: '#ffffff'
  deck = xlsx file: 'newswigs.xlsx'

  text str: deck['Title'], layout: :Title

  svg file: deck['Left_i'], layout: :LeftIcon
  text str: deck['Left'], layout: :LeftText

  svg file: deck['Centre_i'], layout: :CentreIcon
  text str: deck['Centre'], layout: :CentreText

  svg file: deck['Right_i'], layout: :RightIcon
  text str: deck['Right'], layout: :RightText

  save_png prefix: 'newswigs_'

  save_pdf 

end
