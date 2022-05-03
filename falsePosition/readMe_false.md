# False Position Algorithm

## How to use!
- This algorithm is a false position algorithm which is a root finding method. In order to use this you want 2 guesses that bracket the root (the actual root is inbetween these two values. Basically when this is done you use the slope-intercept formula to find the 'new' root which is found by creating a linear line from point ot point. After this you use the new value and previous values to find the two that bracket and keep going. Each time you find the approximate error by using the new root and the old root for every iteration.

## Function Values
### Outputs
1. root: the root that was found
2. fx: y value of the root
3. ea: relative error that was found in the final iteration
4. iter: number of times the code went through to find the best root

### Inputs
1. func: function that was input by the user
2. xl: first guess (brackets root with xu)
3. xu: first guess (brackets root with xl)
4. es: stopping criterion, what error you need to stop at
5. maxit: maximum number of iterations

## Limitations
- May not be able to solve with very strenuous and complex equations
