require( "minitest/autorun" )
require( "minitest/reporters" )
Minitest::Reporters.use! 
Minitest::Reporters::SpecReporter.new

require_relative( "../card" )
require_relative( "../card_game" )

class CardGameTest < MiniTest::Test

    def setup()
        @card1 = Card.new("Spades", 1)
        @card2 = Card.new("Queen", 7)
        @card3 = Card.new("Clubs", 8)
    end

    def test_check_for_ace_true()
        assert(CardGame.check_for_ace(@card1))
    end

    def test_check_for_ace_false()
        refute(CardGame.check_for_ace(@card2))
    end

    def test_highest_card()
        result = CardGame.highest_card(@card2, @card3)
        assert_equal(result, @card3)
    end

    def test_cards_total()
        cards = [@card2, @card3]
        result = CardGame.cards_total(cards)
        assert_equal(result, "You have a total of 15")
    end

end
