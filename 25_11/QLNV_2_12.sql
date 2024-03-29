
create table PHONG(
	MaPhong char(3) primary key not null,
	TenPhong nvarchar (40),
	DiaChi nvarchar (50),
	Tel char(10),
)

create table DANHMUC(
	MaNN char(2) primary key not null,
	TenNN nvarchar (20),
)

create table NHANVIEN(
		MaNV char(5) primary key not null,
	Ho Nvarchar(20),
	TenLot Nvarchar(20),
	Ten Nvarchar(20),
	GioiTinh Nvarchar(3),
	NgaySinh char(10),
	HeSoLuong Dec(4,2),
	MaPhong char(3),
	Tel char(10),
	NgayBC datetime,
	foreign key (MaPhong) references PHONG(MaPhong)
)

create table TRINHDO_NN(
	MaNV char(5),
	MaNN char(2),
	TrDo char(2),
	constraint KHOA primary key (MaNV,MaNN,TrDo)
)


----------NHẬP DỮ LIỆU BẢNG PHÒNG-------------
INSERT INTO PHONG VALUES('HCA', N'HC Tổng hợp', N'123,Phường 5, TP Trà Vinh, Trà Vinh','0743585793') 
INSERT INTO PHONG VALUES('KDA', N'Kinh Doanh', N'123,Phường 5, TP Trà Vinh, Trà Vinh','0743585794') 
INSERT INTO PHONG VALUES('KTA', N'Kỹ Thuật', N'123,Phường 5, TP Trà Vinh, Trà Vinh','0743585795') 
INSERT INTO PHONG VALUES('QTA', N'Quản Trị', N'123,Phường 5, TP Trà Vinh, Trà Vinh','0743585796') 

