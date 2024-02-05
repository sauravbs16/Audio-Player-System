/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <io.h>
#include <sys/alt_irq.h>

int background();
static void isr_lab1 (void *context, alt_u32 id);
int respond_to_pulse();

int main()
{
  // if communication = 1 -> interrupt
  // if communication = 0 -> tight poll
  int communication_mode = 0;
  //int test;
  //test = IORD(SWITCH_PIO_BASE, 0) & 0x1 == 1;
  if (IORD(SWITCH_PIO_BASE, 0) & 0x1 == 1){
	  communication_mode = 1;
	  printf("We are in interrupt mode\n");
  }
  if (IORD(SWITCH_PIO_BASE, 0) & 0x1 == 0){
	  communication_mode = 0;
	  printf("We are in tight polling mode\n");
  }
  //printf("%i, %i", communication_mode, test);
  //printf("hey: %i", communication_mode);
  // 0 when pressed, 1 when unpressed
  while (IORD(BUTTON_PIO_BASE, 0) & 0x1 == 1){
	  if ((IORD(SWITCH_PIO_BASE, 0) & 0x1) == 1 && communication_mode == 0){
		 communication_mode = 1;
		 printf("We are in interrupt mode\n");
	  }
	  if ((IORD(SWITCH_PIO_BASE, 0) & 0x1) == 0 && communication_mode == 1){
		 communication_mode = 0;
		 printf("We are in tight polling mode\n");
	  }
  }
  int PULSE_WIDTH;
  int PULSE_PERIOD;
  int multiplier;
  multiplier = 1;
  while (multiplier <= 2500){
	  PULSE_WIDTH = multiplier;
	  PULSE_PERIOD = multiplier * 2;
	  if (communication_mode == 0){
		  int background_count;

		  double latency;
		  int missed;
		  int multi;
		  int count;
		  int num_backgrounds;
		  int data;
		  int x;


		  background_count = 0;
		  num_backgrounds = 0;
		  x = 0;
		  IOWR(STIMULUS_IN_BASE, 2, 1);

		  IOWR(EGM_BASE, 2, PULSE_PERIOD);
		  IOWR(EGM_BASE, 3, PULSE_WIDTH);
		  IOWR(EGM_BASE, 0, 1);

		  while (IORD(STIMULUS_IN_BASE, 0) == 0 && IORD(EGM_BASE, 1)){}
		  respond_to_pulse();
/*
		  while (IORD(STIMULUS_IN_BASE, 0) == data && IORD(EGM_BASE, 1)){
				  background();
				  num_backgrounds++;
			  }

		  data = IORD(STIMULUS_IN_BASE, 0);
		  while (IORD(STIMULUS_IN_BASE, 0) == data && IORD(EGM_BASE, 1)){
			  background();
			  num_backgrounds++;
		  }

*/
		  while (IORD(STIMULUS_IN_BASE, 0) == 1 && IORD(EGM_BASE, 1)){
				  background();
				  num_backgrounds++;
			  }


		  while (IORD(STIMULUS_IN_BASE, 0) == 0 && IORD(EGM_BASE, 1)){
				  background();
				  num_backgrounds++;
			  }

		  respond_to_pulse();
		  num_backgrounds--;

		  //while (IORD(STIMULUS_IN_BASE, 0) && IORD(EGM_BASE, 1)){}

		  while (IORD(EGM_BASE, 1)){
			  count = 0;
			  while (count < num_backgrounds){
				  background();
				  count++;
			  }
			  while (IORD(STIMULUS_IN_BASE, 0) && IORD(EGM_BASE, 1)){}
			  background_count = background_count + count;
			  while (IORD(STIMULUS_IN_BASE, 0) == 0 && IORD(EGM_BASE, 1)){}
			  respond_to_pulse();
		  }
		  latency = IORD(EGM_BASE, 4);
		  missed = IORD(EGM_BASE, 5);
		  multi = IORD(EGM_BASE, 6);
		  IOWR(EGM_BASE, 0, 0);
		  printf("%i, %i, %i, %i, %f, %i, %i\n", PULSE_PERIOD, PULSE_WIDTH, num_backgrounds, background_count, latency, missed, multi);
	  }
	  if (communication_mode == 1){
		  int background_count;

		  double latency;
		  int missed;
		  int multi;

		  background_count = 0;


		  alt_irq_register( STIMULUS_IN_IRQ, (void *)0, isr_lab1);
		  IOWR(STIMULUS_IN_BASE, 2, 1);
		  IOWR(EGM_BASE, 2, PULSE_PERIOD);
		  IOWR(EGM_BASE, 3, PULSE_WIDTH);
		  IOWR(EGM_BASE, 0, 1);

		  while (IORD(EGM_BASE, 1) == 1){
			background();
			background_count++;
		  }
		  latency = IORD(EGM_BASE, 4);
		  missed = IORD(EGM_BASE, 5);
		  multi = IORD(EGM_BASE, 6);
		  IOWR(EGM_BASE, 0, 0);
		  printf("%i, %i, %i, %f, %i, %i\n", PULSE_PERIOD, PULSE_WIDTH, background_count, latency, missed, multi);

		  return 0;
	  }
	  multiplier++;
	}
}

static void isr_lab1 (void *context, alt_u32 id){
  IOWR(RESPONSE_OUT_BASE, 0, 1);
  IOWR(RESPONSE_OUT_BASE, 0, 0);
  IOWR(STIMULUS_IN_BASE, 3, 0);
}

int respond_to_pulse(){
	IOWR(RESPONSE_OUT_BASE, 0, 1);
	IOWR(RESPONSE_OUT_BASE, 0, 0);
	return IORD(STIMULUS_IN_BASE, 0);
}

int background()
{
int j;
int x = 0;
int grainsize = 4;
int g_taskProcessed = 0;

for(j = 0; j < grainsize; j++)
{
g_taskProcessed++;
}
return x;
}
