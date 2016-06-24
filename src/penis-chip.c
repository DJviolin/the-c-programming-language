/*
 * Penis Chip Code
 * Re-Imagined by Lanti for the Hungarian Chemtrail Fun Club
 *
 * Recommended compiling method:
 * $ clang -std=c11 -Wall -Wextra -Werror -g -Ofast -march=native -ffast-math \
 * chip.c -o chip
 *
 * Send your millions of dollars for the following PayPal address:
 * <ke*********@gmail.com>
 * With the following message: "Thank You for cutting development costs for us!"
 *
 * Spray We Pray!
 */

#include <stdbool.h>
#include <stdio.h>

int main(void) {
  static bool fucked;    // Someone just came in the wrong place, bro
  static bool earlyCum;  // We doesn't give a shit about unhappy endings
  static double gpsLat;  // Latitude
  static double gpsLon;  // Longitude

  // Dummy data for testing the app's output
  fucked = true;
  earlyCum = false;
  gpsLat = 47.275008;
  gpsLon = 19.326424;

  if (fucked == true && earlyCum == false) {
    printf(
        "Hey! Your man is having sexual intercourse at the moment.\n"
        "Are you at the other side?\n"
        "If the answer is no, than you know where is your knife!\n"
        "The GPS coordinates are: %9.6f° %9.6f°",
        gpsLat, gpsLon);
  } else if (fucked == true && earlyCum == true) {
    printf(
        "There's no problem honey, your man just drinking beer with his pals!\n"
        "You can continue to washing dishies!");
  } else {
    printf("Really there's no problem honey!");
  };

  printf("\n\nProgram finished execution!");

  return 0;
}
