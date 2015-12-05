import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;


class Main {
	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		BufferedReader scan = new BufferedReader(new InputStreamReader(new java.io.FileInputStream("stdin.dat")));
		int T = Integer.parseInt(scan.readLine());
		ArrayList<Integer> ai = new ArrayList<Integer>();
		for(int i=0;i<T;i++){
			ai.clear();
			String tokens[] = scan.readLine().split(" ");
			String points[] = scan.readLine().split(" ");
			int point = Integer.parseInt(tokens[1]);
			ai.add(point);
			for(int j=0;j<points.length;j++){
				ai.add(Integer.parseInt(points[j]));
			}
			Collections.sort(ai,Collections.reverseOrder());
			int rank=1;
			for(int j=0;j<ai.size();j++){
				if(point==ai.get(j)){
					System.out.println("Kasus #"+(i+1)+": "+rank);
					break;
				}
				rank++;
			}
		}
	}

}