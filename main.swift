import Foundation
print("Fetching dashboard data...")

ApiService.shared.fetchDashboardData { dashboardData in
    guard let data = dashboardData else {
        print("Failed to fetch data")
        return
    }
    
    // Display the greeting
    print(getGreeting())
    
    // Print chart data
    print("\nChart Data:")
    for chartEntry in data.chartData {
        print("Date: \(chartEntry.date), Value: \(chartEntry.value)")
    }
    
    // Print top links
    print("\nTop Links:")
    for link in data.topLinks {
        print("Title: \(link.title), URL: \(link.url)")
    }
    
    // Print recent links
    print("\nRecent Links:")
    for link in data.recentLinks {
        print("Title: \(link.title), URL: \(link.url)")
    }
}
