Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;

/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);

/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);

/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);

/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);

/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);

/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');

/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);

/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);

-- Truy Vấn

-- 1. Liệt kê: Mã SV, Họ SV, TênSV, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự MãSV tăng dần
Select MaSV, HoSV, 
	   TenSV, HocBong 
From DMSV 
Order By MaSV ASC;

-- 2.Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên,Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
Select MaSV, concat( HoSV,' ' ,TenSV) as HoTenSV,
       Phai, NgaySinh
From DMSV 
Order By Phai ASC;

-- 3.Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
Select MaSV, concat( DMSV.HoSV,' ' ,DMSV.TenSV) as HoTenSV, 
       NgaySinh, HocBong
From DMSV 
Order by NgaySinh ASC, HocBong DESC;

-- 4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã môn, Tên môn, Số tiết
Select MaMH, TenMH, SoTiet
From DMMH
Where TenMH like 'T%';

-- 5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Phái
Select concat(HoSV, ' ', TenSV) as HoTenSV,
       NgaySinh, Phai 
From DMSV
Where TenSV like '%I';

-- 6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm các thông tin: Mã khoa, Tên khoa
select MaKhoa, TenKhoa
from DMKhoa
where TenKhoa like '_N%';

-- 7. Liệt kê những sinh viên mà họ có chứa chữ Thị.
Select * from DMSV
Where HoSV like '%Thi%';

-- 8.Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽđược sắp xếp theo thứ tự Mã khoa giảm dần
Select MaSV, concat( HoSV, ' ', TenSV) as HoTenSV, 
	  DMKhoa.MaKhoa, DMSV.HocBong 
From DMSV
Join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
Where DMSV.HocBong >100000
Order By DMKhoa.MaKhoa DESC;

-- 9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
Select concat( HoSV, ' ', TenSV) as HoTenSV, 
       DMKhoa.MaKhoa,DMSV.NoiSinh, DMSV.HocBong 
From DMSV
Join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
Where DMSV.HocBong >=150000 and DMSV.NoiSinh = 'Hà Nội';

-- 10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông tin: Mã sinh viên, Mã khoa, Phái
select MaSV, DMKhoa.MaKhoa, DMSV.Phai
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
where DMKhoa.TenKhoa = 'Anh Văn' or DMKhoa.TenKhoa = 'Vật Lý'

-- 11. SV có ngày sinh từ ngày 01/01/1991 - 05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Họcbổng.
Select MaSV, NgaySinh, NoiSinh, HocBong
From DMSV
Where NgaySinh Between '1991-01-01'and '1992-06-05';

-- 12. Danh sách SV có học bổng từ 80.000 đến 150.000, gồm cácthông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.
Select MaSV, NgaySinh, Phai, DMKhoa.MaKhoa
From DMSV
Join DMKhoa on DMKhoa.MaKhoa = DMSV.MaKhoa
Where HocBong Between 80000 and 150000;

-- 13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông tin: Mã môn học, Tên môn học, Số tiết.
Select MaMH, TenMH, SoTiet
From DMMH
Where SoTiet >30 and SoTiet<45;

-- 14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
Select MaSV, concat( HoSV, ' ', TenSV) as HoTenSV, 
       DMKhoa.TenKhoa, Phai
From DMSV
Join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
Where DMSV.Phai = 'Nam' and (DMKhoa.TenKhoa = 'Anh Văn' 
						or DMKhoa.TenKhoa = 'Vật Lý');
                        
-- 15.Liệt kê những sinh viên nữ, tên có chứa chữ N
Select * From DMSV
Where Phai = 'Nữ' and TenSV like '%n%';

-- 16.Danh sách SV có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các thông tin: HọSV, Tên sinh viên, Nơi sinh, Ngày sinh.
Select HoSV, TenSV, NoiSinh, NgaySinh
From DMSV
Where NoiSinh = 'Hà Nội' 
		and month(NgaySinh) = 2;
        
-- 17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên, Tuổi,Học bổng.
Select concat( HoSV, ' ', TenSV) as HoTenSV, 
       TIMESTAMPDIFF(YEAR,NgaySinh, CURDATE()) as Tuoi, HocBong
From DMSV
Where TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) >20;

-- 18. Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh viên, Tuổi, Tên khoa.
Select concat( HoSV, ' ', TenSV) as HoTenSV, 
	   TIMESTAMPDIFF(YEAR,NgaySinh, CURDATE()) AS Tuoi, DMKhoa.TenKhoa
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
Where  TIMESTAMPDIFF(YEAR,NgaySinh, CURDATE()) Between 20 and 25;

-- 19. Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ tên sinh viên,Phái, Ngày sinh.
Select concat( HoSV, ' ', TenSV) as HoTenSV, Phai, NgaySinh
From DMSV
Where month(NgaySinh)in (1,2,3) 
	  and year(NgaySinh)= 1990;
      
