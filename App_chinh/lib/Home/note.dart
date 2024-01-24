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
'''- Đa số thông tin, sự kiện quan trọng đều được gủi qua gmail trường cấp.
- Hãy luôn theo dỗi gmail nhá''',
          ),
          // -----
          button_List(
            title: 'Thẻ sinh viên',
            description:
'''- Thẻ sinh viên cũng là thẻ ngân hàng, nhớ giữ cẩn thận.
- Thẻ sinh viên sẽ được nhà trường làm sớm nhất có thể''',
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
'''Sẽ có một buổi học về thư viện trường. Nhưng phải đăng kí.
Thẻ sinh viên đã bao gồm thẻ thư viên, chỉ sử dụng được sau khi tham gia khóa học thư viện'''),
          // -----
        ],
      ),
    );
  }
}
