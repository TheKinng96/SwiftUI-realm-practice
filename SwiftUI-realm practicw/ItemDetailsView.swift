//
//  ItemDetailsView.swift
//  SwiftUI-realm practicw
//
//  Created by Feng Yuan Yap on 2022/04/25.
//

import SwiftUI
import RealmSwift

/// Represents a screen where you can edit the item's name.
struct ItemDetailsView: View {
  @ObservedRealmObject var item: Item
  var body: some View {
    VStack(alignment: .leading) {
      Text("Enter a new name:")
      // Accept a new name
      TextField("New name", text: $item.name)
        .navigationBarTitle(item.name)
        .navigationBarItems(trailing: Toggle(isOn: $item.isFavorite) {
          Image(systemName: item.isFavorite ? "heart.fill" : "heart")
        })
    }.padding()
  }
}

struct ItemDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    ItemDetailsView(item: Item())
  }
}
