import Foundation

func getGreeting() -> String {
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
    case 0..<12:
        return "Good Morning"
    case 12..<18:
        return "Good Afternoon"
    default:
        return "Good Evening"
    }
}
