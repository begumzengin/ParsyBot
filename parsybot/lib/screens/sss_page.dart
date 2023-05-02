import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parsybot/constants.dart';

class SssPage extends StatelessWidget {
  final List<Map<String, Object>> trFaq = [
    {
      "question": "Yurtlara istediğim saatlerde girebilir ve çıkabilir miyim? ",
      "ansIndex": 0,
    },
    {
      "question":
          "Yurtlara son giriş saati hafta içi 00:00, hafta sonu (Cuma, Cumartesi) ve genel tatil günlerinin gecesinde 01:30' dur. Yurtlarımıza saat 07:00' den itibaren giriş yapılabilmektedir. Not: Şehir dışından gelen öğrencilerimiz yurtlar müdürlüğünü bilgilendirerek birinci dereceden akrabaları ile geldiklerinde ya da yolculuklarını belgelendirdikleri taktirde bu saatler dışında da giriş yapabilirler.",
      "ansIndex": 1,
    },
    {
      "question": "Oda giriş kartımı kaybettiğimde ne yapmalıyım?",
      "ansIndex": 0,
    },
    {
      "question":
          "Durum yazılı bir şekilde yurtlar müdürlüğüne bildirilmelidir. Durumu bildirdiği taktirde bedeli depozitonuzdan kesilmek şartıyla yenisi tarafınıza verilir.",
      "ansIndex": 1,
    },
    {
      "question": "Resmî tatillerde kütüphaneye gidebilir miyim?",
      "ansIndex": 0,
    },
    {
      "question":
          "Ana kütüphanemiz resmî tatillerde hizmet vermemektedir. Fakat 7/24 açık olan çalışma salonumuz resmî tatillerde de açıktır.",
      "ansIndex": 1,
    },
    {
      "question":
          "Kütüphaneden ödünç bir kitap alabilmem için ne yapmam gerekir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Başkent Üniversitesi mensubu kullanıcılar üye olmak koşuluyla kütüphaneden ödünç materyal alabilmektedirler. Okuyucuların kitap ödünç alabilmeleri için üye olmaları zorunludur. Üyelerin, kütüphaneye kimlik kartı ile beraber gelmeleri gerekmektedir. Akademik personel 15 gün için 7 kitap, 1 easy kitap ve 2 adet cd-disket, dönemlik olarak 12 kitap, reserve kitaplardan 2 adet (1 ya da 2 günlük), DVD,video ve audio kasetlerden 7 gün 2 adet ve 2 adet ciltli süreli yayını, 3 adet notayı 15 gün için ödünç alabilirler. Öğrenciler 15 gün için 7 kitap, 1 easy kitap, 1 gün için 1 adet reserve kitap alabilirler. Yüksek Lisans ve doktora öğrencileri 30 gün için 10 kitap, 1 gün için 1 reserve kitap ve 15 gün için 1 adet ciltli süreli yayın ödünç alabilirler. İdari personel 15 gün süre ile 7 kitap, 1 reserve kitap (saatlik ya da 1 gün), 1 disket, 1 kompakt disk, 1 DVD alabilir. Üyeler, yalnız kendi üniversite kimlikleri ile kitap ödünç alabilirler. Başkasının kartı ile işlem yapılmaz.",
      "ansIndex": 1,
    },
    {
      "question": "Erasmus Başvuru Koşulları Nelerdir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Öğrencilerin; En az bir yıl lisans veya lisansüstü programlarına devam etmiş olmaları, Türk Ulusal Ajansı tarafından başvuru yılına ait yayımlanan “Uygulama El Kitabı” Öğrenci Hareketliliği genel not ortalaması koşulunu sağlaması gerekir. Program kapsamında alacakları dersler İngilizce ve dışında bir dilde verilmekte ise ilgili dili yeterli düzeyde bilmeleri veya öğrenmekte olduklarını belgelemeleri, Kayıtlı bulunduğu programın varsa öngördüğü diğer başvuru koşullarını sağlaması, Mevcut öğrenim kademesi içerisinde daha önce faaliyetlerden yararlanmışsa, yeni faaliyetle beraber toplam sürenin 12 ay’ı geçmemesi gerekir.",
      "ansIndex": 1,
    },
    {
      "question": "Erasmus başvuru işlemleri nasıl gerçekleşir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Öncelikle başvuru tarihleri ilan edilir. Öğrencinin e-mailine gelen link ile dil sınavı uygulanır. UİK tarafından öğrencilere yönelik tanıtım toplantıları yapılır. Ön başvuru formu öğrenci tarafından bilgisayarda doldurulur. Tercih formu, Üniversite Erasmus Komitesinin belirlediği koşullara göre doldurulur. Başvuru için gerekli belgeler ilgili dönemin ilan edilen son başvuru tarihine kadar Erasmus Bölüm Koordinatörlerine teslim edilir.",
      "ansIndex": 1,
    },
    {
      "question": "Farabi Öğrencisi olabilmek için ön şartlar nelerdir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Ön Lisans ve Lisans öğrenci olunması durumunda ilk yılın tamamlamış olması ve genel not ortalamasının en az 2.00/4.00 olması; Y.lisans ve doktora öğrencisi olunması durumunda da ilk yarıyılın tamamlanmış olması (Hazırlık ve Bilimsel Hazırlık dönemlerinde başvuruda bulunulamaz.) ve genel not ortalamasının en az 2.50/4.00 olması gerekmektedir. Sonuç olarak değişim 2. sınıfta başlamaktadır.",
      "ansIndex": 1,
    },
    {
      "question":
          "Farabi Programı’na ilk başvuruda hangi belgeler ve ne gibi işlemler gerekir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Başvuru için üniversitenin ilan ettiği başvuru tarihlerinde gerekli belgeleri kayıtlı olduğun üniversitenin Farabi Kurum Koordinatörlüğüne teslim etmen yeterlidir. Bu belgeler; Aday öğrenci başvuru formu ( 2 adet), not çizelgesi/transkript (2 adet), yabancı dil muafiyet belgesi (zorunlu yabancı dil programı uygulayan bölüm/program için kendi  kurumlarından alacakları muafiyet belgesi)",
      "ansIndex": 1,
    },
    {
      "question": "Okulun ring servisleri var mı?",
      "ansIndex": 0,
    },
    {
      "question":
          "2022-2023 eğitim öğretim döneminde Üniversitemizin semt servisleri ile Sıhhiye Tunus ring servisleri devam etmektedir.",
      "ansIndex": 1,
    },
    {
      "question": "Başarı bursu kimlere verilir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Akademik yıl ortalamalarına göre Tıp Fakültesi ve Diş Hekimliği Fakültesi programlarında 92 ve üzeri, Diğer lisans programlarında 3,50 ve üzeri, Lisansüstü programlarında 3,90 ve üzeri ortalamaya sahip kişilere verilir.",
      "ansIndex": 1,
    },
    {
      "question": "Kardeş bursu nedir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Başkent Üniversitesinde öğrenim görmekte olan kardeşlerden birine öğrenim ücretinin %10’u oranında destek bursu verilir. Kardeş bursundan yararlanan öğrencinin başarısız olması durumunda burs diğer kardeşe aktarılır. Burs aktarılan kardeşin normal eğitim-öğretim süresini tamamlamamış olması ve genel not ortalamasının en az 2,00 olması gerekmektedir.",
      "ansIndex": 1,
    },
    {
      "question": "Mezuniyet koşulu nedir? / Diploma verilme şartı nedir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Aşağıdaki koşulları yerine getiren öğrenci, öğrenimini tamamlamış ve mezuniyet diplomasını ve diploma ekini almaya hak kazanmış sayılır. Kayıtlı olduğu programın tüm derslerini başarmış ve diğer yükümlülüklerini yerine getirmiş olmak, Program dışı seçmeli dersler dışında tüm derslerden en az “D” notu almış olmak, Önlisans programları için en az 120, lisans programları için en az 240, eğitim süresi beş yıl olan programlar için en az 300 AKTS’yi tamamlamış olmak, En az 2,00 GNO’ya sahip olmak. ",
      "ansIndex": 1,
    },
    {
      "question": "AKTS nedir?",
      "ansIndex": 0,
    },
    {
      "question":
          "Avrupa Kredi Transfer Sistemi’dir. Üniversitelerde uygulanan bir kredi sistemidir.",
      "ansIndex": 1,
    },
    {
      "question": "Topluluklara nasıl üye olabilirim?",
      "ansIndex": 0,
    },
    {
      "question":
          "Sosyal Amaçlı Topluluklar için, Web sayfasındaki (https://kultur.baskent.edu.tr/kw/menu_icerik.php?birim=9987&menu_id=15  ) formlar kısmında bulunan “Üye Kayıt Formu” nun eksiksiz doldurulup çıktısı alınarak ve imzalı olarak Kültür Hizmetleri Müdürlüğü sekreterliğine teslim edilmesi yeterlidir. Üye kayıt formu doldurulduktan kısa bir süre sonra ilgili topluluk yönetim kurulları tarafından öğrencilere dönüş yapılacaktır. Meslek Amaçlı Topluluklar için ise, topluluk yönetim kuruluna, akademik danışmanına veya ilgili bölüm sekreterliğine başvuru yapılır.",
      "ansIndex": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sık Sorulan Sorular',
        ),
        elevation: 0,
        backgroundColor: sanMarino,
      ),
      backgroundColor: lightBackground,
      body: ListView.builder(
        itemCount: trFaq.length,
        itemBuilder: (context, index) {
          final question = trFaq[index]['question'];
          final ansIndex = trFaq[index]['ansIndex'];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: ansIndex == 0 ? 'S: ' : 'C: ',
                    style: GoogleFonts.mulish(
                        fontWeight:
                            ansIndex == 0 ? FontWeight.bold : FontWeight.normal,
                        fontSize: 16,
                        color: pickledBluewood),
                  ),
                  TextSpan(
                      text: question.toString(),
                      style: GoogleFonts.mulish(
                          fontWeight: ansIndex == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                          fontSize: 16,
                          color: pickledBluewood)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
