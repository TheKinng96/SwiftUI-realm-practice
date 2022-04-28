//
//  ItemResultView.swift
//  SwiftUI-realm practicw
//
//  Created by Feng Yuan Yap on 2022/04/28.
//

import SwiftUI
import RealmSwift

struct ItemResultView: View {
  @ObservedResults(Item.self) var items
  var body: some View {
    List {
      ForEach(items) { item in
        ItemRow(item: item)
      }
    }
  }
}

struct ItemResultView_Previews: PreviewProvider {
  static var previews: some View {
    return ItemResultView()
      .environment(\.realm, RealmHelper.realmWithItems())
  }
}
