import CLaSH.Prelude hiding (mealey)

mealy :: (s -> i -> (s, o)) 
      -> s  
      -> Signal i -> Signal o
mealy f d i = o where
        (s,o) = unbundle $ liftA2 f (register d s) i


