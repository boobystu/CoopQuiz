function ReadQuestionFile()
  local file = io.open("questions.txt", "r")

  for line in file:lines() do
    if line ~= "" then
      table.insert (questions, line)
    end
  end
  file:close()
end

function string:split( inSplitPattern, outResults )
  if not outResults then
    outResults = { }
  end
  local theStart = 1
  local theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
  while theSplitStart do
    table.insert( outResults, string.sub( self, theStart, theSplitStart-1 ) )
    theStart = theSplitEnd + 1
    theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
  end
  table.insert( outResults, string.sub( self, theStart ) )
  return outResults
end

function PopulateQuestionAndAnswers()

  local allTextItems = questions[questionCounter]:split(",")

  questionText = allTextItems[1]
  answerTextA = allTextItems[2]
  answerTextB = allTextItems[3]
  answerTextC = allTextItems[4]
  answerCorrectText = allTextItems[5]

  if answerTextA == answerCorrectText then
    answerCorrectOption = "A"
  elseif answerTextB == answerCorrectText then
    answerCorrectOption = "B"
  elseif answerTextC == answerCorrectText then
    answerCorrectOption = "C"
  end

end
