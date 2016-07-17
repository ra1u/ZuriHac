module Integrator where
import CLaSH.Prelude

integrator i = r where
    r = liftA2 (+) i (register 0 r)  

topEntity :: Signal (Signed 10) ->  Signal (Signed 10)
topEntity = integrator

fib = register 1 (liftA2 (+) fib (register 0 fib)) 

integratorMealy :: Num a => Signal a -> Signal a
integratorMealy  = mealy f 0 where
    f s i = (o,o) where
      o = s + i
