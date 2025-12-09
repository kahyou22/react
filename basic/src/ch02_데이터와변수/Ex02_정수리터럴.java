package ch02_데이터와변수;

/**
 * 정수
 * 
 * 1. byte: 1byte
 * 
 * 2. short / char: 2byte
 * 
 * 3. int: 4byte
 * 
 * 4. long: 8byte
 */
public class Ex02_정수리터럴 {

	public static void main(String[] args) {

		byte var1 = -128;
		byte var2 = -30;
		byte var3 = 0;
		byte var4 = 30;
		byte var5 = 127;
		byte var6 = (byte) 128;

		System.out.println("var1: " + var1);
		System.out.println("var2: " + var2);
		System.out.println("var3: " + var3);
		System.out.println("var4: " + var4);
		System.out.println("var5: " + var5);
		System.out.println("var6: " + var6);
	}

}
