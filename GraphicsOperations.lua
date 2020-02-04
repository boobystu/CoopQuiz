questionAreaMinX = 200
incrementY = 50
questionY = 200
answerAY = questionY + incrementY
answerBY = answerAY + incrementY
answerCY = answerBY + incrementY
wrapPoint = 450

fonts = {}
fonts.large = love.graphics.newFont("assets/manaspc.ttf", 20)
love.graphics.setFont(fonts.large)

function DisplayQuestions()

  love.graphics.printf("Q:" .. questionText, questionAreaMinX, questionY, wrapPoint)
  love.graphics.printf("A:" .. answerTextA, questionAreaMinX, answerAY, wrapPoint)
  love.graphics.printf("B:" .. answerTextB, questionAreaMinX, answerBY, wrapPoint)
  love.graphics.printf("C:" .. answerTextC, questionAreaMinX, answerCY, wrapPoint)

end

function SetupWindowSize()



end

function DisplayTryAgain()
  love.graphics.setColor(255, 0, 0, 255)

  love.graphics.print("Try Again!" , questionAreaMinX, questionY - incrementY)

  love.graphics.setColor(255, 255, 255, 255)
end

function DisplayGameOver()

end

function DisplayPlayerOptions(objPlayer)

  if objPlayer.givenAnswer ~= "" then
    love.graphics.setColor(0, 255, 0, 255)
  end

  love.graphics.print("A = " .. objPlayer.optionA, objPlayer.positionX, answerAY)
  love.graphics.print("B = " .. objPlayer.optionB, objPlayer.positionX, answerBY)
  love.graphics.print("C = " .. objPlayer.optionC, objPlayer.positionX, answerCY)

  love.graphics.setColor(255, 255, 255, 255)

end
