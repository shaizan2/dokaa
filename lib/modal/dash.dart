
class Food {
    String? id;
    String? name;
    String? description;
    String? image;
    String? calories;
    String? sodium;
    String? fats;
    String? carbs;
    String? protein;

    Food({this.id, this.name, this.description, this.image, this.calories, this.sodium, this.fats, this.carbs, this.protein});

    Food.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        name = json["name"];
        description = json["description"];
        image = json["image"];
        calories = json["calories"];
        sodium = json["sodium"];
        fats = json["fats"];
        carbs = json["carbs"];
        protein = json["protein"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        _data["description"] = description;
        _data["image"] = image;
        _data["calories"] = calories;
        _data["sodium"] = sodium;
        _data["fats"] = fats;
        _data["carbs"] = carbs;
        _data["protein"] = protein;
        return _data;
    }
    static List <Food>offood(List Ofset){
      return Ofset.map((e)=>Food.fromJson(e)).toList();
    }
}