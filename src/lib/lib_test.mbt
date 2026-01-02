test "isP43s with valid p43s string" {
  // 45 chars: p + 43 chars + s
  assert_eq(isP43s("p0123456789012345678901234567890123456789012s"), true)
}
test "isP43s with upppercase P and S" {
  assert_eq(isP43s("Pneumonoultramicroscopicsilicovolcanoconiosis"), true)
  assert_eq(isP43s("P" + "x".repeat(43) + "S"), true)
  assert_eq(isP43s("p" + "x".repeat(43) + "S"), true)
}

test "isP43s with wrong length" {
  assert_eq(isP43s("ps"), false)
  assert_eq(isP43s("hello"), false)
}

test "isP43s with wrong start" {
  assert_eq(isP43s("x0123456789012345678901234567890123456789012s"), false)
}

test "isP43s with wrong end" {
  assert_eq(isP43s("p0123456789012345678901234567890123456789012x"), false)
}
