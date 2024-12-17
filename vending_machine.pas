program Pending_mecin;
uses crt;

var
  harga : array[1..10] of integer; //variabel dan array 
  stock : array[1..10] of integer;
  pilih, uang, kembalian: longint;
  lagi:string;

procedure inisialisasi_item; //subprogram untuk inisialisasi harga barang dan jumlah stock barang
begin
  harga[1] := 5000; stock[1] := 10;
  harga[2] := 10000; stock[2] := 5;
  harga[3] := 15000; stock[3] := 8;
  harga[4] := 20000; stock[4] := 12;
  harga[5] := 25000; stock[5] := 7;
  harga[6] := 5000; stock[6] := 70;
  harga[7] := 3500; stock[7] := 4;
  harga[8] := 2000; stock[8] := 100;
  harga[9] := 10000; stock[9] := 15;
  harga[10] := 30000; stock[10] := 6;
end;

procedure nampilin_item; //subprogram untuk menampilkan barang atau produk yang tersedia
begin
  writeln('Daftar Produk Tersedia:');
  writeln('1. Air Mineral - Rp', harga[1], ' (Stok: ', stock[1], ')');
  writeln('2. Minuman Soda - Rp', harga[2], ' (Stok: ', stock[2], ')');
  writeln('3. Jus Buah - Rp', harga[3], ' (Stok: ', stock[3], ')');
  writeln('4. Kopi - Rp', harga[4], ' (Stok: ', stock[4], ')');
  writeln('5. Cokelat - Rp', harga[5], ' (Stok: ', stock[5], ')');
  writeln('6. Mie Instan - Rp', harga[6], ' (Stok: ', stock[6], ')');
  writeln('7. Pizza - Rp', harga[7], ' (Stok: ', stock[7], ')');
  writeln('8. Permen - Rp', harga[8], ' (Stok: ', stock[8], ')');
  writeln('9. Makaroni - Rp', harga[9], ' (Stok: ', stock[9], ')');
  writeln('10. Burger - Rp', harga[10], ' (Stok: ', stock[10], ')');
end;

procedure kasir(harga: integer; var stock: integer); //subprogram kasir untuk melakukan perhitungan dan pengecekan apakah barang yang dibeli tersedia
begin
  if stock > 0 then //jika stock barang lebih dari 0, program akan berlanjut melakukan perhitungan
  begin
    writeln('Harga: Rp', harga);
    writeln('Masukkan uang Anda:');
    readln(uang);
    if uang >= harga then //melakukan perhitungan, kemudian langsung menampilkan kembalian dan sisa stock
    begin
      kembalian := uang - harga;
      writeln('Pembayaran berhasil. Kembalian Anda: Rp', kembalian);
      stock := stock - 1;
      writeln('Sisa stok: ', stock);
    end
    else
      writeln('Uang Anda tidak cukup. Pembelian dibatalkan.'); //jika uang < harga
  end
  else
    writeln('Maaf, stok habis.'); //jika stock < 0
end;

begin
  inisialisasi_item; //memulai subprogram inisialisasi_item
repeat //melakukan perulangan
  clrscr;
  writeln('Selamat datang di mesin penjual otomatis');
  nampilin_item; //memulai subprogram nampilin_item
  write('Masukkan nomor produk yang ingin Anda beli:');
  readln(pilih);

  case pilih of //operasi kondisi jika user memasukkan nilai 1-10
    1: kasir(harga[1], stock[1]);
    2: kasir(harga[2], stock[2]);
    3: kasir(harga[3], stock[3]);
    4: kasir(harga[4], stock[4]);
    5: kasir(harga[5], stock[5]);
    6: kasir(harga[6], stock[6]);
    7: kasir(harga[7], stock[7]);
    8: kasir(harga[8], stock[8]);
    9: kasir(harga[9], stock[9]);
    10: kasir(harga[10], stock[10]);
    else writeln('Produk tidak valid.'); //jika user tidak memasukkan nilai 1-10
  end;

  writeln('Terima kasih telah menggunakan mesin penjual otomatis.');
  writeln('Mau beli lagi? Y/T'); readln(lagi);
  until (lagi<>'y') and (lagi<>'Y'); //akhir perulangan jika user tidak memasukkan nilai 'y' atau 'Y'
end.
