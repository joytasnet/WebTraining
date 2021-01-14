package model;

public class NumLogic {
	public void execute(Num num) {
		String[] data=num.getOrg().split(",");
		num.setEleNum(data.length);
		int max=Integer.parseInt(data[0]);
		int min=Integer.parseInt(data[0]);
		int sum=Integer.parseInt(data[0]);
		for(int i=1;i<data.length;i++) {
			int n=Integer.parseInt(data[i]);
			sum+=n;
			if(min > n) {min=n;}
			if(max< n) {max=n;}
		}
		num.setMax(max);
		num.setMin(min);
		num.setSum(sum);
	}
}
