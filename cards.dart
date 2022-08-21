void main() {
  var deck = Deck();
//   deck.shuffle();
//   print(deck.cardsWithSuit('Hearts'));
//   print(deck);
//   print(deck.deal(4));
//   print(deck);
  deck.removeCard('Spades', 'Four');
  print(deck);
}
  
class Deck {
  List<Card> cards = [];
  
  Deck() {
    var ranks = ['Ace', 'Two', 'Three' ,'Four' , 'Five'];
    var suits = ['Spades', 'Hearts', 'Clubs', 'Diamonds'];
    
    for (var suit in suits) {
      for (var rank in ranks) {
        // Named parameters make the order irrelevant - good way take advantage of type
        var card = Card(rank: rank, suit: suit);
        cards.add(card);
      }
    } 
  }
  
  // cards has a toString method, but the class Deck doesn't?
  // Then why do I have to override it?
  @override 
  String toString() {
      return cards.toString();
    }
  
  // Dart has a lot of built in methods - like 'shuffle' on a list
  shuffle() {
    cards.shuffle();
  }
  
  cardsWithSuit(String suit) {
  // 'where' is another built-in method for a list - like 'filter' in js
    return cards.where((card) => card.suit == suit);

    //     Long form
//     return cards.where((card) {
//     	return card.suit == suit;
//     });
  }
  
  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    // Since list is a ref type, need to redefine cards to exclude the cards dealt
    // Below is the start (handSize) with no end, so end defaults to the end of the list
    cards = cards.sublist(handSize);
    return hand;
  }
  
  removeCard(String suit, String rank) {
    return cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}

class Card {
  String suit;
  String rank;
  
  Card({this.rank = '', this.suit = ''});
  
  @override
  toString() {
    return '$rank of $suit';
  }
}
