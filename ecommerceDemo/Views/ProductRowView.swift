// Placeholder

import SwiftUI

struct ProductRowView: View {
    var item: Product
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(item.title)").font(.headline)
            HStack {
                Text("Price:")
                Text("\(item.price)")
            }
          //  Text("\(item.category)")
            HStack {
                Text("discount Percentage")
                Text("\(item.discountPercentage)")
            }
            HStack {
                Text("Rating: \(item.rating)")
            }
          //  Text("\(item.brand)")
            Text("\(item.description)").font(.title3)
        }.padding(EdgeInsets(top: 5, leading: 0, bottom: 10, trailing: 0))
    }
}
