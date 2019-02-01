#include <assert.h>
#include <stdio.h>
#include <string.h>

int main(void) {
  char result[20], dna[] = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
  result[0] = 't';
  result[1] = '\0';

  assert(!strcmp(result, "20 12 17 21"));

  return 0;
}
