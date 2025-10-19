
import UIKit
import PhotosUI


protocol AddBookDelegate: AnyObject {
    func didAddBook(_ book: Book)
}

final class AddBookViewController: UIViewController,
                                   UIImagePickerControllerDelegate,
                                   UINavigationControllerDelegate  {
    
    
    weak var delegate: AddBookDelegate?
    
    @IBOutlet weak var btn_KapakSec: UIButton!
    
    @IBOutlet weak var iv_Kapak: UIImageView!
    
    @IBOutlet weak var tf_KitapAdi: UITextField!
    
    @IBOutlet weak var tf_YazarAdi: UITextField!
    
    @IBOutlet weak var dp_Tarih: UIDatePicker!
    
    @IBOutlet weak var tv_alinti: UITextView!
    
    @IBOutlet weak var tv_Ozet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    
    func setupUI(){
        btn_KapakSec.layer.cornerRadius = 10
        btn_KapakSec.backgroundColor = .systemBlue
        btn_KapakSec.tintColor = .white
        btn_KapakSec.setTitle("Kapak Ekle", for: .normal)
        btn_KapakSec.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        
    
        
        
    }
    
    
    @IBAction func btnKapakEkle_TUI(_ sender: Any) {
        presentPhotoPicker()
        
        
    }
    private func presentPhotoPicker() {
        var config = PHPickerConfiguration()
        config.selectionLimit = 1           // sadece 1 fotoğraf
        config.filter = .images             // sadece görseller
        
        let picker = PHPickerViewController(configuration: config)
        picker.delegate = self
        present(picker, animated: true)
    }
    
    
    @IBAction func btn_KaydetTUI(_ sender: Any) {
        
        // 1️⃣ Boş alan kontrolü
        guard let title = tf_KitapAdi.text, !title.isEmpty,
              let author = tf_YazarAdi.text, !author.isEmpty else {
            let alert = UIAlertController(
                title: "Eksik Bilgi",
                message: "Lütfen kitap adı ve yazar adını giriniz.",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "Tamam", style: .default))
            present(alert, animated: true)
            return
        }
        
        // 2️⃣ Yeni kitap nesnesi oluştur
        let newBook = Book(
            title: title,
            author: author,
            date: dp_Tarih.date,
            coverName: nil,
            coverImage: iv_Kapak.image,
            quotes: tv_alinti.textColor == .systemGray3 ? nil : tv_alinti.text,
            summary: tv_Ozet.textColor == .systemGray3 ? nil : tv_Ozet.text
        )
        
        // 3️⃣ HomeViewController’a bildir
        delegate?.didAddBook(newBook)
        
        // 4️⃣ Başarı mesajı göster
        let successAlert = UIAlertController(
            title: "✅ Başarılı",
            message: "Kitap başarıyla eklendi!",
            preferredStyle: .alert
        )
        present(successAlert, animated: true)
        
        // 5️⃣ 1 saniye sonra alert kapanır ve geri döner
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            successAlert.dismiss(animated: true) {
                self.navigationController?.popViewController(animated: true)
            }
        }}
    

  

}
//GALERİ AÇMA
extension AddBookViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)

        guard let itemProvider = results.first?.itemProvider else { return }

        if itemProvider.canLoadObject(ofClass: UIImage.self) {
            itemProvider.loadObject(ofClass: UIImage.self) { [weak self] image, error in
                guard let self = self, let selectedImage = image as? UIImage else { return }
                DispatchQueue.main.async {
                    self.iv_Kapak.image = selectedImage
                }
            }
        }
    }
}
