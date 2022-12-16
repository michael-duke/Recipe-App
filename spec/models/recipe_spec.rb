
  context 'Testing Associations' do
    it 'has_many recipes' do
      assoc = Recipe.reflect_on_association(:recipe_foods)
      expect(assoc.macro).to eq :has_many
    end
    it 'belongs_to user' do
      assoc = Recipe.reflect_on_association(:user)
      expect(assoc.macro).to eq :belongs_to
    end
  end
end