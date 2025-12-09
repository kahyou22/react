package ch02_데이터와변수;

/**
 * 정수
 * 1. byte: 1byte
 * 2. short / char: 2byte
 * 3. int: 4byte
 * 4. long: 8byte
 */
public class Ex03_byte정수 {

	public static void main(String[] args) {

		int var1 = 0b1011; // 2
		int var2 = 0206; // 8
		int var3 = 365; // 10
		int var4 = 0xB3; // 16
		
		System.out.println("var1: " + var1);
		System.out.println("var2: " + var2);
		System.out.println("var3: " + var3);
		System.out.println("var4: " + var4);
	}

}
