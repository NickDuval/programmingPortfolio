public class RoachPop {
	private long p;

	public RoachPopulation() {
		this.p = 0;
	}

	public RoachPopulation(int initial) {
		this.p = initial;
	}

	public void grow() {
		this.p = this.p * 2;
	}

	public void kill(double percent) {
		this.p = (long) (this.pop - (this.pop * (percent / 100)));
	}

	public void getRoaches() {
		System.out.println("There are currently " + this.p + " roaches.");
	}
}
