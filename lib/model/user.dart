class User {
  final String imageUrl;
  final String title;
  final String description;
  final String storyText;

  User(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.storyText});

  factory User.fakeITem() {
    return User(
        imageUrl: "https://picsum.photos/536/354",
        title: "Xreath",
        description: "Description",
        storyText:
            """metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune
             kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerde
             n beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunc
             a varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıç
             ramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker""");
  }
}