------------NHẬP DỮ LIỆU BẢNG DANH MỤC----------
INSERT INTO DANHMUC VALUES('01', N'Anh')
INSERT INTO DANHMUC VALUES('02', N'Nga')
INSERT INTO DANHMUC VALUES('03', N'Pháp')
INSERT INTO DANHMUC VALUES('04', N'Nhật')
INSERT INTO DANHMUC VALUES('05', N'Trung Quốc')
INSERT INTO DANHMUC VALUES('06', N'Hàn Quốc')
----------- NHẬP DỮ LIỆU BẢNG TRÌNH ĐỘ--------
insert into TRINHDO_NN values('HC001','01','A')
insert into TRINHDO_NN values('HC001', '02' ,'B')
insert into TRINHDO_NN values('HC002','01','C')
insert into TRINHDO_NN values('HC002','03','C')
insert into TRINHDO_NN values('HC003','01','B2')
insert into TRINHDO_NN values('KD001','01','C')
insert into TRINHDO_NN values('KD001','02','B')
insert into TRINHDO_NN values('KD002','01','D')
insert into TRINHDO_NN values('KD002','02','A')
insert into TRINHDO_NN values ('KD003', '01', 'B')
insert into TRINHDO_NN values ('KD003', '02', 'C')
insert into TRINHDO_NN values ('KD004', '01', 'C')
insert into TRINHDO_NN values ('KD004', '04', 'A')
insert into TRINHDO_NN values ('KD004', '05', 'A')
insert into TRINHDO_NN values ('KD005', '01', 'B')
insert into TRINHDO_NN values ('KD005', '02', 'D')
insert into TRINHDO_NN values ('KD005', '03', 'B')
insert into TRINHDO_NN values ('KD005', '04', 'B')
INSERT INTO TRINHDO_NN values ('KT001', '01', 'B1')
INSERT INTO TRINHDO_NN values ('KT001', '04', 'E')
INSERT INTO TRINHDO_NN values ('KT002', '01', 'C')
INSERT INTO TRINHDO_NN values ('KT002', '02', 'B')
INSERT INTO TRINHDO_NN values ('KT003', '01', 'B1')
INSERT INTO TRINHDO_NN values ('KT003', '03', 'C')
INSERT INTO TRINHDO_NN values ('KT004', '01', 'D')
INSERT INTO TRINHDO_NN values ('KT005', '01', 'C')
INSERT INTO TRINHDO_NN values ('KT010', '03', 'A')
-----------------NHẬP DỮ LIỆU BẢNG NHÂN VIÊN-------------
insert into NHANVIEN values('HC001', N'Nguyễn', N'Thị' , N'Hà', N'Nữ', '1950/02/27', 4.50, 'HCA', '', '1975/08/02')
insert into NHANVIEN values('HC002', N'Trần', N'Văn' , N'Nam', N'Nam', '1975/12/06', 3.00, 'HCA', '', '1997/08/06')
insert into NHANVIEN values('HC003', N'Nguyễn', N'Thanh' , N'Huyền', N'Nữ', '1978/03/07', 3.50, 'HCA', '', '1999/02/09')
insert into NHANVIEN values('KD001', N'Lê', N'Tuyết' , N'Anh', N'Nữ', '1977/03/02', 2.50, 'KDA', '', '2001/02/10')
insert into NHANVIEN values('KH002', N'Nguyễn', N'Anh' , N'Tú', N'Nam', '1942/04/07', 2.60, 'KDA', '', '1999/04/29')
insert into NHANVIEN values('KH003', N'Phạm', N'An' , N'Thái', N'Nam', '1977/09/05', 3.60, 'KDA', '', '1999/04/09')
insert into NHANVIEN values('KH004', N'Lê', N'Văn' , N'Hải', N'Nam', '1976/02/01', 2.70, 'KDA', '', '1997/08/06')
insert into NHANVIEN values('KH005', N'Nguyễn', N'Phương' , N'Minh', N'Nam', '1980/02/01', 3.00, 'KDA', '', '2001/02/10')
insert into NHANVIEN values('KT001', N'Trần', N'Đình' , N'Khâm', N'Nam', '1981/02/12', 2.70, 'KDA', '', '2005/10/01')
insert into NHANVIEN values('KT002', N'Nguyễn', N'Mạnh' , N'Hùng', N'Nam', '1980/06/08', 2.30, 'KDA', '', '2005/12/10')
insert into NHANVIEN values('KT003', N'Phạm', N'Thanh', N'Sơn', N'Nam', '1984/09/08', 2.00, 'KDA', '', '2005/11/17')
insert into NHANVIEN values('KT004', N'Vũ', N'Thị', N'Hoài', N'Nữ', '1980/05/12', 2.50, 'KDA', '', '2001/02/10')
insert into NHANVIEN values('KT005', N'Nguyễn', N'Thu', N'Lan', N'Nữ', '1977/05/10', 3.00, 'KDA', '', '2001/12/10')
insert into NHANVIEN values('KT006', N'Trần', N'Hoài', N'Nam', N'Nam', '1978/02/17', 2.80, 'KDA', '', '1997/08/16')
insert into NHANVIEN values('KT007', N'Hoàng', N'Nam', N'Sơn', N'Nam', '1940/03/12', 4.50, 'KDA', '', '1965/02/07')
insert into NHANVIEN values('KT008', N'Lê', N'Thu', N'Trang', N'Nữ', '1950/06/07', 4.50, 'KDA', '', '1968/02/08')
insert into NHANVIEN values('KT009', N'Khúc', N'Nam', N'Hải', N'Nam', '1980/02/07', 2.00, 'KDA', '', '2005/01/01')
insert into NHANVIEN values('KT010', N'Phùng', N'Trung', N'Dũng', N'Nam', '1978/08/08', 2.20, 'KDA', '', '1979/02/09')

SELECT *
FROM PHONG

SELECT *
FROM DANHMUC

SELECT *
FROM TRINHDO_NN

SELECT *
FROM NHANVIEN

------------TẠO VIEW  T57------------------

--------------THÔNG TIN NHÂN VIÊN MÃ SỐ KT001----------
create view V_DanhsachNV
AS
	SELECT MaNV,Ho,TenLot,Ten,GioiTinh,NgaySinh,HeSoLuong,MaPhong,Tel,NgayBC
	FROM NHANVIEN
	WHERE MaNV ='KT001'

SELECT *
FROM V_DanhsachNV

