create database THUVIEN
go 
use THUVIEN
go 
create table LOAI_SACH
(
	MaLoai	int primary key, 
	MoTa	nvarchar(200), 
	SoLuong	int
)
go
create table SACH
(
	MaSach		int primary key, 
	TenSach		nvarchar(200), 
	LoaiSach	int, 
	TongSach	int, 
	SoLuongTon	int, 
	TenTG		nvarchar(200), 
	NamXB		int, 
	SoTrang		int, 
	GiaTien		int, 
	TinhTrang	int
)
go
create table DOC_GIA
(
	MaThe		int primary key, 
	TenDG		nvarchar(100), 
	SoDT		varchar(15), 
	NgayLamThe	date, 
	NgayHetHan	date, 
	TinhTrang	int
)
go
create table MUON
(
	MaSach	int , 
	MaThe	int, 
	MoTa	nvarchar(200), 
	SoLuong	int, 
	NgayMuon	date, 
	NgayHenTra	date, 
	NgayTra		date, 
	TienPhat	int,
	primary key(MaSach,MaThe,NgayMuon)
)
go
INSERT INTO LOAI_SACH values(1,N'Giáo trình',7)
INSERT INTO LOAI_SACH values(2,N'Tài liệu tham khảo tiếng Việt',13)
INSERT INTO LOAI_SACH values(3,N'Tài liệu tham khảo tiếng Anh',8)
INSERT INTO LOAI_SACH values(4,N'Báo chí',16)
INSERT INTO LOAI_SACH values(5,N'Khóa luận',9)
go
INSERT INTO SACH VALUES(1,N'Giáo trình tin học đại cương',1,100,90,N'NXB Lao Động',2018,300,47000,1)
INSERT INTO SACH VALUES(2,N'Giáo trình xác xuất thống kê',1,50,50,N'NXB Đà Nẵng',2017,291,36500,1)
INSERT INTO SACH VALUES(3,N'Kinh tế vĩ mô',3,20,19,N'Elsevier',2009,790,200000,2)
INSERT INTO SACH VALUES(4,N'Lập Trình Với Scratch',2,34,31,N'NXB ĐHQGHN',2009,321,125150,1)
INSERT INTO SACH VALUES(5,N'Thực Hành Microsoft Word – Excel – Powerpoint 2016 Bằng Các Tuyệt Chiêu',2,90,85,N'NXB ĐHQGHN',2014,223,132455,1)
INSERT INTO SACH VALUES(6,N'Design Layout Volume 1',4,83,83,N'Springer',2017,387,110227,1)
INSERT INTO SACH VALUES(7,N'Lập Trình Với C# Xây Dựng Ứng Dụng',2,99,94,N'NXB Đà Nẵng',2019,209,142627,1)
INSERT INTO SACH VALUES(8,N'Xây dựng chatbot tuyển sinh trên Facebook cho trường Đại học Kinh tế',5,1,1,N'N/A',2018,285,0,1)
go
INSERT INTO DOC_GIA VALUES(1,N'Bùi Tấn Kiệt','0352266380','2018-11-25','2019-11-25',1)
INSERT INTO DOC_GIA VALUES(2,N'Lê Thúy Hằng','0399817942','2018-11-25','2019-11-25',1)
INSERT INTO DOC_GIA VALUES(3,N'Nguyễn Thị Thanh Hiền','0935580372','2019-06-28','2020-06-27',1)
INSERT INTO DOC_GIA VALUES(4,N'Nguyễn Nhật Minh Hiếu','0365141330','2016-04-16','2017-04-16',1)
INSERT INTO DOC_GIA VALUES(5,N'Trần Thị Thục Linh','0773402918','2016-02-25','2017-02-24',1)
INSERT INTO DOC_GIA VALUES(6,N'Phạm Thị Lựu','0835078748','2019-06-29','2020-06-28',1)
INSERT INTO DOC_GIA VALUES(7,N'Võ Thị Thu Phương','0935112862','2020-08-17','2021-08-17',1)
INSERT INTO DOC_GIA VALUES(8,N'Ngô Thị Sương','0357981254','2020-02-15','2021-02-14',1)
INSERT INTO DOC_GIA VALUES(9,N'Trương Thị Thu Thủy','0965969817','2020-11-15','2021-11-15',1)
INSERT INTO DOC_GIA VALUES(10,N'Lương Thị Thùy Linh','0363707347','2016-04-02','2017-04-02',1)
INSERT INTO DOC_GIA VALUES(11,N'Phan Thị Đài','0355038767','2017-05-27','2018-05-27',0)
INSERT INTO DOC_GIA VALUES(12,N'Nguyễn Đình Phúc Đại','0989327202','2016-05-29','2017-05-29',1)
INSERT INTO DOC_GIA VALUES(13,N'Trương Thị Kiều Diểm','0344263547','2018-03-25','2019-03-25',1)
INSERT INTO DOC_GIA VALUES(14,N'Hà Thị Mỹ Hạnh','0708068650','2016-11-05','2017-11-05',1)
INSERT INTO DOC_GIA VALUES(15,N'Lương Ngọc Hoàng','0896204487','2018-11-15','2019-11-15',0)
go
INSERT INTO MUON VALUES(2,10,N'N/A',1,'2019-01-30','2019-02-09','2019-02-07',0)
INSERT INTO MUON VALUES(6,8,N'N/A',1,'2019-08-12','2019-08-22','2019-08-12',0)
INSERT INTO MUON VALUES(4,15,N'N/A',1,'2019-09-08','2019-09-18','2019-09-26',80000)
INSERT INTO MUON VALUES(1,13,N'N/A',1,'2020-02-05','2020-02-15','2020-02-11',0)
INSERT INTO MUON VALUES(3,13,N'N/A',1,'2019-06-16','2019-06-26','2019-06-26',0)
INSERT INTO MUON VALUES(2,3,N'N/A',1,'2020-10-01','2020-10-11','2020-10-18',70000)
INSERT INTO MUON VALUES(7,9,N'N/A',1,'2019-06-30','2019-07-10','2019-06-29',0)
INSERT INTO MUON VALUES(3,3,N'N/A',1,'2019-01-18','2019-01-28','2019-01-30',20000)
INSERT INTO MUON VALUES(4,2,N'N/A',1,'2020-02-08','2020-02-18','2020-02-19',10000)
INSERT INTO MUON VALUES(8,11,N'N/A',1,'2019-02-24','2019-03-06','2019-03-12',60000)
INSERT INTO MUON VALUES(2,12,N'N/A',1,'2019-03-09','2019-03-19','2019-03-29',100000)
INSERT INTO MUON VALUES(1,3,N'N/A',1,'2020-01-01','2020-01-11','2020-01-20',90000)
INSERT INTO MUON VALUES(4,5,N'N/A',1,'2019-12-01','2019-12-11','2019-12-14',30000)
INSERT INTO MUON VALUES(4,12,N'N/A',1,'2019-02-11','2019-02-21','2019-03-01',80000)
INSERT INTO MUON VALUES(3,11,N'N/A',1,'2019-01-02','2019-01-12','2019-01-21',90000)
INSERT INTO MUON VALUES(1,3,N'N/A',1,'2019-01-12','2019-01-22','2019-01-07',0)
INSERT INTO MUON VALUES(1,12,N'N/A',1,'2019-06-27','2019-07-07','2019-06-30',0)
INSERT INTO MUON VALUES(4,14,N'N/A',1,'2019-10-02','2019-10-12','2019-09-24',0)
INSERT INTO MUON VALUES(3,15,N'N/A',1,'2020-03-22','2020-04-01','2020-03-18',0)
INSERT INTO MUON VALUES(7,3,N'N/A',1,'2020-04-23','2020-05-03','2020-04-25',0)
INSERT INTO MUON VALUES(7,14,N'N/A',1,'2019-02-16','2019-02-26','2019-02-20',0)
INSERT INTO MUON VALUES(2,1,N'N/A',1,'2020-05-12','2020-05-22','2020-05-19',0)



