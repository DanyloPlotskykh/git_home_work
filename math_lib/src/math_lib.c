#include "math_lib.h"

uint32_t MATH_add(uint32_t a, uint32_t b)
{
    return (UINT32_MAX - a < b) ? UINT32_MAX : (a + b);
}

uint32_t MATH_sub(uint32_t a, uint32_t b)
{
    return (b > a) ? 0 : (a - b);
}