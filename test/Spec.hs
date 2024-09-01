import           Test.Hspec
import           Test.QuickCheck

main :: IO ()
main =
  hspec $ do
    describe "Example test" $ do
      it "1 + 1 should equal 2" $ do
        (1 + 1) `shouldBe` 2
      it "is commutative" $ property $ \x y -> x + y == (y :: Int) + x
    describe "Prelude.head" $ do
      it "returns the first element of a list" $ do
        head [23 ..] `shouldBe` (23 :: Int)
      it "returns the first element of an *arbitrary* list"
        $ property
        $ \x xs -> head (x : xs) == (x :: Int)
