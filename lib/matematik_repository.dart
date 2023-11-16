class MatematikRepository{
  //cubitteki fonksiyonları repositoryde çalıştırmamız daha iyi olur. ancak emit kullanılmaz böyle olduğunda ve
  //fonksiyonlar returnlu olur

  int topla(String alinanSayi1, String alinanSayi2){ //cubit icerisinde fonksiyon turumuz returnlu olmaz. cunku buna gerek yok bu teknolojide.
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int toplam = sayi1+sayi2;
    return(toplam); //tetikleme veya veri gönderme diye düşün. bu yapı nerede dinleniyorsa sadece orası yenilenecek butun sayfa setstate olmayacak yani
  }

  int carp(String alinanSayi1, String alinanSayi2){
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int carpma = sayi1*sayi2;
    return(carpma); //tetikleme veya veri gönderme diye düşün
  }

}