import SwiftUI

struct FrameworkGridView: View {
    
    // StateObject/ObservableObject
    // if creating new use StateObject,
    // if injecting, use ObservableObject
    // struct views are all-time rendering/destorying
    // while we make an action, @State Object keeps
    // those property in memory when view is destroyed
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    // if Framework model comforts Hashable, it will get hash id,
                    // easy but not readable define is id: \.self, self relation
                    // on every grid item (needs for click, delete...)
                    // Framework model also can comforts Identifiable, and defint
                    // id = UUID, and identifie self as "id: \.id", it's also
                    // unique identifier...
                    // it's also default definition, so it can be removed
                    ForEach(FrameworkDataSource.frameworks) { framework in
                        FrameworkGridItemView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailsView) {
                FrameworkDetailsView(framework: viewModel.selectedFramework!, isShowingDetailsView: $viewModel.isShowingDetailsView)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
