class Todo {
    String description;
    bool done;
    int id;

    Todo({this.description, this.done, this.id});

    factory Todo.fromJson(Map<String, dynamic> json) {
        return Todo(
            description: json['description'], 
            done: json['done'], 
            id: json['id'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['description'] = this.description;
        data['done'] = this.done;
        data['id'] = this.id;
        return data;
    }

    @override
  String toString() {
    // TODO: implement toString
    return description;
  }
}