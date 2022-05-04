# Modified Secant Algorithm

## How to use this function.
- Modified secant is a root finding method that is built off of the original secant method. This method only needs one initial guess in order to find the  root of said function. This is an 'open method' so it will go faster than a 'closed method' but might make an error due to the type of equation you are finding the root of or your initial guess. In order to use this correctly try to infer where the root is and pick a initial guess that is close to your inference.

## Function Variables
### Outputs
1. root: the root that was found from the modified secant method
2. fx: y value of the root that was found(based off of equation used in inputs)
3. ea: approximate error on the last iteration
4. iter: how many times the function went through to find the best answer based off of the stopping criterion.

### Inputs
1. f: function you want to find the root of
2. x0: initial guess of where the root is
3. es: stopping criterion, so basically it is where the iterations when the error is less than this
4. d: delta which is a small number inputted by the user(any small number is fine such as 1E-4)

## Limitations
- The line created might nto converge and not hit the x-axis.
