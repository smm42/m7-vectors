# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("red", "blue", "green", "orange", "purple", "yellow")

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(a) {
  guess = sample(marbles, 1)
  if(identical(a, guess)) {
    return (paste("You guessed", a, "correctly.  Nice!", sep = " "))
  } else {
    return (paste("You guessed wrong.  It was", guess, sep = " "))
  }
}

# Play the marble game!
MarbleGame("blue")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
BonusMarbleGame <- function(a) {
  not.guessed <- TRUE
  tries <- 1
  while(not.guessed){
    guess = sample(marbles, 1)
    if(identical(a, guess)) {
      not.guessed <- FALSE
    } else {
      tries <- tries + 1
    }
  }
  # return (paste("You guessed", a, "correctly.  Nice!  It took you", tries, "guesses!", sep = " "))
  return(tries)
}

BonusMarbleGame("blue")
## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability

arr <- replicate(1000, BonusMarbleGame("blue"), simplify = "array")
