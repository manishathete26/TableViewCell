import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var BasicCell: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BasicCell.delegate = self
        BasicCell.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = BasicCell.self.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel!.text = "Shubhangi"
        cell?.textLabel?.textColor = .white
        cell?.backgroundColor = .black
        return cell!
        
        
        
        
    
    

   

}
}
