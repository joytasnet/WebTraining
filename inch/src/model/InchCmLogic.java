package model;

public class InchCmLogic {
	public void execute(InchCm ic) {
		double inch=ic.getInch();
		double cm=inch*2.54;
		ic.setCm(cm);
	}
}
