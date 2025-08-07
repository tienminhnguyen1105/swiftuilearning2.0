import SwiftUI

struct TableView: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4"]

    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    NavigationLink(destination: DetailView(item: item, list: items)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Danh sách")
        }
    }
}

struct DetailView: View {
    let item: String
    let list : [String]
    
    var body: some View {
        Text("Chi tiết của \(item)")
            .navigationTitle(item)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
