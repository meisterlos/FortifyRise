Kurumsal ağlarda muhtemelen karşılaşacağınız çok yaygın bir Windows güvenlik açığını ele aldım. Bu program ile yetkisiz bir kullanıcının nasıl admin haklarına sahip yeni bir kullanıcı oluşturabildiğini gösterdim.
Zafiyetten yararlanmak için ilk başta service.ps1 programını kullanıyoruz ve admin haklarına sahip kullanıcının istediğimiz bir adet servisi seçiyoruz ben örnek amaçlı lsass.exe servisini seçtim.

![1](https://github.com/meisterlos/FortifyRise/assets/81145753/2aa87db8-6372-477d-a7df-f136fa6d1588)

Saldırıya başlamadan önce admin haklarına saihp kullanıcılar ekrandadır.

![2](https://github.com/meisterlos/FortifyRise/assets/81145753/389b3fe7-62c7-44b5-88fb-057bb46275b6)

Saldırının ikinci aşaması için exploit.ps1 ve user.go programını kullanmamız gerekiyor. User.go programını malicious.exe olarak derledim ve programı çalıştırdığımda FatihBulbul adında kullanıcı oluşturduğunu görebiliyoruz.

![3](https://github.com/meisterlos/FortifyRise/assets/81145753/8106fe83-1ae2-4755-a1a5-ca291b0c1f10)

Cihaz üzerinde servis bölümüne baktığımızda ise Fatih adında bir adet servis oluşmuş bu oluşan servis sayesinde kullanıcı oluşturabildik.

![4](https://github.com/meisterlos/FortifyRise/assets/81145753/a426761a-ae84-4d73-be0d-9b7a4ec37ace)

FatihBulbul kullanıcısı admin haklarına sahip olduğu fotoğraflar aşağıdaki gibidir.

![5](https://github.com/meisterlos/FortifyRise/assets/81145753/e2c8dc73-1c32-46c2-ab27-d269cf6b0003)

![6](https://github.com/meisterlos/FortifyRise/assets/81145753/2b1d14ca-854f-4c7d-8ac5-b025b08bb82c)
