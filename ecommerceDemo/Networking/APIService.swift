// Placeholder

import Foundation

class APIService {
    
    func fetchProducts(limit: Int, skip: Int) async -> Result<ProductResponse, APIError> {
        let urlString = "https://dummyjson.com/products?limit=\(limit)&skip=\(skip)"
        guard let url = URL(string: urlString) else {
            return .failure(APIError.invalidURL)
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(ProductResponse.self, from: data)
            return .success(response)
        } catch let exception {
            print(exception)
            return .failure(APIError.invalidResponse)

        }
            
    }
}
