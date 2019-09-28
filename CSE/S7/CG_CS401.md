---
title: Computer Graphics
subtitle: KTU S7 CSE CS401
---

# Basic Concepts in Computer Graphics



# Primitive Drawing Algorithm
## Line Drawing Algorithms
Lines are the most primitive of objects in Computer Graphics.The slope $m$ can be used to calculate the change in $x$ and $y$ using the formula.

$$
\Delta x = m \cdot \Delta y
$$

### Digital Differential Analyzer

```
#define ROUND(a) (a + 0.5)

void lineDDA(int xa, int ya, int xb, int yb) {
  int dx = xa - xb, dy = ya - yb, steps, k;
  float xIncrement, yIncrement, x = xa, y = ya;
  
  if(abs(dx) > abs(dy)) steps = dx 
  else steps = dy;
  xIncrement = dx / (float) steps;
  yIncrement = dy / (float) steps;
  
  setPixel(ROUND(x), ROUND(y));
  for(k=0; k<steps; k++) {
    x += xIncrement;
    y += yIncrement;
    setPixel(ROUND(x), ROUND(y));
  }
}
```

The DDA method is faster because we eliminate the mulitplicative expression, and substitutes it with appropriate increments. This is possible because it uses raster characteristics to calculate the points. 

There will be roundoff error in succesive calculations and this may cause the line to drift from it's original path when the line is long.

### Bresenham's Line Drawing Algorithm
It is used when the slope is less than one. It is a highly performant algorithm because it only uses addition and subsractions to plot the line and the mulitiplicative constants are calculated only once.

The algorithm is as follows

1. Input the two line endpoints and store the starting endpoint in $(x_0, y_0)$ .

2. Load $(x_0, y_0)$ into the frame buffer and plot the first point.
3. Calculate $\Delta x, \Delta y, 2\Delta y$ and $2\Delta y - 2\Delta x$, and obtain the starting value for the decision parameter as $p_0 = 2\Delta y - \Delta x$
4. At each $\Delta x$ along the line starting at $k=0$, if $p_k < 0$ the next point to plot is $(x_k+1, y_k)$ and $p_{k+1} = p_k + 2\Delta y$ else the next point is $(x_k+1, y_k+1)$ and $p_{k+1}=p_k + 2\Delta y - 2\Delta x$
5. Repeat Step 4 $\Delta x$ times


## Circle Drawing Algorithms
