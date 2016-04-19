public enum O2Suit: String {
  case Spades, Hearts, Diamonds, Clubs
}

// MARK: - Comparable

extension O2Suit: Comparable {}

public func<(lhs: O2Suit, rhs: O2Suit) -> Bool {
  switch (lhs, rhs) {
  case (_, _) where lhs == rhs:
    return false
  case (.Spades, _), (.Hearts, .Diamonds), (.Hearts, .Clubs), (.Diamonds, .Clubs):
    return false
  default:
    return true
  }
}


// MARK: - CustomStringConvertible
extension O2Suit: CustomStringConvertible {
  public var description: String {
    switch self {
    case .Spades:
      return "♠︎"
    case .Hearts:
      return "♡"
    case .Diamonds:
      return "♢"
    case .Clubs:
      return "♣︎"
    }
  }
}