select * from doc_gia join muon on doc_gia.MaThe = muon.MaThe
--Câu 1. (1.5đ) Viết hàm kiểm tra thẻ độc giả có được phép mượn sách hay không nếu biết MaThe. 
--(Thẻ được phép mượn sách là thẻ có NgayHetHan > ngày hiện tại).
--Input: Mã thẻ 
--Output:
--Process:
select * from MUON
Create function KTThedocgia (@MaThe int) 
returns nvarchar(100) 
as 
begin 
		Declare @Kiemtra nvarchar(100), @NgayHetHan date 
		set @MaThe = (select MaThe from MUON where MaThe = @MaThe)
		set @NgayHetHan = ( Select NgayHetHan from DOC_GIA where NgayHetHan = @NgayHetHan)

		If @NgayHetHan > CAST( GETDATE() as date ) 
				set @Kiemtra = N'Được phép mượn sách'

				else 
					set @Kiemtra = N'Không được phép mượn sách'
	
	Return @Kiemtra
End
-- 

select dbo.KTThedocgia('1')

--Câu 2. (1.5đ) Viết hàm trả về số lượng sách mà độc giả đã mượn mà chưa trả nếu biết mã thẻ của họ. 
--(sách mượn chưa trả thì cột NgayTra có giá trị NULL).
-- input :Mã thẻ  
--output : Số lượng sách
--process:Tính tổng số sách khách hàng mượn khi ngày trả có giá trị null

create function TKCau2 (@mathe int ) 
returns int 
as 
begin 
	declare @count int 
	set @count= (select sum(SoLuong) from MUON where MaThe = @mathe and NgayTra is null) 
	if @count is null 
	begin
		set @count = 0 
	end
	return @count 
end
---test
select dbo.TKCau2('73')

