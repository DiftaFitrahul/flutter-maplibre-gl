import MapLibre
import UIKit


class SimpleBouncingView: MLNAnnotationView {
    
    override init(annotation: MLNAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        setupView()
        startBounce()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }
    
    private func setupView() {
        frame = CGRect(x: 0, y: 0, width: 19, height: 19)
        backgroundColor = .systemRed
        layer.cornerRadius = 9.5  // ✅ Half of 19
    }
    
    private func startBounce() {
        UIView.animate(
            withDuration: 0.8,
            delay: 0,
            options: [.repeat, .autoreverse, .curveEaseInOut]
        ) {
            self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }
    }
}