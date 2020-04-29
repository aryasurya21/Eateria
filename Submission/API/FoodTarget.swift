//
//  FoodTarget.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

public class FoodTarget {
    static let instance = FoodTarget()
    private init(){}
    private var foodData: [[String: String]] = [
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng, dengan telur yang enak sekali dimakan ketika panas, dapat ditambahkan beberapa topping juga seperti telur, sosis, ayam, dll. Nasi goreng merupakan pilihan yang pas jika anda ingin makan sesuatu yang enak dengan cepat.",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "https://cdns.klimg.com/merdeka.com/i/w/news/2017/09/06/883756/content_images/670x335/20191201201534-1-ilustrasi-nasi-goreng-004-tantri-setyorini.jpg"
        ],
        [
            "foodName": "Nasi Padang",
            "foodDesc": "Nasi Padang adalah nasi putih yang disajikan dengan berbagai macam lauk pauk khas Indonesia. Padang merujuk pada ibu kota provinsi Sumatra Barat, kampung halaman orang Minangkabau. Nasi Padang adalah sebuah hidangan yang disajikan secara lengkap secara prasmanan dengan daging, ikan, sayuran, dan makanan pedas dimakan dengan nasi putih, itu adalah komoditas ekspor paling terkenal dan masyarakat minangkabau mempunyai kontribusi yang besar untuk masakan Indonesia",
            "foodPrice": "Rp. 25.000",
            "foodRating": "4.7/5",
            "foodImage": "https://cdn.idntimes.com/content-images/post/20191106/padang-9707dce199e776ddf10a449c973deab9_600x400.jpg"
        ],
        [
            "foodName": "Indomie Goreng",
            "foodDesc": "Indomie Mi Goreng merupakan salah satu tipe mi instan yang dibuat dengan merek Indomie oleh perusahaan Indofood, penghasil mi instan terbesar di dunia yang terletak di Indonesia. Mi instan ini seakan makanan pokok bagi siapapun yang pendapatannya kecil dan sudah menjadi makanan favorit di Australia, Asia dan negara-negara Eropa.",
            "foodPrice": "Rp. 7.000",
            "foodRating": "5/5",
            "foodImage": "https://cdn0-production-images-kly.akamaized.net/ZRydGFEA6M2KwFUiZQti1bCkUSQ=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2964333/original/040327100_1573470874-15876789_791554644317395_266044254432788480_n.jpg"
        ],
        [
            "foodName": "Soto Medan",
            "foodDesc": "Soto Medan menpunyai rasa gurih dari santan yang gurih dan manis. Ditambah aneka pelengkap lainnya, membuat soto Medan terasa nikmat dengan aroma rempah-rempah yang sangat terasa nikmat saat disantap dalam keadaan hangat.",
            "foodPrice": "Rp. 15.000",
            "foodRating": "4.4/5",
            "foodImage": "https://bizweb.co.id/wp-content/uploads/b1152dffb3f33ebe43e697fb6d9b5df6.jpg"
        ],
        [
            "foodName": "Mie Ayam",
            "foodDesc": "Mie ayam atau bakmi ayam adalah masakan Indonesia yang terbuat dari mi kuning direbus mendidih kemudian ditaburi saus kecap khusus beserta daging ayam dan sayuran. Mi Ayam terkadang ditambahi dengan bakso, pangsit dan jamur.",
            "foodPrice": "Rp. 12.000",
            "foodRating": "4/5",
            "foodImage": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Mi_ayam_biasa.JPG/480px-Mi_ayam_biasa.JPG"
        ],
        [
            "foodName": "Mie Sop Medan",
            "foodDesc": "Makanan khas Medan yang legendaris ini jadi destinasi kulineran yang sulit untuk ditolak. Kuliner yang sekilas nampak seperti bakso ini punya isian yang sedikit berbeda dari sop biasanya. Buat yang belum tau, mie sop terdiri dari mie, bihun, risol, daging ayam dan daging sate yang jadi ciri khas mie sop Medan. Soal rasa, Mie Sop terkenal kelezatannya.",
            "foodPrice": "Rp. 15.000",
            "foodRating": "5/5",
            "foodImage": "https://cdn.akurat.co/images/uploads/images/akurat_20181114052016_C9eNX5.jpg"
        ],
        [
            "foodName": "Nasi Lemak",
            "foodDesc": "Nasi lemak adalah jenis makanan khas suku Melayu yang biasanya dihidangkan dengan telur (yang direbus, digoreng mata sapi, atau didadar), irisan mentimun, ikan bilis atau teri goreng, dan sambal, cabai. Tetapi kini nasi lemak dijual dengan berbagai lauk-pauk seperti tempe, tahu, petai, kacang tanah goreng, kacang panjang, sate, daging, ayam, sotong, cumi-cumi, udang, kerang, ikan, limpa, dan ataupun hati sapi, yang juga sering disertai juga dengan parutan kelapa.",
            "foodPrice": "Rp. 10.000",
            "foodRating": "4/8/5",
            "foodImage": "https://doyanresep.com/wp-content/uploads/2020/02/resep-nasi-lemak.jpg"
        ],
        [
            "foodName": "Gudeg",
            "foodDesc": "Gudeg adalah makanan khas Yogyakarta dan Jawa Tengah yang terbuat dari nangka muda yang dimasak dengan santan. Perlu waktu berjam-jam untuk membuat masakan ini. Warna coklat biasanya dihasilkan oleh daun jati yang dimasak bersamaan. Gudeg dimakan dengan nasi dan disajikan dengan kuah santan kental (areh), ayam kampung, telur, tempe, tahu dan sambal goreng krecek.",
            "foodPrice": "Rp. 8.000",
            "foodRating": "4.5/5",
            "foodImage": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Nasi_Gudeg.jpg/440px-Nasi_Gudeg.jpg"
        ],
        [
            "foodName": "Ramen",
            "foodDesc": "Ramen (拉麺;ラーメン) adalah masakan mi kuah Jepang yang berasal dari China. Dimana rebusan mi hasil buatan tangan atau buatan mesin diceburkan ke dalam sebuah mangkuk berisi kuah yang dibuat dari berbagai jenis kaldu (umumnya dengan dasar kaldu babi). Pada umumnya chasiu, menma, dan irisan daun bawang ditambahkan di atas mi sebagai lauk atau penyedap.",
            "foodPrice": "Rp. 30.000",
            "foodRating": "5/5",
            "foodImage": "https://showmetheyummy.com/wp-content/uploads/2017/09/Slow-Cooker-Ramen-Noodles-Show-Me-the-Yummy-6@2x.jpg"
        ],
        [
            "foodName": "Udon",
            "foodDesc": "Udon (うどん,饂飩) adalah salah satu jenis mi yang sudah dikenal di Jepang sejak dulu, dibuat dari tepung terigu dan berbentuk tebal serta agak lebar.",
            "foodPrice": "Rp. 30.000",
            "foodRating": "4.9/5",
            "foodImage": "https://www.justonecookbook.com/wp-content/uploads/2015/11/Niku-Udon-500x400.jpg"
        ],
        [
            "foodName": "Nasi Hainam",
            "foodDesc": "Nasi ayam Hainam (Hanzi: 文昌雞, hanyu pinyin: wénchāngjī) merupakan masakan Tionghoa yang sering dikaitkan dengan masakan Malaysia atau Singapura, dan juga ditemui di negara tetangga Thailand, serta juga di wilayah Hainan, China.",
            "foodPrice": "Rp. 26.000",
            "foodRating": "5/5",
            "foodImage": "https://assets-pergikuliner.com/cYJ9WwEqn22F3X9kFJ8wTQjIHBU=/385x290/smart/https://assets-pergikuliner.com/uploads/image/picture/807943/picture-1516858325.jpg"
        ],
        [
            "foodName": "Mie Sagu",
            "foodDesc": "Mie sagu adalah kuliner selingan makanan khas masyarakat di Riau khususnya masyarakat Selat panjang, di Pulau Tebing Tinggi dan sekitarnya, Kab. Kepulauan Meranti (pecahan Kab. Bengkalis), Provinsi Riau, Indonesia. Ciri khas dari Mie Sagu buatan masyarakat Selatpanjang dan sekitarnya, terletak pada adanya tambahan ikan bilis (teri), tauge dan potongan daun kucai. Mie Sagu memiliki kenyalan yang berbeda dari mie-mie yang berbahan dasar terigu .",
            "foodPrice": "Rp. 15.000",
            "foodRating": "4.3/5",
            "foodImage": "https://img-global.cpcdn.com/recipes/e6590f3977fb7d0c/751x532cq70/mie-sagu-goreng-foto-resep-utama.jpg"
        ]
    ]
    
    public func getFoodList() -> [[String: String]] {
        return self.foodData
    }
}




