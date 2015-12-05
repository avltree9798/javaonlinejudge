import java.io.*;
import java.util.ArrayList;
import java.util.Collections;
class Main{
	public static void main(String [] args) throws Exception{
		BufferedReader scan = new BufferedReader(new InputStreamReader(new java.io.FileInputStream("stdin.dat")));
		int T = Integer.parseInt(scan.readLine());
		for(int i=0;i<T;i++){
			ArrayList<Integer> ai = new ArrayList<>();
			String tokens[] = scan.readLine().split(" ");
			int N = Integer.parseInt(tokens[0]);
			int M = Integer.parseInt(tokens[1]);
			ai.add(M);
			tokens = scan.readLine().split(" ");
			for(int j=0;j<tokens.length;j++){
				ai.add(Integer.parseInt(tokens[j]));
			}
			int rank = 1;
			Collections.sort(ai,Collections.reverseOrder());
			for(int j=0;j<ai.size();j++){
				if(ai.get(j)==M){
					break;
				}
				rank++;
			}
			System.out.println("Kasis #"+(i+1)+": "+rank);
		}
	}
}
