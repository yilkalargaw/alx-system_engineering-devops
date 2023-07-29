#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

/**
 * continous_while - prevent processes from ending
 *
 * Return: Always 0
 */
int continous_while(void)
{
	while (1)
		sleep(1);
	return (0);
}


/**
 * create_zombies - prevents process from ending to make it a zombie
 * @pcout: process cout
 *
 * Return: nothing
 */

void create_zombies(int pcout)
{
	pid_t child;
	int i = 0;

	for (; i < 5; i++)
	{
		child = fork();
		if (child <= 0)
			exit(0);
		else
			printf("Zombie process created, PID: %d\n", child);
	}
	exit(0);
}

/**
 * main - create 5 zombie process
 *
 * Return: 0
 */
int main(void)
{
	create_zombies(5);
	continous_while();
	return (0);
}
