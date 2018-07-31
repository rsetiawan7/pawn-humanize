#include "humanize.inc"

main() {
    // ---
    // Thousands Seperator
    // ---
    new numbers[] = {
        10, 100, 1000, 10000, 100000, 1000000, -100000
    };

    new result[14 + 1];
    for(new i = 0; i < sizeof(numbers); i++){
        HumanizeThousand(numbers[i], result);
        print(result);
    }

    // You can change the delimiter. By default, the delimiter
    // is a comma.
    for(new i = 0; i < sizeof(numbers); i++){
        HumanizeThousand(numbers[i], result, sizeof(result), ".");
        print(result);
    }

    // ---
    // Colors
    // ---
    new color[32];
    HumanizeColor(0xA86420FF, color); // "Chocolate Brown"
    print(color);

    HumanizeColor(0x42F44EFF, color); // "Lime Green"
    print(color);

    HumanizeColor(0x137A8EFF, color); // "Teal"
    print(color);

    // ---
    // Ordinals
    // ---
    new ordinal[32];

    for(new i = 0; i < 5; i++)
    {
        HumanizeOrdinal(i + 1, ordinal);
        printf("You got %s place!", ordinal);
    }

    // ---
    // Numbers
    // ---
    new number[500];
    HumanizeNumber(0, number); // "zero"
    print(number);
    HumanizeNumber(1000, number); // "one thousand"
    print(number);
    HumanizeNumber(1234, number); // "one thousand two hundred thirty-four"
    print(number);
    HumanizeNumber(12345, number); // "twelve thousand three hundred forty-five"
    print(number);
    HumanizeNumber(-12345, number); // "minus twelve thousand three hundred forty-five"
    print(number);
}
