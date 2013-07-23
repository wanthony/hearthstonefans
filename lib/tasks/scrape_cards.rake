namespace :scrape do
  task cards: :environment do
    html = RestClient.get('http://hearthstonecardlist.com')
    doc = Nokogiri::HTML(html)

    doc.css('tbody tr').each do |row|
      name = row.children[2].text
      klass = "All".in?(row.children[4].text) ? 'All' : row.children[4].css('img').first['src'].match(/images\/(.*)\.png$/)[1]
      quality = row.children[6].text
      type = row.children[8].text
      race = row.children[10].text
      mana_cost = row.children[12].text
      attack_damage = row.children[14].text
      health = row.children[16].text
      description = row.children[18].text

      Card.where(name: name).first_or_create(
        player_class: klass,
        quality: quality,
        card_type: type,
        race: race,
        mana_cost: mana_cost,
        attack_damage: attack_damage,
        health: health,
        description: description
      )
    end
  end
end
