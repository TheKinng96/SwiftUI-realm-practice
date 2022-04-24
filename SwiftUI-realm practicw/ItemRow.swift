//
//  ItemRow.swift
//  SwiftUI-realm practicw
//
//  Created by Feng Yuan Yap on 2022/04/25.
//

import SwiftUI
import RealmSwift

/// Represents an Item in a list.
struct ItemRow: View {
  @ObservedRealmObject var item: Item
  var body: some View {
    // You can click an item in the list to navigate to an edit details screen.
    NavigationLink(destination: ItemDetailsView(item: item)) {
      Text(item.name)
      if item.isFavorite {
        // If the user "favorited" the item, display a heart icon
        Image(systemName: "heart.fill")
      }
    }
  }
}

struct ItemRow_Previews: PreviewProvider {
  static var previews: some View {
    ItemRow(item: Item())
  }
}
