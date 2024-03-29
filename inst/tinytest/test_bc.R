
expect_equal(
  bc('1 2 "c", d'),
  c("1", "2", "c", "d"))

expect_equal(
  bc('1 2 3'),
  c(1, 2, 3)
)

expect_equal(
  bc('1 2 "3"'),
  c("1", "2", "3")
)

expect_equal(
  bc('1,2|3.4'),
  c(1, 2, 3.4)
)


expect_equal(
  bc('0xF7 10'),
  c(247, 10)
)

expect_equal(
  bc(''),
  NULL
)

expect_equal(
  bc('0x7,0x7'),
  c(7, 7)
)

expect_error(
  bc('0x70x7')
)

expect_equal(
  bc("'x\\''"),
  "x\\'"
)

expect_error(
  bc("'x''")
)


expect_equal(
  bc("TRUE FALSE"),
  c(TRUE, FALSE)
)

expect_error(
  bc("'x' y 7 + 3")
)

expect_equal(
  bc('"a|b" "c,d",f "g e"|q,"t\\"z"'),
  c("a|b", "c,d", "f", "g e", "q", "t\\\"z")
)

expect_equal(
  bc('"a|b"    "c,d"    "f"      "g e"    "q"      "t\\\"z"'),
    c("a|b",   "c,d",   "f",     "g e",   "q",     "t\\\"z")
)

# From Emil Bellamy Begtrup-Bright May 27, 2021
# test of lowercase non-english letters (Danish: æ, ø and å)
expect_equal(
  bc('person_id, geography, danish_letter_æ, danish_letter_ø, danish_letter_å'),
  c("person_id", "geography", "danish_letter_æ", "danish_letter_ø", "danish_letter_å")
)

# From Emil Bellamy Begtrup-Bright May 27, 2021
# test of mix of upcase non-english letters (Danish: Æ, Ø and Å)
expect_equal(
  bc('person_id, geography, danish_letter_Æ, danish_letter_Ø, danish_letter_Å'),
  c("person_id", "geography", "danish_letter_Æ", "danish_letter_Ø", "danish_letter_Å")
)


expect_equal(
  bc('01 02', convert=FALSE), c("01", "02")
)


expect_equal(
  bc('01 02'), c(1, 2)
)


