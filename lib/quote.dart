class Quote {
  String text;
  String author;

  // normal constructor, as we've already seen
  // Quote(String text, String author){
  //   this.text = text;
  //   this.author = author;
  // }
  // usage:
  // Quote('Lorem Ipsum', 'Someone');

  // constructor with named parameters
  // Quote({ String author, String text }){
  //   this.text = text;
  //   this.author = author;
  // }
  // usage:
  // Quote(text: 'Lorem Ipsum', author: 'Someone');

  // constructor with named parameters
  // & automatically assigns named arguments to class properties
  Quote({this.text, this.author});
  // usage:
  // Quote(text: 'Lorem Ipsum', author: 'Someone');
}
