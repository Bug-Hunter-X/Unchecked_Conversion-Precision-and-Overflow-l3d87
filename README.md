# Ada Unchecked_Conversion Bug

This repository demonstrates a potential issue with Ada's `Unchecked_Conversion` function.  `Unchecked_Conversion` allows for the conversion of values between types without runtime checks for range or precision.  If the target type cannot accurately represent the source value, the results can be unexpected.

The example provided showcases this problem.  The `Integer` value 10 is converted to a `Float`. While this might seem benign, the problem becomes apparent when larger integers that exceed the precision of the Float type are used. This might lead to overflow, inaccurate representation or exception.

## Solution

The solution involves using checked conversion functions, or implementing custom conversion routines that include range and precision checks.