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
	pid_t child = fork();
	int i = 0;

	for (; i < pcout; i++)
	{
		child = fork();
		if (child > 0)
		{
			printf("Zombie process created, PID: %d\n", child);
			sleep(50);
		}
		else
			exit(0);
	}
}

/**
 * main - create 5 zombie process
 *
 * Return: 0
 */
int main(void)
{
	create_zombies(5);
	infinite_while();
	return (0);
}
xsxs
