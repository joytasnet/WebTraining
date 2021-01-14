package model;
import java.io.Serializable;
public class Num implements Serializable{
	private String org;
	private int eleNum;
	private int max;
	private int min;
	private int sum;
	public String getOrg() {
		return org;
	}
	public void setOrg(String org) {
		this.org = org;
	}
	public int getEleNum() {
		return eleNum;
	}
	public void setEleNum(int eleNum) {
		this.eleNum = eleNum;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
}
