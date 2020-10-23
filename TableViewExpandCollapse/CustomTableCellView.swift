import UIKit

final class CustomTableCellView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let title = UILabel()
    
    func setUI(with string: String) {
        title.text = string
    }
    
    func commonInit() {
        addSubview(title)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        title.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 10).isActive = true
    }
}

final class CustomTableDetailView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let title = UILabel()
    private let imageView = UIImageView()

    func setUI(with string: String, image: UIImage) {
        title.text = "Detail View for Cell \(string)"
        imageView.image = image
    }
    
    func commonInit() {
        addSubview(title)
        addSubview(imageView)
        
        imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        title.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        imageView.trailingAnchor.constraint(equalTo: title.leadingAnchor, constant: -10).isActive = true
        
        title.leadingAnchor.constraint(equalTo: title.trailingAnchor, constant: 10).isActive = true
        title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 10).isActive = true
        title.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
