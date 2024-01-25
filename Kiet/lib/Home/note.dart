import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class Note extends StatelessWidget {
  final VoidCallback goHome;
  Note({required this.goHome});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: goHome),
      ),
      body: ListView(
        children: <Widget>[
          button_List(
            title: 'Gmail và tài khoản',
            description:
'''- Gmail sẽ là mã số sinh viên và thành tố "@student.tdmu.edu.vn"
- Tài khoản tdum, elearning,... sẽ lấy mã số sinh viên làm tên tài khoản.''',
          ),
          // -----
          button_List(
            title: 'Thông báo quan trọng',
            description:
'''- Thông tin, sự kiện quan trọng đều được gửi qua gmail trường cấp.
- Hãy luôn theo dỗi gmail trường cấp nhá
- Một số môn yêu cầu theo dỗi facebook và website riêng (Chướng chỉ ngoại ngữ và kĩ năng xã hội)''',
          ),
          // -----
          button_List(
            title: 'Đăng kí môn học',
            description:
'''- Thông báo đăng kí sẽ đến vào gần kì thi cuối kì
- Các bạn nên xem kĩ thời gian được phép đăng kí
- Môn cần đăng kí ở website TDMU, mục "Chương trình đào tạo"
- Xem luôn giáo viên lớp đó có hãm hay không
- Nhanh chân không hết lớp''',
          ),
          // -----
          button_List(
            title: 'Nghỉ phép và làm đơn',
            description:
'''- Trên website TDMU, ở mục "ĐĂNG KÝ GIẤY CHỨNG".
- Mỗi môn học đều có một số lượng nghỉ phép nhất định (khoảng 20% số tiết học). Nếu nghỉ quá số lượng này, thì phải học lại''',
          ),
          // -----
          button_List(
            title: 'Xử lí công vụ',
            description:
'''- Các bạn hãy đến phòng "B-403" giải quyết
- Nhớ đi giầy nha (không được dùng dép quai hậu)''',
          ),
          // -----
          button_List(
            title: 'Tiền',
            description:
'''- Mọi vấn đề, thắc mắc. Các bạn hãy đến "A1-Văn phòng" giải quyết
- Nhớ đi giầy nha (không được dùng dép quai hậu)''',
          ),
          // -----
          button_List(
            title: 'Tiếng anh',
            description:
'''- Sẽ có một kì thi tiếng anh đầu vào, nếu tham gia sẽ tiếp kiệm được một khoảng
- Làm bài tập trên website MyELT
- Sách học Outcomes
- Bán tại A2-102 và máy bán sách tự động dãy B ''',
          ),
          // -----
          button_List(
            title: 'Khu vực tự học', 
            description: 
'''Ở các vị trí:
- GS25 cổng 4
- Bãi giữ xe cổng 5
- Khu tự học ở giữa I3-I4
- Khu tự học dãy B
- Phòng A2-201
- Thư viện A2'''),
          // -----
          button_List(
            title: 'Thẻ thư viện', 
            description: 
'''- Đăng kí buổi học về thư viện trường.
- Thẻ sinh viên đã bao gồm thẻ thư viên, chỉ sử dụng được sau khi tham gia khóa học thư viện'''),
          // -----
        ],
      ),
    );
  }
}
