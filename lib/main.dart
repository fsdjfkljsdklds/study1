import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = '';
  String _rowData = '';
  List<String> dropdownList = ['1', '2', '3'];
  String selectedDropdown = '1';

  void _updateText(String value) {
    setState(() {
      _text = value;
    });
  }

  void _updateRowData(String data) {
    setState(() {
      _rowData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Example')),
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('가맹점 관리'),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: DataTable(
                        columns: <DataColumn>[
                          DataColumn(
                              label: Checkbox(
                                  value: false,
                                  onChanged: (value) =>
                                      setState(() => value = value))),
                          DataColumn(
                              label:
                                  Text('상태', style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('대표\n이미지',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('코드/가맹점명',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label:
                                  Text('카테고리', style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('등록일\n(주문/예약)',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label:
                                  Text('중복', style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('순번\n(주문/예약)',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label:
                                  Text('사용', style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label:
                                  Text('휴점', style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('아동\n급식',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('POS상태\n(설치/로그인)',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label:
                                  Text('메뉴', style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label:
                                  Text('메뉴완료', style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('사장님\n사이트',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('영업/오퍼',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label: Text('입점지원금',
                                  style: TextStyle(fontSize: 12))),
                          DataColumn(
                              label:
                                  Text('리뷰이관', style: TextStyle(fontSize: 12))),
                        ],
                        rows: [
                          DataRow(
                            cells: [
                              DataCell(Checkbox(
                                  value: false,
                                  onChanged: (value) =>
                                      setState(() => value = value))),
                              DataCell(
                                DropdownButton(
                                  value: selectedDropdown,
                                  items: dropdownList.map((String item) {
                                    return DropdownMenuItem<String>(
                                      child: Text('$item'),
                                      value: item,
                                    );
                                  }).toList(),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selectedDropdown = value;
                                    });
                                  },
                                ),
                              ),
                              DataCell(Icon(Icons.camera_alt_outlined)),
                              DataCell(
                                InkWell(
                                  child: Text('[16518] YB 멀티샵카피4'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Text('음식'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '주문:',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: ' 2023-03-13',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '예약:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.restaurant_menu,
                                      color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.monitor,
                                      color: Colors.lightBlue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '영업:',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '오퍼:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('지급'),
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.rate_review,color: Colors.blue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Checkbox(
                                  value: false,
                                  onChanged: (value) =>
                                      setState(() => value = value))),
                              DataCell(
                                DropdownButton(
                                  value: selectedDropdown,
                                  items: dropdownList.map((String item) {
                                    return DropdownMenuItem<String>(
                                      child: Text('$item'),
                                      value: item,
                                    );
                                  }).toList(),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selectedDropdown = value;
                                    });
                                  },
                                ),
                              ),
                              DataCell(Icon(Icons.camera_alt_outlined)),
                              DataCell(
                                InkWell(
                                  child: Text('[16518] YB 멀티샵카피32'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Text('음식'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '주문:',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: ' 2023-03-13',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '예약:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.restaurant_menu,
                                      color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.monitor,
                                      color: Colors.lightBlue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '영업:',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '오퍼:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('지급'),
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.rate_review,color: Colors.blue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Checkbox(
                                  value: false,
                                  onChanged: (value) =>
                                      setState(() => value = value))),
                              DataCell(
                                DropdownButton(
                                  value: selectedDropdown,
                                  items: dropdownList.map((String item) {
                                    return DropdownMenuItem<String>(
                                      child: Text('$item'),
                                      value: item,
                                    );
                                  }).toList(),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selectedDropdown = value;
                                    });
                                  },
                                ),
                              ),
                              DataCell(Icon(Icons.camera_alt_outlined)),
                              DataCell(
                                InkWell(
                                  child: Text('[16518] YB 멀티샵카피22'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Text('음식'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '주문:',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: ' 2023-03-13',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '예약:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.restaurant_menu,
                                      color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.monitor,
                                      color: Colors.lightBlue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '영업:',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '오퍼:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('지급'),
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.rate_review,color: Colors.blue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Checkbox(
                                  value: false,
                                  onChanged: (value) =>
                                      setState(() => value = value))),
                              DataCell(
                                DropdownButton(
                                  value: selectedDropdown,
                                  items: dropdownList.map((String item) {
                                    return DropdownMenuItem<String>(
                                      child: Text('$item'),
                                      value: item,
                                    );
                                  }).toList(),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selectedDropdown = value;
                                    });
                                  },
                                ),
                              ),
                              DataCell(Icon(Icons.camera_alt_outlined)),
                              DataCell(
                                InkWell(
                                  child: Text('[16518] YB 멀티샵카피1'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Text('음식'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '주문:',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: ' 2023-03-13',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '예약:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.restaurant_menu,
                                      color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.monitor,
                                      color: Colors.lightBlue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '영업:',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '오퍼:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('지급'),
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.rate_review,color: Colors.blue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Checkbox(
                                  value: false,
                                  onChanged: (value) =>
                                      setState(() => value = value))),
                              DataCell(
                                DropdownButton(
                                  value: selectedDropdown,
                                  items: dropdownList.map((String item) {
                                    return DropdownMenuItem<String>(
                                      child: Text('$item'),
                                      value: item,
                                    );
                                  }).toList(),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selectedDropdown = value;
                                    });
                                  },
                                ),
                              ),
                              DataCell(Icon(Icons.camera_alt_outlined)),
                              DataCell(
                                InkWell(
                                  child: Text('[16518] YB 멀티샵카피4'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Text('음식'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '주문:',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: ' 2023-03-13',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '예약:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.restaurant_menu,
                                      color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.monitor,
                                      color: Colors.lightBlue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '영업:',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '오퍼:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('지급'),
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.rate_review,color: Colors.blue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Checkbox(
                                  value: false,
                                  onChanged: (value) =>
                                      setState(() => value = value))),
                              DataCell(
                                DropdownButton(
                                  value: selectedDropdown,
                                  items: dropdownList.map((String item) {
                                    return DropdownMenuItem<String>(
                                      child: Text('$item'),
                                      value: item,
                                    );
                                  }).toList(),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selectedDropdown = value;
                                    });
                                  },
                                ),
                              ),
                              DataCell(Icon(Icons.camera_alt_outlined)),
                              DataCell(
                                InkWell(
                                  child: Text('[16518] YB 멀티샵카피4'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Text('음식'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '주문:',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: ' 2023-03-13',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '예약:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.restaurant_menu,
                                      color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.monitor,
                                      color: Colors.lightBlue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '영업:',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '오퍼:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('지급'),
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.rate_review,color: Colors.blue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Checkbox(
                                  value: false,
                                  onChanged: (value) =>
                                      setState(() => value = value))),
                              DataCell(
                                DropdownButton(
                                  value: selectedDropdown,
                                  items: dropdownList.map((String item) {
                                    return DropdownMenuItem<String>(
                                      child: Text('$item'),
                                      value: item,
                                    );
                                  }).toList(),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selectedDropdown = value;
                                    });
                                  },
                                ),
                              ),
                              DataCell(Icon(Icons.camera_alt_outlined)),
                              DataCell(
                                InkWell(
                                  child: Text('[16518] YB 멀티샵카피4'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Text('음식'),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '주문:',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: ' 2023-03-13',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '예약:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.circle_outlined),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Row(
                                    children: [
                                      Icon(Icons.close, color: Colors.grey),
                                      Text('/',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.close, color: Colors.grey),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.restaurant_menu,
                                      color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.close, color: Colors.grey),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.monitor,
                                      color: Colors.lightBlue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '영업:',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: '오퍼:',
                                                    style: TextStyle(
                                                        fontSize: 10)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('지급'),
                                  ),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                              DataCell(
                                InkWell(
                                  child: Icon(Icons.rate_review,color: Colors.blue),
                                  onTap: () {
                                    _updateRowData('A, B, C');
                                    _updateText('A, B, C'); // 추가
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('데이터 입력',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _rowData
                              .split(', ')
                              .map((data) => Container(
                                    margin: EdgeInsets.symmetric(vertical: 8.0),
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      child: TextFormField(
                                        controller: TextEditingController(
                                            text: _text), // 추가
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: data),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
