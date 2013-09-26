describe Card do
  describe '.filterable_attribute?' do
    context 'when the attribute is safe' do
      it 'returns true when given a string' do
        expect(Card.filterable_attribute?('name')).to be true
      end

      it 'returns true when given a symbol' do
        expect(Card.filterable_attribute?(:name)).to be true
      end
    end

    context 'when the attribute is not safe' do
      it 'returns false when given a string' do
        expect(Card.filterable_attribute?('updated_at')).to be false
      end

      it 'returns false when given a symbol' do
        expect(Card.filterable_attribute?(:updated_at)).to be false
      end
    end
  end
end
