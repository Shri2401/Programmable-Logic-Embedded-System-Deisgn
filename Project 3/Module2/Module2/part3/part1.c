#include <stdio.h>

#define MAX_NUM     7

int LIST[MAX_NUM] = {10, 1, 2, 33, 15, 6, 70};

int main(void)
{
	int i;
	int largest;

	largest = LIST[0];

	for (i = 1; i < MAX_NUM; i++) {
		if (LIST[i] > largest)
			largest = LIST[i];
	}

	printf("largest number is %d\n", largest);

	return 0;
}
