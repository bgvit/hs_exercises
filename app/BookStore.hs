type CustomerID = Int
type Address = [String]

data Customer = Customer {
      customerID      :: CustomerID
    , customerName    :: String
    , customerAddress :: Address
    } deriving (Show)


data BookInfo = Book Int String [String]
                deriving (Show)
