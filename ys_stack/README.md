## ys_stack

**ys_stack** sets a maximum limit for how many items may stack instead of using a global fixed value that is applied to all inventory items/nodes. 

Due to using the unsigned 16-bit integer, the logical maximum is `65,535`. Anything greater than this value is ignored.
Using negative numbers means items will never stack of the same type.
