#include <stdio.h>

size_t strlen(const char *);
int strcmp(const char *, const char *);
int strncmp(const char *, const char *, size_t);
char *strchr(const char *, int);
char *rindex(const char *, int);

int main(int argc, char *argv[])
{
	char a[] = "abcdabcd";
	char empty[] = "";

	printf("-- LEN --\n");
	printf("Len '%s' : %d\n", empty, strlen(empty));
	printf("Len '%s' : %d\n", argv[1], strlen(argv[1]));

	printf("\n-- STRCMP --\n");
	printf("Strcmp '%s' et '%s' : %d\n", argv[1], a, strcmp(argv[1], a));
	printf("Strcmp '%s' et '%s' : %d\n", a, argv[1], strcmp(a, argv[1]));
	printf("Strcmp '%s' et '%s' : %d\n", empty, a, strcmp(empty, a));

	printf("\n-- STRNCMP --\n");
	printf("Strncmp '%s' et '%s' - 15 : %d\n", argv[1], a, strncmp(argv[1], a, 15));
	printf("Strncmp '%s' et '%s' - 5 : %d\n", argv[1], a, strncmp(argv[1], a, 5));
	printf("Strncmp '%s' et '%s' - 2 : %d\n", argv[1], a, strncmp(argv[1], a, 2));
	printf("Strncmp '%s' et '%s' - 0 : %d\n", argv[1], a, strncmp(argv[1], a, 0));

	printf("\n-- STRCHR --\n");
	printf("   -> string start at  : %p\n\n", a);
	printf("Strchr '%c' dans '%s' : %p\n", 'b', a, strchr(a, 'b'));
	printf("Strchr '%c' dans '%s' : %p\n", 'a', a, strchr(a, 'a'));
	printf("Strchr '%c' dans '%s' : %p\n", 'z', a, strchr(a, 'z'));

	printf("\n-- RINDEX --\n");
	printf("   -> string start at  : %p\n", a);
	printf("   -> string  end  at  : %p\n\n", a + strlen(a));
	printf("Rindex '%c' dans '%s' : %p\n", 'b', a, rindex(a, 'b'));
	printf("Rindex '%c' dans '%s' : %p\n", 'a', a, rindex(a, 'a'));
	printf("Rindex '%c' dans '%s' : %p\n", 'z', a, rindex(a, 'z'));
	return 0;
}
