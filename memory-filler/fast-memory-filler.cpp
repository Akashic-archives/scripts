#include <stdlib.h>
int main()
{
	for (;;) {
		malloc(65536*100);
	}
}
