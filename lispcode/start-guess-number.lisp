(defun start-guess-number ()
  (defparameter number (+ 1 (random 100)))
  (defparameter tries 0)
  (format t "The computer has guessed a number between 1 and 100 ~%")
  (play-game))

(defun play-game ()
  (format t "enter an number between 1 and 100:  ")
  (incf tries)
  (let ((guess (read)))
    (cond
      ((= number guess)
       (format t "You guessed the number! It took you ~a tries.~%" tries))
      ((> number guess)
       (format t "Your guess was too small.~%")
       (play-game))
      ((< number guess)
       (format t "Your guess was too big.~%")
       (play-game)))))



    
