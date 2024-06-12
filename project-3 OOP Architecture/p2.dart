import 'dart:io';

class product{
  int pro_id;
  String pro_name;
  int pro_qty;
  double pro_price;

  product(this.pro_id,this.pro_name,this.pro_qty,this.pro_price);
}
class customer{
  int cust_id;
  String cust_name;
  String cust_contact;
  List<product> cart=[];

  customer(this.cust_id,this.cust_name,this.cust_contact);
}
void main()
{
  List<customer> customers=[];

    while(true)
    {
      print("1 for Enter customer:");
      print("2 for select product");
      print("3 for Search customer product");
      print("Enter choice:");
      int choice=int.parse(stdin.readLineSync()!);

      switch(choice)
      {
        case 1:
          stdout.write("Enter customer id:");
          int cid=int.parse(stdin.readLineSync()!);
          stdout.write("Enter customer name:");
          String cname=stdin.readLineSync()!;
          stdout.write("Enter customer contact:");
          String ccontact=stdin.readLineSync()!;
          customers.add(customer(cid,cname,ccontact));
          print("Customer Add Successfully...");
          break;
          
        case 2:
        stdout.write("Enter customer id:");
        int id=int.parse(stdin.readLineSync()!);
        customer? selectedCustomer;

        for (var customer in customers) {
          if (customer.cust_id==id) {
            selectedCustomer = customer;
            break;
          }
        }

        if (selectedCustomer == null) {
          print("Customer not found.");
        }
        else
        {
          stdout.write("Enter product id:");
          int pid=int.parse(stdin.readLineSync()!);
          stdout.write("Enter product name:");
          String pname=stdin.readLineSync()!;
          stdout.write("Enter product qty:");
          int pqty=int.parse(stdin.readLineSync()!);
          stdout.write("Enter product price:");
          double pprice=double.parse(stdin.readLineSync()!);
          selectedCustomer.cart.add(product(pid, pname, pqty, pprice));
          print("Product Add successfully...");
        }
        break;

      case 3:
        stdout.write("Enter customer id:");
        int searchid=int.parse(stdin.readLineSync()!);

        for (var customer in customers) 
        {
          if(customer.cust_id==searchid)
          {
            print("Customer id: ${customer.cust_id}");
            print("Customer name: ${customer.cust_name}");
            print("Customer contact: ${customer.cust_contact}");
          }
        double totalPrice=0;
        for (var product in customer.cart) {
          print("produt id: ${product.pro_id}");
          print("produt name: ${product.pro_name}");
          print("produt qty: ${product.pro_qty}");
          print("produt price: ${product.pro_price}");
          totalPrice+=product.pro_qty*product.pro_price;
        }
        
        double discount=0;
        if(totalPrice>=500 && totalPrice<=1500){
          discount=totalPrice*0.1;
        }
        else if(totalPrice>=1500 && totalPrice<=3500){
          discount=totalPrice*0.2;
        }
        else if(totalPrice>=3500 && totalPrice<=6500){
          discount=totalPrice*0.25;
        }
        else if(totalPrice<=6500){
          discount=totalPrice*0.3;
        }
        double finalprice=totalPrice-discount;
        print("Total Price: $totalPrice");
        print("Discount: $discount");
        print("Final Price: $finalprice");
        break;
        }
        default:
          print("Invalid data..");
          return;
      }
  }
}