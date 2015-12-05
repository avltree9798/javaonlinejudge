import java.util.Scanner;
public class Main{
	public static void main(String [] args) throws Exception{
		Scanner scan = new Scanner(new java.io.FileInputStream("stdin.dat"));
		int test_case = scan.nextInt();
		int data = 0;
		for(int i=0;i<test_case;i++){
			data+=scan.nextInt();
		}
		System.out.println(data);
	}
}