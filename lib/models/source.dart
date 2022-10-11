class Source {
  final String? id;
  final String  name ;

  Source(this.id, this.name);
    Source.fromJson(Map<String , Object?>json)
    :this(
      json['id'] as String?  ,
      json['name']! as String
    );
}