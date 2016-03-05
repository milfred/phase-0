# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The file name is errors.rb.
# 2. What is the line number where the error occurs?
# The error occurs on line 170.
# 3. What is the type of error message?
# It's a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter states "unexpected end-of-input" and that it was expecting the keyword "end."
# 5. Where is the error in the code?
# The interpreter indicates that the error appears at the end of the entire file because of the missing end after the while statement.
# 6. Why did the interpreter give you this error?
# There should be an "end" keyword to close the while statement as well as the one to close the method.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# It's on line 36.
# 2. What is the type of error message?
# It's a NameError.
# 3. What additional information does the interpreter provide about this type of error?
# It states "undefined local variable or method `south_park' for main."
# 4. Where is the error in the code?
# No specific point in the code was indicated by the interpreter.
# 5. Why did the interpreter give you this error?
# Because a variable is being called, but a value hasn't been assigned to it yet.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# It's on line number 51.
# 2. What is the type of error message?
# It's a NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
# It states "undefined method `cartman' for main:Object."
# 4. Where is the error in the code?
# No specific point in the code was indicated by the interpreter.
# 5. Why did the interpreter give you this error?
# The method "cartman" is being called, but there is no method with this name.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# It's on line 66.
# 2. What is the type of error message?
# The error is an ArguementError
# 3. What additional information does the interpreter provide about this type of error?
# It status "wrong number of arguments (0 for 1)."
# 4. Where is the error in the code?
# No specific point in the code was indicated by the interpreter.
# 5. Why did the interpreter give you this error?
# When the method is called, an arguement is being passed, but the method doesn't take an arguement.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# It's on line 89.
# 2. What is the type of error message?
# It's an ArguementError
# 3. What additional information does the interpreter provide about this type of error?
# It states "wrong number of arguments (0 for 1)."
# 4. Where is the error in the code?
# No specific point in the code was indicated by the interpreter.
# 5. Why did the interpreter give you this error?
# Beause the method "cartman_says" requires an arguement, but when the method is called on line 89, no arguement has been specified.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# On line number 106.
# 2. What is the type of error message?
# It's an ArguementError
# 3. What additional information does the interpreter provide about this type of error?
# It states "wrong number of arguments (1 for 2)."
# 4. Where is the error in the code?
# No specific point in the code was indicated by the interpreter.
# 5. Why did the interpreter give you this error?
# The method takes two arguements, but when it is called on line number 110, only one arguement is passed.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# It's on line 125.
# 2. What is the type of error message?
# It's a TypeError.
# 3. What additional information does the interpreter provide about this type of error?
# It states "String can't be coerced into Fixnum"
# 4. Where is the error in the code?
# No specific point in the code was indicated by the interpreter.
# 5. Why did the interpreter give you this error?
# Because the integer 5 can't be multiplied "Respect my authoritay!" times. If the result desired was to repeat the phrase five times, it should have been written as "Respect my authoritay!" * 5.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# It's on line number 140.
# 2. What is the type of error message?
# It's a ZeroDivisionError.
# 3. What additional information does the interpreter provide about this type of error?
# It states "divided by 0."
# 4. Where is the error in the code?
# No specific point in the code was indicated by the interpreter.
# 5. Why did the interpreter give you this error?
# Because the code is attempting to divide an integer by zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# It's on line number 156.
# 2. What is the type of error message?
# It's a LoadError message.
# 3. What additional information does the interpreter provide about this type of error?
# It states "cannot load such file -- /Users/jasonmilfred/phase-0/phase-0/cartmans_essay.md."
# 4. Where is the error in the code?
# No specific point in the code was indicated by the interpreter.
# 5. Why did the interpreter give you this error?
# The file "cartmans_essay.md" doesn't exist in the current directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# There wasn't a specific error that was particularly difficult. What threw me off the most was that, according to the example in release 1, the type of error is always stated directly after the line number. However, most of the errors indicated the line number, then stated something like "in 'require_relative'." I tried looking the first one up, but that doesn't seem to be the actual error type. My assumption was that the actual arror type was being stated toward the end of the message in parantheses like (LoadError). I'm not sure if that's correct. Also, most of the messages did not include a caret (or arrow character) indicating exactly where the error is located.
# How did you figure out what the issue with the error was?
# For most of them the error message provided enough clues that I was able to figure it out without having to look up any reference material.
# Were you able to determine why each error message happened based on the code?
# I believe that I was able to do this.
# When you encounter errors in your future code, what process will you follow to help you debug?
# I will first read the entire error message. Then look at the line indicated by the interpreter, assess that line of code, and see if I can see any obvious errors. If none are apparent, I will do some research online about the type of error message and the possible reasons I might receive it. If I still can't find the answer within a reasonable amount of time, I plan to ask someone wiser than me for help.