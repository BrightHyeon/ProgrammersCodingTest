import Foundation

func solution(_ order: [String]) -> Int {
    return order.reduce(0) {
        $0 + ($1.contains("cafelatte") ? 5000 : 4500)
    }
}