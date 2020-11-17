import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(FrameworkDataSource.frameworks) { framework in
                    NavigationLink(
                        destination: FrameworkDetailsView(framework: framework, isShowingDetailsView: $viewModel.isShowingDetailsView),
                        label: {
                            FrameworkGridItemView(framework: framework)
                        })
                }
            }
            .navigationTitle(viewModel.navigationTitle)
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
