import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec $ do
  describe "Example test" $ do
    it "1 + 1 should equal 2" $ do
      (1 + 1) `shouldBe` 2

    it "is commutative" $ property $
      \x y -> x + y == (y :: Int) + x

