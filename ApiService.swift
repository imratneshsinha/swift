import Foundation

class ApiService {
    static let shared = ApiService()
    private init() {}
    
    func fetchDashboardData(completion: @escaping (DashboardResponse?) -> Void) {
        let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew")!
        var request = URLRequest(url: url)
        request.addValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                completion(nil)
                return
            }
            let dashboardData = try? JSONDecoder().decode(DashboardResponse.self, from: data)
            completion(dashboardData)
        }.resume()
    }
}
