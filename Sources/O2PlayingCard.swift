public struct O2PlayingCard {
  let rank: O2Rank
  let suit: O2Suit
}


// MARK: - Equatable

extension O2PlayingCard: Equatable {}

public func ==(lhs:O2PlayingCard, rhs: O2PlayingCard) -> Bool {
  return lhs.rank == rhs.rank && lhs.suit == rhs.suit
}

// MARK: - Comparable
extension O2PlayingCard: Comparable {}

public func <(lhs: O2PlayingCard, rhs: O2PlayingCard) -> Bool {
  return lhs.suit < rhs.suit || (lhs.suit == rhs.suit && lhs.rank < rhs.rank)
}

// MARK: - CustomStringConvertible

extension O2PlayingCard: CustomStringConvertible {
  public var description: String {
    return "\(suit)\(rank)"
  }
}