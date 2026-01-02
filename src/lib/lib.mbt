///|
/// Check if a string matches the p43s numeronym pattern
/// (starts with 'p' or 'P', ends with 's' or 'S', and has exactly 43 characters in between)
///
/// ```mbt test
/// inspect(isP43s("Pneumonoultramicroscopicsilicovolcanoconiosis"), content="true")
/// inspect(isP43s("hello"), content="false")
/// ```
pub fn isP43s(s : String) -> Bool {
  let len = s.length()
  if len != 45 {
    return false
  }
  (s[0] == 'p' || s[0] == 'P') && (s[len - 1] == 's' || s[len - 1] == 'S')
}

test "valid p43s" {
  inspect(isP43s("p0123456789012345678901234567890123456789012s"), content="true")
  inspect(isP43s("P" + "x".repeat(43) + "S"), content="true")
  inspect(isP43s("p" + "x".repeat(43) + "S"), content="true")
}

test "wrong length" {
  inspect(isP43s("ps"), content="false")
  inspect(isP43s("hello"), content="false")
}

test "wrong start" {
  inspect(isP43s("x0123456789012345678901234567890123456789012s"), content="false")
}

test "wrong end" {
  inspect(isP43s("p0123456789012345678901234567890123456789012x"), content="false")
}
