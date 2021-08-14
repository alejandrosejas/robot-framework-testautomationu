*** Settings ***


*** Test Cases ***
Using Variable  
  # Log a message, with a literal string. No Variable are used here.
  Log to Console   My name is Alejandro. My favorite color is Blue. My favorite NFL team is the Jaguars.

  # Log the same message, but this time we use the variables we set up in the variables section.
  Log to Console   My name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.

*** Variables ***
${name}  Alejandro
${color}  Blue
${team}   Jaguars