--Câu 3. (5đ) Hãy tạo thủ tục thêm mới dữ liệu vào bảng SACH với các giá trị đầu vào là: 
--Tên sách, Loại sách, Tổng sách, TenTG, NamXB, Số trang, Giá tiền, tình trạng. Bao gồm những công việc sau:
--Kiểm tra số lượng Tổng sách, số trang, giá tiền có lớn hơn 0 hay không? 
--Nếu không lớn hơn 0 thì kết thúc thủ tục và trả về giá trị 0.
--Kiểm tra Loại sách (MaLoai) đã tồn tại trong bảng LOAI_SACH chưa. Nếu chưa thì kết thúc thủ tục và trả về giá trị 0.
--Kiểm tra tên sách có hợp lệ không (độ dài lớn hơn 10 kí tự). Nếu không hợp lệ thì kết thúc thủ tục và trả về giá trị 0.
--Tạo mã sách mới: mã sách mới = MAX(mã sách cũ) + 1
--Thêm mới giá trị cho bảng SACH với giá trị:
--MaSach: giá trị vừa tính ở câu d
--Tên sách: giá trị input
--Loại sách (MaLoai): giá trị input
--Tổng sách: giá trị input
--TenTG: giá trị input
--NamXB: giá trị input
--Số trang: giá trị input
--Số lượng tồn = Tổng sách
--Giá tiền: giá trị input
--Tình trạng: giá trị input

create proc procCAU_3 (   @tensach nvarchar(200),
						  @loaisach int , @tongsach int ,
						  @tentg nvarchar(200) , 
						  @namXB int  ,@sotrang int ,
						   @giatien int ,
						  @tinhtrang int, @out bit output  )


as 
begin 
	--a) Kiểm tra số lượng Tổng sách, số trang, giá tiền có lớn hơn 0 hay
	-- không? Nếu không lớn hơn 0 thì kết thúc thủ tục và trả về giá trị 0.
	
	
	if @tongsach <= 0 or @sotrang <=0 or @giatien <=0 
		begin 
		set @out = 0 
		return 
		end 

	--b) Kiểm tra Loại sách (MaLoai) đã tồn tại trong 
	--bảng LOAI_SACH chưa. Nếu chưa thì kết thúc thủ tục và trả về giá trị 0.
	declare @demLS int 
	set @demLS = ( select count(*) from LOAI_SACH where MaLoai = @loaisach)
	if @demLS < 1 
		begin 
		set @out = 0 
		return 
		end 
	--c) Kiểm tra tên sách có hợp lệ không (độ dài lớn hơn 10 kí tự). Nếu không hợp lệ 
	--thì kết thúc thủ tục và trả về giá trị 0.
	if (len(@tensach) < 10)
	begin
		Print N'Tên sách phải trên 10 ký tự'
		set @out = 0
		return
	end
		else 
		set @out = 1
	--d) Tạo mã sách mới: mã sách mới = MAX(mã sách cũ) + 1
		
		declare @masach int 
		set @masach = (select max(MaSach) +1 from Sach)

	--e) thêm dữ liệu 
		
		insert into SACH (MaSach, TenSach, LoaiSach, TongSach, TenTG, NamXB, SoTrang, SoLuongTon, GiaTien, TinhTrang)
		values ( @masach, @tensach, @loaisach, @tongsach, @tentg, @namXB, @sotrang, @tongsach, @giatien, @tinhtrang)
		if @@ROWCOUNT < 1 
		begin
			set @out = 0
		end 
		else if @@ROWCOUNT >= 1 
		begin 
			set @out = 1
		end
end

--Câu 4. (1đ) Khi thêm mới dữ liệu cho bảng SACH, hãy đảm bảo rằng tình trạng sách luôn khác 3 (3: sách cũ nát)
-- input :
--output 
--process

create trigger trigger_CAU4 on SACH 
for insert 
as
begin 
	declare @demsoluong int 
	set @demsoluong = (select TinhTrang from inserted )
	if @demsoluong = 3 
		begin 
		print N'thất bại ' 
		rollback 
		end 
end  
--
insert into SACH 
values (21,'dsd',3,3435,234,'abc',2020,4,335546,3)

--Câu 5. (1đ) Sau khi thêm mới dữ liệu cho bảng MUON, hãy cập nhật tiền phạt: 
--Nếu ngày trả <= ngày hẹn trả thì tiền phạt bằng 0, 
--ngược lại: Tiền phạt = (ngày trả - ngày hẹn trả)*5000
--BẢNG:muon
--LOẠI: alter 
--SỰ KIỆN: Update
create trigger KTR_CAU5 on Muon
for insert
as 
begin
	declare @ABC date, @ngaytra date 
	set @ABC = (select NgayHenTra from inserted)
	set @ngaytra = (select NgayTra from inserted)
	if @ngaytra <= @ABC
begin
	update MUON	
	set TienPhat = 0 from MUON join inserted on MUON.MaSach = inserted.MaSach where MUON.MaThe = inserted.MaThe
end
	else 
begin
	update MUON	
	set TienPhat = DATEDIFF(day,@ngaytra, @ABC) *5000 from MUON 
													join inserted on MUON.MaSach = inserted.MaSach 
													where MUON.MaThe = inserted.MaThe
end
end