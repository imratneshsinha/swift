import Foundation

struct DashboardResponse: Codable {
    let greeting: String
    let chartData: [ChartData]
    let topLinks: [Link]
    let recentLinks: [Link]
}

struct ChartData: Codable {
    let date: String
    let value: Double
}

struct Link: Codable, Identifiable {
    let id: String
    let title: String
    let url: String
}
