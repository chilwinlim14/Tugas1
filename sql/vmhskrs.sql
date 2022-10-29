CREATE VIEW vmhskrs AS
SELECT mhs.StudentID,mhs.Nama,krs.kode_krs,krs.kode_term,mtk.kode_matakuliah,
       mtk.nama_matakuliah,mtk.sks, B.totalsks
       FROM mahasiswa mhs 
    INNER JOIN `KRS` krs ON mhs.StudentID=krs.StudentID 
	INNER JOIN krs_detail krd ON krd.kode_krs=krs.kode_krs
    INNER JOIN Matakuliah mtk ON mtk.kode_matakuliah=krd.kode_matakuliah
    INNER JOIN 
(SELECT krs.kode_krs,SUM(mtk.sks) totalsks
       FROM mahasiswa mhs 
    INNER JOIN `KRS` krs ON mhs.StudentID=krs.StudentID 
	INNER JOIN krs_detail krd ON krd.kode_krs=krs.kode_krs
    INNER JOIN Matakuliah mtk ON mtk.kode_matakuliah=krd.kode_matakuliah
    GROUP BY krs.kode_krs) as B  ON B.kode_krs=krs.kode_krs
 WHERE mhs.StudentID='100000001' and krs.kode_term='1213';