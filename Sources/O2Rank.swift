public enum O2Rank: Int {
  case Ace = 1
  case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
  case Jack, Queen, King
}

// MARK: - Comparable

extension O2Rank: Comparable {}

public func <(lhs: O2Rank, rhs: O2Rank) -> Bool {
  switch (lhs,rhs) {
  case (_, _) where lhs == rhs:
    return false
  case (.Ace, _):
    return false
  default:
    return lhs.rawValue < rhs.rawValue
  }
}

// MARK: - CustomStringConvertible

extension O2Rank: CustomStringConvertible {
  public var description: String {
    switch self {
    case .Ace:
      return "A"
    case .Jack:
      return "J"
    case .Queen:
      return "Q"
    case .King:
      return "K"
    default:
      return "\(rawValue)"
    }
  }
}

