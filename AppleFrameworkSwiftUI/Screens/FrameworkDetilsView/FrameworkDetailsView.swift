import SwiftUI

struct FrameworkDetailsView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailsView: Bool
    @State var isShowingSafariView = false
    
    var body: some View {
            VStack {
                DismissButtonView(isShowingDetailsView: $isShowingDetailsView)
                
                Spacer()
                
                FrameworkGridItemView(framework: framework)
                
                Text(framework.description)
                    .font(.body)
                    .padding()
                
                Spacer()
                
                Button {
                    isShowingSafariView = true
                } label: {
                    ButtonTextView(title: "Learn More")
                }
                
                Spacer()
            }.fullScreenCover(isPresented: $isShowingSafariView) {
                SafariView(url: URL.init(string: framework.urlString)!)
            }
    }
}

struct FrameworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailsView(framework: FrameworkDataSource.sampleFramework, isShowingDetailsView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
