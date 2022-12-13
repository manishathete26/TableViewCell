import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var starterItem : [String] = ["Chilly Panner","Masala Papad","Greay Manchurian","Crispy Corn","Chilly Chikan"]
    var snacksItem : [String] = ["Poha","Upma","Misal","PavBhaji","VadaPav"]
    
    
    
       @IBOutlet weak var LeftDetailCell: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LeftDetailCell.delegate = self
        LeftDetailCell.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = LeftDetailCell.self.dequeueReusableCell(withIdentifier: "cell")
        cell!.backgroundColor = .black
        cell?.textLabel?.textColor = .white
        cell?.detailTextLabel?.textColor = .white
        cell?.textLabel?.text = self.starterItem[indexPath.row]
        cell?.detailTextLabel?.text = self.snacksItem[indexPath.row]
        return cell!
    }
    
        func numberOfSections(in tableView: UITableView) -> Int{
              return 2
        }
        func  tableView(_ tableView: UITableView, titleForHeaderInSection: Int) -> String? {
            
            return "Header For Section 1"
        }
            
    
    
        func tableView(_ tableView:UITableView, titleForFooterInSection: Int) -> String?
        {
            return "Footer For Section 1"
            
        }
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 40.0
    }
    
    
    
    
    
}
