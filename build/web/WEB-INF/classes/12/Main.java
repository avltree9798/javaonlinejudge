import java.io.*;
class Main{
	public static void main(String [] args) throws Exception{
		BufferedReader scan = new BufferedReader(new InputStreamReader(new java.io.FileInputStream("stdin.dat")));
		int N = Integer.parseInt(scan.readLine());
		for(int i=0;i<N;i++){
			System.out.print(i+" ");
		}
	}
}
