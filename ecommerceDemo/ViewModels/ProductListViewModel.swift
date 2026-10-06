// Placeholder

import Foundation

protocol ProductListViewModelProtocol {
    func getProducts()
}


class ProductListViewModel: ProductListViewModelProtocol, ObservableObject {
   
    var productRepository: ProductRepository
    @Published var products: [Product] = []
    var productReponse: ProductResponse?
    @Published var isLoading: Bool = false
    
    var limit: Int = 10
    var skip: Int = 0
    init(productRepository: ProductRepository) {
        self.productRepository = productRepository
    }
    
    func getProducts() {
        isLoading = true
        Task {
            let response = await productRepository.getProducts(limit: limit, skip: skip)
            await MainActor.run {
                switch response {
                case .success(let data):
                    print(data)
                    productReponse = data
                    self.products.append(contentsOf: productReponse?.products ?? [])
                case .failure(let error):
                    print(error)
                }
                isLoading = false
            }
        }
    }
    
    
}
