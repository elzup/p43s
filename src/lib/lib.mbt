/// Check if a string matches the p43s numeronym pattern
/// (starts with 'p', ends with 's', and has exactly 43 characters in between)
pub fn isP43s(s : String) -> Bool {
  let len = s.length()
  if len != 45 {
    return false
  }
  s[0] == 'p' && s[len - 1] == 's'
}
