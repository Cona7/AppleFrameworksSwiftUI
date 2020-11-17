import SwiftUI

struct FrameworkGridItemView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


struct FrameworkGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridItemView(framework: FrameworkDataSource.sampleFramework)
    }
}
