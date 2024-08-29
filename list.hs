import Data.Maybe

fromMaybe defval wrapped =
    case wrapped of
      Nothing     -> defval
      Just value  -> value