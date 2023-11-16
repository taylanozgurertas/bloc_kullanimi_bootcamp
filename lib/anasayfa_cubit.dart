import 'package:bloc_kullanimi_bootcamp/anasayfa.dart';
import 'package:bloc_kullanimi_bootcamp/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {  //repository ile cubit kullanımı (iyidir hoştur)
  AnasayfaCubit():super(0);
  var mrepo = MatematikRepository(); //repository e erişeceğimiz nesne

  void topla(String alinanSayi1, String alinanSayi2){
    int toplam = mrepo.topla(alinanSayi1, alinanSayi2);
    emit(toplam);
  }

  void carp(String alinanSayi1, String alinanSayi2){
    int carpma = mrepo.carp(alinanSayi1, alinanSayi2);
    emit(carpma);
  }

}



/*
vanilla kullanım cubit


import 'package:bloc_kullanimi_bootcamp/anasayfa.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> { //Cubit bloctan gelen bir şey int değeri yöneteceğimizi söylüyoruz
  AnasayfaCubit():super(0); //varsayılan değer, ilk açıldığı zaman 0 olsun demiş oluyoruz

  void topla(String alinanSayi1, String alinanSayi2){ //cubit icerisinde fonksiyon turumuz returnlu olmaz. cunku buna gerek yok bu teknolojide.
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int toplam = sayi1+sayi2;
    emit(toplam); //tetikleme veya veri gönderme diye düşün. bu yapı nerede dinleniyorsa sadece orası yenilenecek butun sayfa setstate olmayacak yani
  }

  void carp(String alinanSayi1, String alinanSayi2){
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int carpma = sayi1*sayi2;
    emit(carpma); //tetikleme veya veri gönderme diye düşün
  }

}
 */