-- 20. Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên, Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là 
-- “Học bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển thị là “Mức trung bình”
Select MaSV, Phai,MaKhoa,
       IF(HocBong > 500000, 'Học bổng cao', 'Mức trung bình')  MucHocBong
FROM DMSV;

-- 21. Cho biết tổng số sinh viên của toàn trường
Select count(*) as 'Tổng SV của toàn trường'
From DMSV;

-- 22. Cho biết tổng sinh viên và tổng sinh viên nữ.
Select count(*) as 'Tổng SV', 
	   sum(Case When Phai = 'Nữ' then 1 else 0 end )as 'Tổng SV nữ'
From DMSV;

-- 23.Cho biết tổng số sinh viên của từng khoa.
Select DMSV.MaKhoa, count(*) as 'Tổng SV'
From DMSV
Group By DMSV.MaKhoa;

-- 24.Cho biết số lượng sinh viên học từng môn
Select TenMH, count(*) as 'Tổng SV'
From KetQua
Join DMSV on KetQua.MaSV = DMSV.MaSV
Join DMMH on KetQua.MaMH = DMMH.MaMH
Group By DMMH.TenMH;

-- 25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có trong bảng kq)
Select count(DMMH.MaMH) as 'SL môn học đã học'
From KetQua
Join DMMH on KetQua.MaMH = DMMH.MaMH;

-- 26.Cho biết tổng số học bổng của mỗi khoa.
Select MaKhoa, Sum(HocBong) as 'Tổng học bổng'
From DMSV
Group By MaKhoa;

-- 27.Cho biết học bổng cao nhất của mỗi khoa
Select MaKhoa, max(HocBong) as 'Học bổng cao nhất'
From DMSV
Group By MaKhoa;

-- 28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa.
Select DMSV.MaKhoa, 
	  count(IF(Phai = 'Nam', 1, NULL)) AS 'Tổng SV Nam',
	  count(IF(Phai = 'Nữ', 1, NULL))  AS 'Tổng SV Nữ'
from DMSV
group by DMSV.MaKhoa;

-- 29.Cho biết số lượng sinh viên theo từng độ tuổi
Select year(curdate()) - year(ngaysinh) as 'Tuổi', count(*)as 'Số SV'
From DMSV
Group By year(curdate()) - year(ngaysinh);

-- 30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường.
Select year(ngaysinh) as 'Năm Sinh',count(*) as'Số SV'
from DMSV
Group By year(ngaysinh)
Having count(Masv)=2;

-- 31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường.
Select NoiSinh ,count(*) as'Số SV'
From DMSV
Group By NoiSinh
Having count(*) = 2;

-- 32.Cho biết những môn nào có trên 3 sinh viên dự thi.
Select KetQua.MaMH ,count(Masv) as'Số SV'
From KetQua
Group By KetQua.MaMh
Having count(*) = 2;

-- 33.Cho biết những sinh viên thi lại trên 2 lần.
Select TenSV
From KetQua
Join DMSV on KetQua.MaSV = DMSV.MaSV
Where KetQua.LanThi >2;

-- 34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0
Select concat(HoSV+' '+Tensv) as 'Họ tên SV',
	  phai,ketqua.lanthi,avg(ketqua.Diem) as'Điểm TB'
From ketqua 
Join DMSV on ketqua.MaSV = DMSV.MaSV
Where ketqua.lanthi = 1 
     and ketqua.Diem >7
	 and phai='Nam'
Group By ketqua.lanthi, phai, concat(HoSv+' '+TenSv);

-- 35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1.
Select KetQua.Masv as 'Mã SV',count(KetQua.Mamh)as'Số môn không đạt'
From ketqua
Where KetQua.lanthi=1 
	  and KetQua.diem <5
Group By KetQua.Masv
Having count(KetQua.Mamh)>=2;

-- 36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
Select DMkhoa.TenKhoa ,count(*) as 'Số SV nam'
From DMSV
Join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
Where DMSV.Phai='Nam'
Group By DMKhoa.TenKhoa
Having count(*)>=2;

-- 37.Cho biết những khoa có 2 sinh đạt học bổng từ 200.000 đến 300.000
Select DMkhoa.TenKhoa , count(*) as 'Số SV'
From DMSV
Join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
Where hocbong Between 200000 and 300000 
Group By DMKhoa.TenKhoa
Having count(*)>=2;

-- 38.Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn trong lần thi 1.
Select DMMH.TenMH as 'Tên môn học',
	  Sum(IF(Diem >= 5, 1, 0)) AS 'Qua môn',
	  Sum(IF(Diem < 5, 1, 0))  AS 'Không qua môn'
From ketqua 
Join DMMH on ketqua.MaMH = DMMH.MaMH
Where  ketqua.lanthi=1
group By DMMH.TenMH;

-- 39.Cho biết sinh viên nào có học bổng cao nhất
Select concat(HoSV, ' ',TenSV) as HoTenSV, HocBong 
From DMSV
Where HocBong =  (select max(HocBong) from DMSV );

-- 40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất.