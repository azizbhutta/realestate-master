class Person {
  String id, name, photoUrl, description , time;
  Person(
      {required this.id,
        required this.name,
        required this.photoUrl,
        required this.description,
        required this.time});
}

class data{
  static final person = <Person>[
    Person(id: "1", name: "Jonathan", photoUrl: "https://1.vikiplatform.com/pr/25149pr/885b2cdfd8.jpg?x=b", description: "is following you", time: "8 mins ago"),
    Person(id: "2", name: "Diane", photoUrl: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiyMlDtD8Hj7njoNHMwottMK41tzbY5Y9FIgmJqVqH_hfE2fZFpl_GzwBDIN3lppKKZLv2BwN85mLUtflm_HTcOEZ3IkuyG0IbvKdIcO-wGK1aDpLkBdJiWzoLVgxYAfQOwLHntI2ln70OVF4IeNlcdpRsAUgMrTC6Vt8l_lUcm4uay0oNJtxAO04rt/s1080/47_Girl-DP-Sohohindi.in_.jpeg", description: "like your post" , time: "40 mins ago"),
    Person(id: "3", name: "Jack Sims", photoUrl: "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg", description: "Comment on your photo", time: "2 hrs ago"),
    Person(id: "3", name: "Susan", photoUrl: "https://media.istockphoto.com/id/518059980/photo/young-woman-using-smart-phone-on-the-beach.jpg?s=170667a&w=0&k=20&c=vte9UfYG729Z7XerNms9iqBF4W_9gaNjWHcbR6JkS3E=", description: "like your post", time: "50 mins ago"),
  ];
}


