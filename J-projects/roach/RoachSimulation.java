public class RoachSimulation {
	public static void main(String[] args) {
		RoachPop roach = new RoachPop(10);
		for (int x = 0; x < 3; x++) {
			roach.grow();
			roach.kill(10);
			roach.getRoaches();
		}
	}
}
