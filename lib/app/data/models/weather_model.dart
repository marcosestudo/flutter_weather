class WeatherModel {

  int id = 0;
  String main = "";
  String description = "";
  String icon = "";

  WeatherModel();

  WeatherModel.fromJson(Map<String, dynamic> json){
    id = json['weather'][0]['id'];
    main = json['weather'][0]['main'];
    description = json['weather'][0]['description'];
    icon = json['weather'][0]['icon'];
  }

  Map<String, dynamic> toJson() => {

  };
}
