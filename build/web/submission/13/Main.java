import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.*;
class Main {
	public static void main(String[] args) throws Exception{
		HashMap<String, Integer> map = new HashMap<>();
		BufferedReader scan = new BufferedReader(new InputStreamReader(new java.io.FileInputStream("stdin.dat")));
		int T = Integer.parseInt(scan.readLine());
		String tokens[] = scan.readLine().split(" ");
		ArrayList<Integer> ai = new ArrayList<>();
		for(int i=0;i<T;i++){
			ai.add(Integer.parseInt(tokens[i]));
		}
		Collections.sort(ai);
		int rank=1;
		for(int i=0;i<ai.size();i++){
			if(ai.get(i)==rank){
				rank++;
			}
		}
		System.out.println(rank);
	}
}
