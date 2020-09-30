require( "minitest/autorun" )
require( "minitest/reporters" )
Minitest::Reporters.use! 
Minitest::Reporters::SpecReporter.new

require_relative( "../card" )
require_relative( "../card_game" )

class CardGameTest < MiniTest::Test

    def setup()
        @card_1 = Card.new("Spades", 1)
        @card_2 = Card.new("Queen", 6)
        @card_3 = Card.new("Clubs", 7)
    end

    def test_check_for_ace_true()
        assert(CardGame.check_for_ace(@card_1))
    end

    def test_check_for_ace_false()
        refute(CardGame.check_for_ace(@card_2))
    end

    def test_highest_card()
        result = CardGame.highest_card(@card_2, @card_3)
        assert_equal(result, @card_3)
    end

    def test_cards_total()
        cards = [@card_2, @card_3]
        result = CardGame.cards_total(cards)
        assert_equal(result, "You have a total of 15")
    end

end
