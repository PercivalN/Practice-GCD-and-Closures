
import UIKit

class ViewController2: UIViewController {

	func fetchData(_ completionHandler: @escaping () -> Void) {
		DispatchQueue.global().async {
			let url = URL(string: "https://httpbin.org/delay/2")!
			_ = try! Data(contentsOf: url)
			DispatchQueue.main.async {
				completionHandler()
			}
		}
	}

	@IBAction func go(_ sender: Any) {

		title = "Starting"
		fetchData {
			self.title = "This is damn well DONE!!"
		}

//		// WE BLOCKED THE MAIN THREAD <-- We will now fix this
//		// Global is background thread
//		// URLSession is background thread
//		DispatchQueue.global().async {
//			let url = URL(string: "https://httpbin.org/delay/10")!
//			_ = try! Data(contentsOf: url)
//
//			// I AM USING THE UIKIT AND IT IS NOT THE MAIN THREAD111
//
//			// Perform all updates to your UI on your MAIN THREAD
//			DispatchQueue.main.async {
//				self.title = "Done"
//			}
//
//		}
	}
}
