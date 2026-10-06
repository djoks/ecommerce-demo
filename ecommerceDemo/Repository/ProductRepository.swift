// Placeholder
protocol ProductRepositoryProtocol {
    func getProducts(limit: Int, skip: Int) async -> Result<ProductResponse, APIError>
}

class ProductRepository: ProductRepositoryProtocol {
    var apiService: APIService
    
    init(apiService: APIService) {
        self.apiService = apiService
    }
    
    func getProducts(limit: Int, skip: Int) async -> Result<ProductResponse, APIError>  {
       let response = await apiService.fetchProducts(limit: limit, skip: skip)
        return response
        }
}
