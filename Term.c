#include <stdio.h>
#include <termios.h>

int main()
{
    struct termios old_settings, new_settings;
    tcgetattr(0, &old_settings); // get current terminal settings
    new_settings = old_settings;
    new_settings.c_lflag &= ~(ICANON | ECHO); // disable canonical mode and echoing of input characters
    tcsetattr(0, TCSANOW, &new_settings); // set new terminal settings
    printf("Enter a character: ");
    char c = getchar(); // read a character from the terminal
    printf("\nYou entered: %c\n", c);
    tcsetattr(0, TCSANOW, &old_settings); // restore original terminal settings
    return 0;
}

