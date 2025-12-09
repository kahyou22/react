package ch02_데이터와변수;

public class Ex01_변수초기화 {

	public static void main(String[] args) {

//		int value;
//		int result = value + 10;
//		System.out.println(value);

		int hour = 3;
		int minute = 5;
		System.out.println(hour + "시간 " + minute + "분");

		int x = 3;
		int y = 5;
		System.out.println("x: " + x + ", y: " + y);

		x ^= y;
		y ^= x;
		x ^= y;
		System.out.println("x: " + x + ", y: " + y);
	}
}