--------------DS THÔNG TIN NHÂN VIÊN NỮ----------
create view V_DanhsachNVNu
AS
	SELECT MaNV,Ho,TenLot,Ten,GioiTinh,NgaySinh,HeSoLuong,MaPhong,Tel,NgayBC
	FROM NHANVIEN
	WHERE GioiTinh = N'Nữ'

SELECT *
FROM V_DanhsachNVNu

--------------DS THÔNG TIN NHÂN VIÊN HỌ NGUYỄN----------
create view V_DanhsachNVhonguyen
AS
	SELECT MaNV,Ho,TenLot,Ten,GioiTinh,NgaySinh,HeSoLuong,MaPhong,Tel,NgayBC
	FROM NHANVIEN
	WHERE Ho = N'Nguyễn'

SELECT *
FROM V_DanhsachNVhonguyen

--------------DS THÔNG TIN NHÂN VIÊN CHỨA TỪ VĂN----------
create view V_DanhsachNVTEN
AS
	SELECT MaNV,Ho,TenLot,Ten,GioiTinh,NgaySinh,HeSoLuong,MaPhong,Tel,NgayBC
	FROM NHANVIEN
	WHERE TenLot = N'Văn'

SELECT *
FROM V_DanhsachNVTEN

--------------DS THÔNG TIN NHÂN VIÊN DƯỚI 30 TUỔI----------
create view V_DanhsachNVTUOI30
as
	SELECT MaNV,Ho,TenLot,Ten,GioiTinh,NgaySinh
	FROM NHANVIEN
	WHERE YEAR(getdate()) - YEAR(NgaySinh) <50
	
SELECT *
FROM V_DanhsachNVTUOI30

--------------DS THÔNG TIN NHÂN VIÊN 25 đến 30 TUỔI----------
create view V_DanhsachNVTUOI25_30t
as
	SELECT MaNV,Ho,TenLot,Ten,GioiTinh,NgaySinh
	FROM NHANVIEN
	WHERE YEAR(getdate()) - YEAR(NgaySinh) between 30 AND 50
	
SELECT *
FROM V_DanhsachNVTUOI25_30t

-------DS THÔNG TIN NHÂN VIÊN HỌC NGOẠI NGỮ TRÌNH ĐỘ C
 CREATE view V_DanhsachNVTRINHDOC
AS
	SELECT NV.MaNV,Ho,TenLot,Ten,TD.TrDo
	FROM TRINHDO_NN AS TD , NHANVIEN AS NV
	WHERE NV.MaNV = TD.MaNV
	AND TD.MaNN = '01'
	AND TD.TrDo != 'A'
	AND TD.TrDo != 'B'
	AND TD.TrDo != 'B1'
	AND TD.TrDo != 'B2'
	
SELECT *
FROM  V_DanhsachNVTRINHDOC

-------DS THÔNG TIN NHÂN VIÊN VÀO BIÊN CHẾ TRƯỚC NĂM 2000-----
create view V_DanhsachNVBIENCHE2000
as
	SELECT MaNV,Ho,TenLot,Ten,GioiTinh,NgaySinh,NgayBC
	FROM NHANVIEN
	WHERE  YEAR(NgayBC) < 2000
	
SELECT *
FROM  V_DanhsachNVBIENCHE2000

-------DS THÔNG TIN NHÂN VIÊN VÀO BIÊN CHẾ HƠN 10 NĂM-----
create view V_DanhsachNVBIENCHE10NAM
as
	SELECT MaNV,Ho,TenLot,Ten,GioiTinh,NgaySinh,NgayBC
	FROM NHANVIEN
	WHERE YEAR(getdate()) - YEAR(NgayBC) >10
	
SELECT *
FROM  V_DanhsachNVBIENCHE10NAM

----------X-THỦ TỤC LƯU TRỮ-------
CREATE PROCEDURE XINCHAO
	@hoten nvarchar(50)
AS
BEGIN 
	PRINT N'XIN CHÀO ' +@hoten
END
GO

EXEC XINCHAO N'NHI'

