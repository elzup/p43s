/// Check if a string matches the p43s numeronym pattern
/// (starts with 'p' or 'P', ends with 's' or 'S', and has exactly 43 characters in between)
pub fn isP43s(s : String) -> Bool {
  let len = s.length()
  if len != 45 {
    return false
  }
  (s[0] == 'p' || s[0] == 'P') && (s[len - 1] == 's' || s[len - 1] == 'S')
}
