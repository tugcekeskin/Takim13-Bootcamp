import 'package:aboneliksayfasi/model/abonelikler_model.dart';
import 'package:aboneliksayfasi/model/veritabani_kopyalama.dart';



class AboneliklerDatabase{

  Future<List<Abonelikler>> tumAbonelikler() async {
     var db = await VeritabaniYardimcisi.veritabaniErisim();

     List<Map<String,dynamic>> maps = await db.rawQuery("SELECT * FROM abonelikler");

     return List.generate(maps.length, (i){
        var metin = maps[i];
        return Abonelikler(metin["abonelik_id"], metin["abonelik_ad"], metin["baslangic_tarihi"], metin["abonelik_ucreti"]);
     });
  }

  Future<void> AbonelikEkle(String abonelik_ad, String baslangic_tarihi, String abonelik_ucreti) async {
     var db = await VeritabaniYardimcisi.veritabaniErisim();
      
     var ekleme = Map<String,dynamic>();
     ekleme["abonelik_ad"] = abonelik_ad;
     ekleme["baslangic_tarihi"] = baslangic_tarihi;
     ekleme["abonelik_ucreti"] = abonelik_ucreti;

     await db.insert("abonelikler", ekleme);
     
  }

  Future<void> kisiSil(int abonelik_id) async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    await db.delete("abonelikler", where: "abonelik_id = ?", whereArgs: [abonelik_id]);
  } 

}