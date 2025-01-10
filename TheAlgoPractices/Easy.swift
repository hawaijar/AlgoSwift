public func myAdd(_ a: Int, _ b: Int) -> Int {
    return a + b
}
public func myMul(_ a: Int, _ b: Int) -> Int {
    return a * b
}

public func commonCharacters(_ strings: [String]) -> [String] {
    if strings.isEmpty {
        return []
    }
    var result = Set(strings[strings.startIndex])
    
    for string in strings.dropFirst() {
        result = result.intersection(Set(string))
    }
    
    return result.map(String.init)
}
