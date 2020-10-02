require 'test_helper'

class CharacterTest < ActiveSupport::TestCase

  test "Should not allow duplicate character name" do
    Character.create(name: "rickyrillo", status: "Unknown")
    character = Character.new(name: "rickyrillo", status: "Unknown")
    assert_not character.save, "Saved a duplicate Character name"
  end

  test "Should not allow no presence of status field" do
    character = Character.new(name: "rickyrillo_nostatus")
    assert_not character.save, "Saved a Character with no status"
  end
  
end
