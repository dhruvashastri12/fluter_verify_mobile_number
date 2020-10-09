class ActivitiesLsitItemModel {

  
  final String title;
  
  final String subtitle1;
  
  final String subtitle2;
   
  final String subtitle3;

  final String percentage;

  ActivitiesLsitItemModel({this.title,this.subtitle1,this.subtitle2,this.subtitle3, this.percentage});

  static List<ActivitiesLsitItemModel> allCities()
  {
    var lstOfCities = new List<ActivitiesLsitItemModel>();

    lstOfCities.add(new ActivitiesLsitItemModel(title:"Clean Farm",subtitle1: "Sandesh Farm",subtitle2: "Monthly",subtitle3: "3/4 Machines", percentage: "75%"));
    // lstOfCities.add(new City(name:"London",country: "Britain",population: "8 mill",image: "london.png"));
    // lstOfCities.add(new City(name:"Vancouver",country: "Canada",population: "2.4 mill",image: "vancouver.png"));
    // lstOfCities.add(new City(name:"New York",country: "USA",population: "8.1 mill",image: "newyork.png"));
    // lstOfCities.add(new City(name:"Paris",country: "France",population: "2.2 mill",image: "paris.png"));
    // lstOfCities.add(new City(name:"Berlin",country: "Germany",population: "3.7 mill",image: "berlin.png"));
    return lstOfCities;
  }
}
