// 받아올 정보 공간 (이미지+이름+가격+설명)
import 'package:flutter/material.dart';

// 두번째 화면 위젯의 본체
// 직접 UI를 그리지 않고 자신의 State(상태)를 넘겨준다.
class ProductDetailPage extends StatefulWidget {

  /// 전달받을 값을 저장할 변수
  final String name;
  final String price;
  final String image;
  final String desc;

  ProductDetailPage({ /// 생성자 - 값을 받아서 변수에 저장
    required this.name,
    required this.price,
    required this.image,
    required this.desc,
  });

  @override
  // 상태는 _ProductDetailPageState가 관리한다고 선언하는 과정
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text('상품 상세'),
      backgroundColor: Colors.teal,
    ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 상품 이미지
            Image.network(
              widget.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            ///
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// 상품명
                    Text(widget.name, style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 8),

                    // 가격
                    Text(widget.price, style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 16),
                    Divider(),
                    SizedBox(height: 16),
                    // 설명
                    Text(widget.desc, style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}