import SwiftUI

struct ProductListView: View {
    @StateObject private var viewModel: ProductListViewModel

    init(viewModel: ProductListViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("PRODUCT LIST").font(.headline).padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
        List {
            ForEach(viewModel.products) { product in
                ProductRowView(item: product).onAppear {
                    if product == viewModel.products.last {
                        viewModel.getProducts()
                    }
                }
            }
            
        }.onAppear {
            viewModel.getProducts()
        }
        
        if viewModel.isLoading {
            LoadingView()
        }
    }
}

#Preview {
    let apiService = APIService()
    let repository = ProductRepository(apiService: apiService)
    let viewModel = ProductListViewModel(productRepository: repository)
    ProductListView(viewModel: viewModel)
}
