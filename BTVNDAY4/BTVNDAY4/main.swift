//
//  main.swift
//  BTVNDAY4
//
//  Created by Trần Thanh Nguyên on 26/05/2021.
//

import Foundation



//1. Liệt kê tất cả các ước số của một số tự nhiên n.
//
//
//
//2, In ra họ và tên của một họ tên cho trước.
//
//(Ví dụ Phan Thanh Hoa -> In ra:  Phan Hoa)
//
//
//
//3, Viết hàm cho phép người dùng chọn đáp án
//
//Question: Đâu không phải là một ngôn ngữ lập trình?
//
//a - Golang
//
//b - Swift
//
//c - Ruby
//
//d - Daily
//
//Cho người dùng chọn a, b, c, d để trả lời!
//
//Yêu cầu người dùng chọn lại đáp án nếu input không đúng, (không đúng nếu input khác a, b, c, d)
//
//In ra trả lời sai nếu đáp án không đúng
//
//In ra trả lời đúng nếu đáp án đúng
//
//
//
//4, Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)


//1. Liệt kê tất cả các ước số của một số tự nhiên n.

//func lietKeUC(n : Int )
//{
//   if n <= 0
//    {
//        print("n ko hợp lệ")
//    }
//    else
//   {
//    for uc in 1...n
//    {
//        if n % uc == 0
//        {
//            print(uc)
//        }
//    }
//   }
//}
//lietKeUC(n: 9)
////2, In ra họ và tên của một họ tên cho trước.
////
////(Ví dụ Phan Thanh Hoa -> In ra:  Phan Hoa)
//
//func printName (name : String)
//{
//    let arrName = name.split(separator: " ")
//    let f  = arrName.first
//    let l  = arrName.last
//    if arrName.count <= 2 {
//        print("ho ten chưa đủ")
//    }
//    else
//    {
//        print("\(f ?? "z") \(l ?? "z" )")
//    }
//
//
//}
//printName(name: "Trần Mạnh Đức")
////4, Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)
//func printSHH(N : Int)
//{
//    if N >  32767 || N <= 0
//    {
//        print("nhập số N sai")
//    }
//    else
//    {
//        var sum : Int = 0
//        for i in 1...N
//         {
//          for j in 1..<i
//          {
//          if(i % j==0)
//             {
//             sum = sum + j
//              }
//           }
//            if(sum == i)
//            {
//             print("\(i)")
//
//            }
//          }
//    }
//}
//
//printSHH( N: 5000)
//MARK: -nhâp output

//func hello()
//{
//    let name = readLine()
//    print("hello \(name)")
//}
//hello()

//MARK: -bài 1
func timUoc()
{
    print("nhập số tự nhiên : ")
    let number = Int(readLine()!)!// String -> Int
    if number < 0
    {
        print("\(number) ko phai số tự nhiên ")
        timUoc() // cách gọi đệ quy gọi lại chính nó
    }
    else if number == 0
    {
        print("0 có vô số ước số")
    }
    else
    {
        var uocSo : [Int] = []
        for i in 1...number // number/2
        {
         
            if number % i == 0{
                uocSo.append(i)
            }
        }
        //them chinh n vào mảng giá trị và thêm 1 dk if num == 1
        //uocSo.append(number)
        print("\(number) có tập hợp các ước sô là : \(uocSo)")
       timUoc()
    }
}
//timUoc()
//MARK: -bài 2
func hoTen()
{
    print("nhập họ và tên :")
    let fullName = readLine()!
    var arrName = fullName.components(separatedBy: " ")
    
}
//hoTen()
//MARK: -bài 3
func chonDapAN()
{
    print("""
         Đâu không phải là 1 ngôn ngữ lập trình.
        a.Golang
        b.Swift
        c.Rudy
        d.Dally
        """) //dung 3 cặp dấu nhaý để print nội dung nhiều dòng

let selectAnswer = readLine()
    switch selectAnswer {
    case "a" ,"b" ,"c","A","B","C":
        print("đáp án sai")
    case "d":
        print("dap an đúng")
    default:
        print("đáp án ko hợp lệ")
        chonDapAN()
    }
}
//chonDapAN()
//MARK: -bài 4
func soHoanHao()
{
    print("Nhập số tự nhiên N:")
    let n = Int(readLine()!)!
    while n < 2 || n > 32767 {
        soHoanHao()
    }
    for i in 2...n
    {
     if ktSoHoanHao(i)
     {
        print(i)
     }
    }
}
func ktSoHoanHao( _ x : Int) -> Bool  //_ là rut gọn agrment bên ngoài
 {
    var tong = 0
    for i in 1...x/2
    {
        if x % i == 0
        {
            tong += i
        }
    }
    return tong == x
 }
soHoanHao()
