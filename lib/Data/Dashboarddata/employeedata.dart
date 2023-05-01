class Employee{
  String name;
  String post;
  String email;
  String gross;
  String taxes;
  String netsalary;
  String status;
  String image;
  Employee({required this.name,required this.email,required this.gross,required this.netsalary,required this.post,required this.status,required this.taxes,required this.image});

}
List<Employee>emoployeelist=[
  Employee(name: "Jennny Wilson", email: "jennywilson@gmail.com", gross: "\$ 10,321.00", netsalary: "\$ 10,321.00", post: "Product Designer", status: "Paid", taxes: "- \$ 100.10",image: ""),
  Employee(name: "Jane Copper", email: "janecopper@gmail.com", gross: "\$ 10,821.13", netsalary: "\$ 10,821.13", post: " Data Analyst", status: "Pending", taxes: "- \$ 150.10",image: ""),
  Employee(name: "Tom Holland", email: "tomholland@gmail.com", gross: "\$ 5,600.00", netsalary: "\$ 5,600.00", post: "Jr.Data Analyst", status: "Paid", taxes: "- \$ 230.00",image: ""),
  Employee(name: "Chirs whale", email: "chirswale@gmail.com", gross: "\$ 15,871.00", netsalary: "\$ 15,871.00", post: "Developer", status: "Paid", taxes: "- \$ 540.60",image: ""),
  Employee(name: "Bob Franks", email: "bobfranks@gmail.com", gross: "\$ 11,321.00", netsalary: "\$ 11,321.00", post: "Android", status: "Pending", taxes: "- \$ 100.10",image: ""),

];