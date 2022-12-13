import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
        @IBOutlet weak var rightDetailCell: UITableView!
    
    var starterItem : [String] = ["Chilly Panner","Masala Papad","Greay Manchurian","Crispy Corn","Chilly Chikan"]
    var snacksItem : [String] = ["Poha","Upma","Misal","PavBhaji","VadaPav"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightDetailCell.delegate = self
        rightDetailCell.dataSource = self
    }
       
            
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.snacksItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = rightDetailCell.self.dequeueReusableCell(withIdentifier: "cell")
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
    
    
    
    
}


