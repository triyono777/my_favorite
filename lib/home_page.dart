import 'package:flutter/material.dart';
import 'package:my_favorite/item_model.dart';
import 'package:my_favorite/kategori_page.dart';

class HomePage extends StatefulWidget {
  final String nama;

  const HomePage({Key key, this.nama}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemModel> listSAO = <ItemModel>[
    ItemModel(
      judul: 'Kirito',
      deskripsi: 'Kazuto Kirigaya (桐ヶ谷 和人 Kirigaya Kazuto) adalah seorang karakter fiksi dan tokoh protagonis utama dari seri novel ringan Sword Art Online yang ditulis oleh Reki Kawahara. Ia lebih dikenal dengan singkatan Kirito (キリト Kirito), nama pemain yang digunakannya dalam permainan video SAO yang menjadi latar untuk novelnya. Dalam seri ini, Kirito digambarkan sebagai seorang remaja yang dipilih sebagai salah satu dari 1.000 beta tester (penguji coba tahap beta) untuk permainan realitas virtual MMORPG berteknologi tinggi yang dikenal dengan nama Sword Art Online. Setelah permainan tersebut dirilis untuk masyarakat umum, dirinya dan sekitar 10.000 pemain lain menyadari bahwa mereka tidak bisa keluar dari permainan dan terjebak di sana, kecuali jika mereka berhasil menyelesaikan permainan tersebut.',
      imageurl: 'https://upload.wikimedia.org/wikipedia/id/9/90/Kirito_Sword_Art_Online.png',
    ),
    ItemModel(judul: 'Asuna', deskripsi: 'Asuna Yuuki (結城 明日奈 Yūki Asuna) adalah karakter fiktif yang muncul dalam seri novel Sword Art Online karya Reki Kawahara. Dia secara monosa lebih dikenal sebagai Asuna (アスナ Asuna), nama pemain-nya dalam video game eponim yang novelnya diatur. Asuna muncul sebagai kekasih Kirito; serta pemeran utama wanita, ia berada di dalam novel seorang sub-pemimpin guild Knights of the Blood Oath (血盟騎士団 Ketsumei Kishidan), terkenal sebagai guild terkuat di Aincrad. Dia digambarkan telah mendapatkan reputasi sebagai pemain yang terampil dalam game, memberinya nama panggilan Flash (閃光 Senkō), ditambah dengan daya tarik fisiknya, telah membuatnya terkenal dan dicari oleh pemain lain.', imageurl: 'https://upload.wikimedia.org/wikipedia/id/a/a2/Asuna_Sword_Art_Online.png'),
    ItemModel(judul: 'Leafa', deskripsi: 'Suguha Kirigaya (桐ヶ谷 直葉 Kirigaya Suguha) adalah karakter fiktif yang muncul dalam serial novel Sword Art Online karya Reki Kawahara. Dia lebih dikenal sebagai Leafa (リーファ Rīfa), nama pemainnya dalam MMORPG virtual reality Alfheim Online fiksi di mana novel-novel ini sebagian diatur. Di dunia nyata, Suguha adalah sepupu dan adik angkat dari protagonis seri Kazuto (Kirito); setelah Kirito terperangkap dalam game video Sword Art Online yang eponymous dalam seri arc cerita pertama, dia mulai bermain Alfheim Online karena sifatnya yang mirip untuk lebih memahami dunia di mana kakaknya dipenjara. Setelah ibunya mengungkapkan padanya bahwa Kazuto bukan saudara kandungnya, Suguha mulai mengembangkan perasaan romantis ke arahnya, meskipun kemudian sedih setelah menyadari keterikatannya dengan Asuna.', imageurl: 'https://upload.wikimedia.org/wikipedia/id/7/74/Leafa_Sword_Art_Online.png'),
  ];

  List<ItemModel> listNaruto = <ItemModel>[
    ItemModel(
      judul: 'Tsunade',
      deskripsi: 'Tsunade Senju (千手綱手 Senju Tsunade) yang bergelar Godaime Hokage (五代目火影 Hokage Kelima) adalah tokoh fiktif dalam serial manga dan anime Naruto. Ia adalah cucu dari Hashirama Senju, dan kunoichi dari tiga sennin legendaris dan sekarang dikenal sebagai Hokage kelima. Tsunade adalah seorang ninja medis dan juga "penjinak siput". Perlu diketahui bahwa Tsunade adalah Hokage wanita pertama di dunia Naruto.',
      imageurl: 'https://upload.wikimedia.org/wikipedia/id/9/9c/Tsunade.png',
    ),
    ItemModel(
      judul: 'Naruto',
      deskripsi: 'Naruto Uzumaki (うずまき ナルト Uzumaki Naruto) adalah tokoh fiktif dari serial anime dan manga Naruto. Ia merupakan tokoh utama dalam serial ini. Ia digambarkan sebagai bocah berambut pirang dan bermata biru. Di pipinya ada semacam guratan yang mirip seperti kumis milik karakter Doraemon dalam manga Doraemon. Ia sering terlihat memakai jaket dan celana panjang berwarna jingga. Di dahinya ada ikat kepala berwarna biru dengan lambang desa kelahirannya.',
      imageurl: 'https://upload.wikimedia.org/wikipedia/id/3/36/Naruto_Uzumaki.png',

    ),
    ItemModel(
      judul: 'Kakashi',
      deskripsi: 'Kakashi dicirikan dengan mata yang sayu, rambut yang berwarna putih, mata kirinya ditutupi pelindung kepala Konoha, dan selalu membawa buku novel dewasa "Icha-Icha Paradise" yang merupakan karya Jiraiya. Menurut Sakura, Kakashi ini selalu memasang wajah tidak bersemangat sehingga ia terlihat tidak memiliki wibawa. Tapi anehnya ada seorang pengawas ujian chuunin yang menyukainya, ialah Anko Mitarashi.',
      imageurl: 'https://upload.wikimedia.org/wikipedia/id/2/27/Kakashi_Hatake.png',
    ),
  ];
  List<ItemModel> listOnePiece = <ItemModel>[
    ItemModel(
      judul: 'Luffy',
      deskripsi: 'Monkey D. "Straw Hat"[n 1] Luffy (/ˈluːfi/ LOO-fee) (Japanese: モンキー・D・ルフィ, Hepburn: Monkī Dī Rufi, [ɾɯɸiː]) is a fictional character and the main protagonist of the One Piece manga series, created by Eiichiro Oda. Luffy made his debut in One Piece Chapter #1 as a young boy who acquires the properties of rubber after accidentally eating the supernatural Gum-Gum Fruit.',
      imageurl: 'https://upload.wikimedia.org/wikipedia/en/c/cb/Monkey_D_Luffy.png',
    ),
    ItemModel(judul: 'Zoro', deskripsi: "In the story, Zoro is the first to join Monkey D. Luffy after he is saved from being executed at the Marine Base. He is the crew's combatant, and one of the two swordsmen of the Straw Hat Pirates, the other being Brook. As a native to the East Blue, he came from the town known as Shimotsuki, where he trained in a dojo and learned the one and two-sword styles (ittōryū and nitōryū). Zoro is uniquely known as an expert of Santōryū (Three Sword Style), where he wields a third sword with his mouth in combat. Throughout the series, his primary sword is Wado Ichimonji, a sword that he inherited from a childhood friend, and is frequently the sword that he wields in his mouth.", imageurl: 'https://upload.wikimedia.org/wikipedia/en/a/a4/Roronoa_Zoro.jpg'),
    ItemModel(judul: 'Nami', deskripsi: "In the series, Nami is the Straw Hat Pirates' navigator, who dreams of drawing a map of the entire world. Despite her initial distrust of pirates, Nami eventually changes her mind after being around Luffy and the rest of the crew. Nami is depicted as an intelligent girl, who has an obsession of obtaining money. She is able to use her three-sectioned staff and use her climate skills to create powerful attacks; the most prominent of these staff weapons is the Clima-Tact, in which she manipulates the climate to create weather-based attacks.", imageurl: 'https://upload.wikimedia.org/wikipedia/en/f/f8/Nami_face.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 1, child: SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Hai, '),
                      Text(
                        '${widget.nama}',
                        style: TextStyle(fontSize: 25),
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('Silahkan Pilih Anime '),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView(
                children: [
                  TemplateCard(
                    judul: 'Sword Art Online',
                    jumlah: listSAO.length,
                    warna: Colors.red,
                    listItem: listSAO,

                  ),
                  TemplateCard(
                    judul: 'Naruto',
                    jumlah: listNaruto.length,
                    warna: Colors.green,
                    listItem: listNaruto,
                  ),
                  TemplateCard(
                    judul: 'One Piece',
                    jumlah: listOnePiece.length,
                    warna: Colors.purple,
                    listItem: listOnePiece,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TemplateCard extends StatelessWidget {
  final String judul;
  final int jumlah;
  final Color warna;
  final List<ItemModel> listItem;

  const TemplateCard({
    Key key,
    this.judul = 'judul',
    this.jumlah,
    this.warna = Colors.red,
    this.listItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => KategoriPage(
                    kategori: judul,
                    listItem: listItem,
                warna: warna,
                  )));
        },
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [warna.withOpacity(0.5), warna])),
          child: ListTile(
            title: Text(
              '$judul',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            subtitle: Text('$jumlah Items'),
          ),
        ),
      ),
    );
  }
}
