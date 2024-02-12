public class Program {
	public static void main(String[] args) {
		private static final int = 2000000;

		if (args.length != 2) {
			System.err.println("Error: wrong arguments");
			System.exit(-1);
		}
		if (!args[0].matches("--arraySize=\\d++") || !args[1].matches("--threadsCount=\\d++")) {
			System.err.println("Error: wrong flag");
			System.exit(-1);
		}
		int arraySize = Integer.parseInt(args[0].split("=")[1]);
		int threadsCount = Integer.parseInt(args[1].split("=")[1]);
	}
}