-----X1----
CREATE PROCEDURE DSNVNGHIHUU
AS
BEGIN
SELECT * , YEAR(getdate()) - YEAR(NgaySinh) AS 'Tuoi'
   FROM NHANVIEN as NV
   where (NV.GioiTinh = N'Nam'
   and YEAR(getdate()) - YEAR(NgaySinh) >=60)
   or (NV.GioiTinh = N'Nữ'
    and YEAR(getdate()) - YEAR(NgaySinh) >=55)
   END
   GO
   
 exec DSNVNGHIHUU
 
---------X2--------
alter PROCEDURE DSNVDENTUOINGHIHUU
	@GioiTinh Nvarchar(3),
	@Tuoi int,
	@kq int output
AS
BEGIN
SELECT COUNT(MaNV)
   FROM NHANVIEN 
   where (GioiTinh = @GioiTinh
   and YEAR(getdate()) - YEAR(NgaySinh) >= @Tuoi)
  
   END
   GO
   
 DECLARE @sonam int 
 exec DSNVDENTUOINGHIHUU N'Nam',60,@sonam output
 print @sonam
  
 DECLARE @sonu int 
 exec DSNVDENTUOINGHIHUU N'Nữ',60,@sonu output
 print @sonu

 
---------X3--------  
CREATE PROCEDURE ThongTinPhongBan

AS
BEGIN
	SELECT MaPhong,TenPhong,Tel
	from PHONG
END
GO

EXEC ThongTinPhongBan

-------X4----------
CREATE PROCEDURE ThongTinNV

AS
BEGIN
	SELECT Ho,TenLot,Ten,NgaySinh,NgayBC
	from NHANVIEN
END
GO

EXEC ThongTinNV
------------x5--------
CREATE PROCEDURE TTNHANVIEN
AS 
BEGIN
	SELECT Ho,TenLot,Ten,NgaySinh,HeSoLuong
	from NHANVIEN
	where HeSoLuong between 2.00 and 3.00
end
go

EXEC TTNHANVIEN

--------x6-----------
alter PROCEDURE HeSoLuong3_5tr
@tongnv int output
AS 
BEGIN
	SELECT COUNT(MaNV)
	from NHANVIEN
	where HeSoLuong between 3.50 and 4.50
	select @tongnv = @@ROWCOUNT
end
go

declare @re int 
EXEC HeSoLuong3_5tr @re output
print @re

-----------x7-------------------
CREATE PROCEDURE DSSDTNHANVIEN
AS 
BEGIN
	SELECT *
	from NHANVIEN
	where Tel = ' '
end
go

EXEC DSSDTNHANVIEN

-------------X8--------------
CREATE PROCEDURE DSNVSINHNHATHANG
@THANG INT
AS 
BEGIN
	SELECT *
	from NHANVIEN
	where MONTH(NgaySinh) = @THANG
end
go

EXEC DSNVSINHNHATHANG 2

------------X9----------------
CREATE PROCEDURE DEMSINHNHATNV
@thang int,
@sonv int output
AS 
BEGIN
	SELECT COUNT(MaNV)
	from NHANVIEN
	where MONTH(NgaySinh) = @THANG
end
go

declare @re int
exec DEMSINHNHATNV 2,@re output
print @re

----------------X10--------------
CREATE PROCEDURE DSNHANVIENTANGDAN
AS 
BEGIN
	SELECT *
	from NHANVIEN
	order by HeSoLuong
	
end
go

EXEC DSNHANVIENTANGDAN

-------------X12---------------
CREATE PROCEDURE TONGLUONG
AS
BEGIN
	SELECT MaPhong,SUM(HeSoLuong * 1300000) as tongluong
	from NHANVIEN
	group by MaPhong
end
go 

exec TONGLUONG

-----------------x13-------------
CREATE PROCEDURE TONGLUONGMAX
AS
BEGIN
	SELECT MaPhong,SUM(HeSoLuong * 1.3) as tongluong
	from NHANVIEN
	group by MaPhong
end
go 
        
exec TONGLUONGMAX

----------------x14--------------
create procedure DSNVX14
AS
BEGIN
	SELECT NV.MaNV,Ho,TenLot,Ten,NV.MaPhong,TenPhong
	from PHONG,NHANVIEN AS NV
	WHERE NV.MaPhong = PHONG.MaPhong
END 
GO

EXEC DSNVX14