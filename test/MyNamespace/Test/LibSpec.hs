module MyNamespace.Test.LibSpec where

import MyNamespace.Lib
import Test.Hspec

spec :: Spec
spec = do
  it "should succeed" $
    libString `shouldBe` "lib"
