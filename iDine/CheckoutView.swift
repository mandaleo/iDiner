//
//  CheckoutView.swift
//  iDine
//
//  Created by Manuel Martinez Gomez on 25/03/2020.
//  Copyright © 2020 Mandaleo. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
  @EnvironmentObject var order: Order
  @State private var paymentType = 0
  static let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
  var body: some View {
    Form {
      Section {
        Picker("How do you want to pay",
               selection: $paymentType) {
                ForEach(0 ..< Self.paymentTypes.count) {
                  Text(Self.paymentTypes[$0])
                }
        }
      }
    }
    .navigationBarTitle(Text("Payment"), displayMode: .inline)
  }
}

struct CheckoutView_Previews: PreviewProvider {
  static let order = Order()
  static var previews: some View {
    CheckoutView().environmentObject(order)
  }
}
