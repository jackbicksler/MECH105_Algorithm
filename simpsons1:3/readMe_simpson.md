# Simpson's 1/3 Method

## How to use.
- The simpson's 1/3 rule is a integration technique that is similar to the trapezoidal rule. This code returns a value that is the integration of a set of points. These points have to be in array form, and have to be linearly spaced as well have the same amount of points for x and y. When plugging your arrays into the function it will give an answer by using multiple Simpson's 1/3 iterations for one set of data. If there is an even amount of points the trapezoidal rule will be used for the last interval.

## Function Variables
### Inputs
1. x: independent variable, set of points in array format
2. y: dependent variable, set of points in array format

### Outputs
1. I: final answer, approximate integration value

## Limitations
- Simpsons 1/3 rule is an accurate estimate of an integral but not exact. Some other rules such as Simpson's 3/8 rule or actual integration.
