function SetupPlayers()

  playerOne.optionA = "w"
  playerOne.optionB = "s"
  playerOne.optionC = "x"
  playerOne.positionX = 50
  playerOne.givenAnswer = ""

  playerTwo.optionA = "o"
  playerTwo.optionB = "k"
  playerTwo.optionC = "m"
  playerTwo.positionX = 700
  playerTwo.givenAnswer = ""
  

end

function ResetPlayers()
  playerOne.givenAnswer = ""
  playerTwo.givenAnswer = ""
end
