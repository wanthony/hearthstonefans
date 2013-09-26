describe Api::CardsController do
  describe '#index' do
    let :cards do
      [Card.new]
    end

    context 'with no filters' do
      before :each do
        Card.stub(:all).and_return(cards)
      end

      it 'returns a list of all cards in JSON format' do
        get :index, format: :json

        expect(response.body).to eq(cards.to_json)
      end
    end

    context 'with valid filters' do
      it 'returns a filtered list of cards' do
        Card.should_receive(:where).with('name' => 'Deathwing').and_return(cards)

        get :index, name: 'Deathwing', format: :json
      end
    end

    context 'with invalid filters' do
      it 'returns the full list of cards' do
        Card.should_receive(:all).and_return(cards)

        get :index, updated_at: '2013-02-11', format: :json

        expect(response.body).to eq(cards.to_json)
      end
    end
  end
end
