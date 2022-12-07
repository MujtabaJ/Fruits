//
//  SettingsRowView.swift
//  Fruits2
//
//  Created by a on 11/20/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: PROPERTIES
    
    var name: String
    var content: String?
    var linkLable: String?
    var linkDestination: String?
    
    // MARK: BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLable != nil && linkDestination != nil) {
                    Link(linkLable!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            } //: HSTACK
        } //: VSTACK
    }
}

// MARK: PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name:"Developer", content: "John / Jane")
                .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
