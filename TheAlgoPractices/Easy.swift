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
func generateDocument(_ s1: String, _ s2: String) -> Bool {
    if s2.isEmpty { return true }
    
    var charCount: [Character: Int] = [:]
    
    for char in s1 {
        charCount[char, default: 0] += 1
    }
    
    for char in s2 {
        if let count = charCount[char], count > 0 {
            charCount[char]! -= 1
        } else {
            return false
        }
    }
    
    return true
}
