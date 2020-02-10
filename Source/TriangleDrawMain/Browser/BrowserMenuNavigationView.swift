// MIT license. Copyright (c) 2020 TriangleDraw. All rights reserved.
import SwiftUI

struct BrowserMenuNavigationView: View {
    var dismissAction: (() -> Void)?

	var body: some View {
        NavigationView {
			BrowserMenuScrollView()
				.navigationBarItems(leading:
					Button(action: {
						self.dismissAction?()
					}, label: {
						Text("OK")
					})
				)
				.navigationBarTitle("App", displayMode: .inline)
		}
	}
}

struct BrowserMenuNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BrowserMenuNavigationView()
    }
}