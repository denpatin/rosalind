import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Dna {
  /**
   * @param dna      a DNA strand
   * @param molecule a molecule, one of the set of ACGT
   *
   * @return the number of occurrences of the given molecule in the DNA strand
   */
  private long countMolecule(String dna, char molecule) {
    return dna.chars().filter(ch -> ch == molecule).count();
  }

  /**
   * @param input a DNA string of length at most 1000 nt
   *
   * @return four integers (separated by spaces) counting the respective number
   *     of times that the symbols 'A', 'C', 'G', and 'T' occur in the input
   */
  private String dna(String input) {
    char[] molecules = {'A', 'C', 'G', 'T'};
    StringBuilder output = new StringBuilder();
    for (char molecule : molecules) {
      output.append(countMolecule(input, molecule)).append(' ');
    }
    return output.toString().trim();
  }

  /**
   * @param args a path to the file with the DNA string
   */
  public static void main(String[] args) throws IOException {
    String input = new String(Files.readAllBytes(Paths.get(args[0])));
    System.out.println(new Dna().dna(input));
  }
}
