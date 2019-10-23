#include "lib.h"

// Implementation of itoa()
char* itoa(int num, char* str, int base)
{
  int i = 0;
  int isNegative = 0;
  /* Handle 0 explicitely, otherwise empty string is printed for 0 */
  if (num == 0)
  {
    str[i++] = '0';
    str[i] = '\0';
    return str;
  }
  // In standard itoa(), negative numbers are handled only with
  // base 10. Otherwise numbers are considered unsigned.
  if (num < 0 && base == 10)
  {
    isNegative = 1;
    num = -num;
  }
  // Process individual digits
  while (num != 0)
  {
    int rem = num % base;
    str[i++] = (rem > 9)? (rem-10) + 'a' : rem + '0';
    num = num/base;
  }
  // If number is negative, append '-'
  if (isNegative)
    str[i++] = '-';
  str[i] = '\0'; // Append string terminator
  // Reverse the string
  reverse(str);
  return str;
}

// reverse the given null-terminated string in place
void
reverse(char * str)
{
  if (str)
  {
    char * end = str + strlen(str) - 1;

    // swap the values in the two given variables
    // XXX: fails when a and b refer to same memory location
#   define XOR_SWAP(a,b) do\
    {\
      a ^= b;\
      b ^= a;\
      a ^= b;\
    } while (0)

    // walk inwards from both ends of the string,
    // swapping until we get to the middle
    while (str < end)
    {
      XOR_SWAP(*str, *end);
      str++;
      end--;
    }
#   undef XOR_SWAP
  }
}

int strlen(char *str)
{
  char *s;
  for(s = str; *s; ++s);
  return (s - str);
}
