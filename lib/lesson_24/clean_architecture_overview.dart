//! Clean Architecture sử dụng sự phân tách giữa các tầng dữ liệu (data), tầng miền (domain) 
//! và tầng trình diễn (presentation) để giúp mã nguồn dễ quản lý và bảo trì hơn.
//? Cấu trúc thư mục: Tạo các thư mục sau trong dự án của bạn:
/*
  lib/
  ├── domain/
  │   ├── entities/
  │   ├── repositories/
  │   └── usecases/
  ├── data/
  │   ├── models/
  │   ├── datasources/
  │   └── repositories/
  └── presentation/
      ├── pages/
      ├── widgets/
      └── bloc/
 */

//! 1. Domain Layer (Tầng Miền)
//? Đây là nơi chứa các quy tắc kinh doanh và logic chính
//?   - Entities (Thực thể)
//      Đây là các đối tượng đại diện cho dữ liệu cốt lõi và các quy tắc của ứng dụng. 
//      Chẳng hạn, nếu bạn có ứng dụng quản lý nhân viên, 
//      một "Employee" sẽ là một thực thể với các thuộc tính như tên, ID, vị trí công việc.

//?   - Use Cases (Trường hợp sử dụng)
//      Đây là các tác vụ cụ thể mà ứng dụng của bạn cần thực hiện, được xác định bởi các quy tắc nghiệp vụ.
//      Ví dụ, "Add Employee", "Find Employee by ID" là các use case trong ứng dụng quản lý nhân viên.

//?   - Repositories Interfaces 
//      Đây là các khai báo interface mà tầng data sẽ thực hiện
//      Các use case sẽ giao tiếp với tầng data qua các interfaces này, không quan tâm đến chi tiết cài đặt.


//! 2. Data Layer (Tầng Dữ liệu)
//?  Giống như: Hệ thống cơ sở hạ tầng của ngôi nhà, bao gồm điện, nước, và các ống dẫn.
//?   - Models (Mô hình)
//      Là phiên bản cụ thể của Entities được sử dụng để giao tiếp với cơ sở dữ liệu 
//      hoặc các dịch vụ bên ngoài.
//      Chúng thường chứa logic cho việc chuyển đổi dữ liệu nhận được từ bên ngoài (như JSON) 
//      thành dạng mà ứng dụng có thể sử dụng.

//?   - Data Sources (Nguồn dữ liệu)
//      Có hai loại nguồn dữ liệu: remote (APIs) và local (cơ sở dữ liệu trên máy). 
//      Chúng chịu trách nhiệm trực tiếp cho việc đọc và ghi dữ liệu từ và đến local hoặc remote.

//?   - Repositories (Kho dữ liệu)
//      Thực thi các interfaces được khai báo ở tầng domain.
//      Repositories sử dụng data sources để cung cấp dữ liệu cho ứng dụng 
//      và là nơi duy nhất biết cách dữ liệu được truy xuất và lưu trữ như thế nào.

//!  3. Presentation Layer (Tầng Trình bày)
//      Giống như: Nội thất và cách bạn trang trí ngôi nhà. 
//      Nơi đây sẽ chứa các giao diện và cách giao diện dc trình bày cho người dùng
//?   - Screens/Pages
//      Các trang cụ thể trong ứng dụng của bạn, mỗi trang chứa nhiều widgets để tạo nên giao diện người dùng.

//?   - Widgets
//      Trong Flutter, widget là một phần cơ bản của tầng trình bày. 
//      Chúng định nghĩa cách thức hiển thị dữ liệu và tương tác với người dùng.

//?   - Logic holders (Bloc)
//      Đây là các thành phần quản lý trạng thái của UI. 
//      Chúng giúp tách biệt thực hiện logic ra khỏi giao diện người dùng
//      làm cho code dễ quản lý và bảo trì hơn.

//! Bước 1: Tạo Entities và Use Cases
//?   Entities: Trong lib/domain/entities/, tạo file movie.dart:
//?   Use Cases: Trong lib/domain/usecases/, tạo các use case để xử lý nghiệp vụ

//! Bước 2: Định nghĩa Model
//?   Bạn nên có một Model mở rộng từ Entity và thêm các chức năng cần thiết cho phân tích cú pháp JSON
//?   Định nghĩa Model (Data layer)

//! Bước 3: 
//?   - 3.1: Tạo Data Sources, sử dụng Model trong DataSource
//?   - Repository Implementations

//! Bước 4: Tích hợp BLoC và Xây dựng UI