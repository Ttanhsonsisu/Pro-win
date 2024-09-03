// stringConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.Mappath("Database1.mdb")

### select
1. đối tượng recordset 
    + là đói tượng chứa tập kết quả được trả về bởi câu lệnh select 
    + khai báo đối tượng: 
        - syntax: 
            set <nameobj> = Server.CreateObject("ADODB.Recordset")
            _ex:
                set rs = Server.CreateObject("ADODB.Recordset")
     + method: 
        - <nameObj>.open "sql" , <nameObj connection> ' mở ra tập kết quả lệnh select
            _ex: 
                rs.open "select * form [database].[table]" , conn

        - rs.eof ' kết thúc tập kết quả
        - rs.movenext ' di chuyển đến bản ghi tếp theo
        - rs("name field") ' trả về kết quả của cột tương ứng
        

thêm data vào bảng

    + tạo form để user nhập data '
    + khi form submit thì ở trang acction cần làm
        - connect to db
        - lấy dữ liệu người dùng nhập vào
        - xử lý
        - close connect 
        - gọi lại trang         