require "FileAndTextOperations"
require "GraphicsOperations"
require "Player"
require "QuestionOperations"

questions = {}

playerOne = {}
playerTwo = {}

questionText = ""
answerTextA = ""
answerTextB = ""
answerTextC = ""
answerCorrectText = ""
answerCorrectOption = ""

questionCounter = 1

score = 0

tryAgainFlag = false

function love.load(arg)

  SetupPlayers()

  ReadQuestionFile()

end

function love.update(dt)

  if questionCounter > #questions then
    return
  end

  PopulateQuestionAndAnswers()

  if AnswersCorrect() then
    questionCounter = questionCounter + 1
  end

end

function love.draw()

  if questionCounter > #questions then
    DisplayGameOver()
    return
  end

  if tryAgainFlag == true then
    DisplayTryAgain()
  end

  DisplayQuestions()

  DisplayPlayerOptions(playerOne)
  DisplayPlayerOptions(playerTwo)

end
