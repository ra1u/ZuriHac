
import CLaSH.Prelude

fullAdder a b cin = (s,cout) where
    t = a `xor` b
    s = t `xor` cin
    cout = (t .&. cin) .|. (a .&. b) 

-- test
lh = [low,high]
test = [(a,b,cin,fullAdder a b cin) | cin <- lh,b <- lh,a <- lh]

-- 
topEntity :: Bit -> Bit -> Bit -> (Bit,Bit)
topEntity = fullAdder



