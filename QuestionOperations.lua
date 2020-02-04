function love.keyreleased(key)
  CheckPlayerInput(key, playerOne)
  CheckPlayerInput(key, playerTwo)
end

function CheckPlayerInput(key, objPlayer)
  if key == objPlayer.optionA then
    objPlayer.givenAnswer = "A"
  elseif key == objPlayer.optionB then
    objPlayer.givenAnswer = "B"
  elseif key == objPlayer.optionC then
    objPlayer.givenAnswer = "C"
  end
end

function AnswersCorrect()

  if playerOne.givenAnswer == "" then
    return false
  end

  if playerTwo.givenAnswer == "" then
    return false
  end

  if playerOne.givenAnswer ~= playerTwo.givenAnswer then
    tryAgainFlag = true
    ResetPlayers()
    return false
  end

  if playerOne.givenAnswer == answerCorrectOption then
    tryAgainFlag = false
    ResetPlayers()
    return true
  else
    tryAgainFlag = true
    ResetPlayers()
    return false
  end

end
