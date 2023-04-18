--B--

--câu 1--
select*from [CSDL QLBanghang].INFORMATION_SCHEMA.COLUMNS

--câu 2--
SELECT masp, tensp, tenhang, soluong, mausac, giaban, donvitinh, mota
FROM sanpham inner join hangsx ON sanpham.mahangsx = hangsx.mahangsx
ORDER BY giaban DESC

--câu 3--
SELECT masp, tenhang, tensp, soluong, mausac, giaban
FROM sanpham inner join hangsx ON sanpham.mahangsx = hangsx.mahangsx
WHERE Hangsx.tenhang='Samsung'

--câu 4--
SELECT *
FROM nhanvien
WHERE gioitinh='nữ'and phong='kế toán'

--câu 5--
SELECT sohdn, sanpham.masp, tensp, tenhang, soluongn, dongian, tiennhap=soluongn*dongian mausac, donvitinh, ngaynhap, tennv, phong
FROM nhap
join sanpham ON nhap.masp = sanpham.masp
join hangsx ON sanpham.mahangsx = hangsx.mahangsx
join nhanvien ON nhap.manv = nhanvien.manv
ORDER BY Sohdn ASC

--câu 6--
SELECT DISTINCT sohdx, xuat.masp, tensp, tenhang, soluongx, giaban, tienxuat=soluongx*giaban, mausac, donvitinh, ngayxuat, tennv, phong
FROM xuat
join sanpham ON xuat.masp = sanpham.masp
join hangsx ON sanpham.mahangsx = hangsx.mahangsx
join nhanvien ON xuat.Manv = nhanvien.manv
WHERE YEAR(ngayxuat) = 2018 AND MONTH(ngayxuat) = 10 ORDER BY sohdx ASC

--câu 7--
SELECT sohdn, sanpham.masp, tensp, soluongn, dongian, ngaynhap, tennv, phong
FROM nhap
join sanpham ON nhap.masp = sanpham.masp
join hangsx ON sanpham.mahangsx = hangsx.mahangsx
join nhanvien ON nhap.manv = nhanvien.manv
WHERE hangsx.tenhang = 'Samsung' AND YEAR(ngaynhap) = 2017

--câu 8--
SELECT TOP 10 *FROM xuat WHERE YEAR(soluongx) = 20218 ORDER BY soluongx ASC

--câu 9--
SELECT TOP 10 *FROM sanpham ORDER BY giaban DESC

--câu 10--
SELECT *FROM sanpham join hangsx ON sanpham.mahangsx = hangsx.mahangsx
WHERE 100000<giaban AND giaban<500000 AND hangsx.tenhang = 'Samsung'
