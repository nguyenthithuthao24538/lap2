use [CSDL QLBanghang]
go
create table hangsx
(
mahangsx Nchar(10) primary key,
tenhang Nvarchar(20)null,
diachi nvarchar (30) null,
sodt nvarchar (20) null,
email nvarchar (30) null
)
create table sanpham
(
masp Nchar(10) primary key,
mahangsx Nchar(10),
tensp nvarchar (20) null,
soluong int null,
mausac nvarchar (20) null,
giaban money null,
donvitinh nchar (10) null,
mota nvarchar (max) null,
FOREIGN KEY (mahangsx)REFERENCES hangsx (mahangsx)
)

create table nhanvien
(
manv nchar(10) primary key,
tennv Nvarchar(20) null,
gioitinh nchar (10) null,
diachi nvarchar(30) null,
soddt nvarchar (20) null,
email nvarchar(30) null,
phong nvarchar (30) null,
)
create table nhap
(
sohdn Nchar(10) ,
masp Nchar(10),
mahangsx Nchar(10),
manv nchar(10) ,
ngaynhap date null,
soluongn int null,
dongian money null,
primary key(sohdn,masp),
FOREIGN KEY (masp)REFERENCES sanpham (masp),
FOREIGN KEY (manv)REFERENCES nhanvien (manv)
)
create table xuat
(
sohdx Nchar(10) ,
masp Nchar(10),
manv nchar(10) ,
ngayxuat date null,
soluongn int null,
primary key(sohdx,masp),
FOREIGN KEY (masp)REFERENCES sanpham (masp),
FOREIGN KEY (manv)REFERENCES nhanvien (manv)
)

insert into hangsx
values ('H01','samsung','Korea','011-08271717','ss@gmail.com.kr')
insert into hangsx
values('H02','oppo','China','081-08626262','oppo@gmail.com.cn')
insert into hangsx
values('H03','vinfone','Việt Nam','084-098262626','vf@gmail.com.vn')

insert into nhanvien
values ('NV01','Nguyễn Thị Thu','nữ','hà nội','0982626521','thu@gmail.com','kế toán')
insert into nhanvien
values('NV02','Lê Văn Nam','nam','bắc ninh','09722525252','nam@gmail.com','vật tư')
insert into nhanvien
values('NV03','Trần Hòa Bình','nữ','hà nội','0328388388','hb@gmail.com','kế toán')

insert into sanpham
values ('SPV01','H02','F1 Plus','100','xám','7000000','chiếc','hang cận cao cấp')
insert into sanpham
values('SP02','H01','Galaxy Note 11','50','đỏ','19000000','chiếc','hàng cao cấp')
insert into sanpham
values('SP03','H02','F3 lite','200','nâu','3000000','chiếc','hàng phổ thông')
insert into sanpham
values('SP04','H03','Vjoy3','200','xám','1500000','chiếc','hàng phổ thông')
insert into sanpham
values('SP05','H01','Galaxy V21','500','nâu','8000000','chiếc','hang cận cao cấp')

insert into nhap
values ('N01','SP02','NV01','2019-02-05','10','17000000')
insert into nhap
values ('N02','SP01','NV02','2020-04-07','30','6000000')
insert into nhap
values ('N03','SP04','NV02','2020-05-17','20','1200000')
insert into nhap
values ('N04','SP01','NV03','2020-03-22','10','6200000')
insert into nhap
values ('N05','SP05','NV01','2020-07-07','20','7000000')

insert into xuat
values ('X01','SP03','NV02','2020-06-14','5')
insert into xuat
values ('X02','SP01','NV03','2019-03-05','3')
insert into xuat
values ('X03','SP02','NV01','2020-12-12','1')
insert into xuat
values ('X04','SP03','NV02','2020-02-06','2')
insert into xuat
values ('X05','SP05','NV01','2020-05-18','1')
