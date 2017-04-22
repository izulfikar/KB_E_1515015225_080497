/*****************************************************************************
Nama = Zulfikar Ali Ahmadar
Nim  = 1515051225
******************************************************************************/

domains
  person = p(nama, umur, lulusan, jurusan, bakat, alasan)  /* variabel di sini ada nama ,umur, lulussan , jurusan , bakat, alasan*/
  umur = integer /* tipe data umur disini integer karna hanya berupa angka */
  nama, lulusan, jurusan, bakat, alasan = string /* tipe data nama, lulusan, jurusan, bakat, alasan berupa string karna berupa alfabet dan angka */


predicates
  run - procedure () /* variabel run adalah  */

clauses
  run:-
      write("Pertanyaan Interview Perusahaan"),nl,   /* berupa inputan yang dimana akan tercetak dengan menggunaka fungsi write dan akan di simpan di dalam readln */
      write("Namanya siapa? "), readln(Nama),
      write("Umurnya berapa? "), readint(Umur),
      write("Lulusan dari Sekolah/Universitas apa? "), readln(Lulusan),
      write("Jurusannya apa? "), readln(Jurusan),
      write("Bakat/Skill khususnya apa? "), readln(Bakat),
      write("Alasan ingin ekerja di perusahaan ini? "),readln(Alasan),
      P=p(Nama,Umur,Lulusan,Jurusan,Bakat,Alasan), 
      write(P),nl,
      write("jika anda ingin lagi kembali lagi  OK ketik (y/n)"), /* lacak balik disini jika anda ketik selain y maka dia akan kembali ke awal dan jika ketik y maka program berhenti*/ 
      readchar(Ch),nl,Ch='y', !. /* LACAK BALIK DIMANA KETIKA KITA KETIK  MAKAN PROGRAM BERHENTI */

  run :-                    /* jika aturan yang ada maka dia akan kembali ke awal  */
	 nl,nl,
	 write("Kembali ke Pertanyaan awal"),
	 nl,nl,run.

goal
  
  run.