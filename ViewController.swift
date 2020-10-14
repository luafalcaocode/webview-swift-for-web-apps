import UIKit;
import WebKit;

class ViewController : UIViewController, WKUIDelegate {
	var webView: WKWebView!
	
	override func loadView() {
		webView = WKWebView()
		webView.uiDelegate = self;
		view = webView;
	}
	
	override func viewDidLoad() {
		super.viewDidLoad();
		
		let url = URL(string: "https://app.starbucks.com")
		let request = URLRequest(url: url!)
		webView.load(request);
	}
}