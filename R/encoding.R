# These vectors are from Bob Rudis (@hrbrmstr).
#
# See https://stackoverflow.com/questions/40976213/decoding-quoted-printable-string-in-r.

MAXLINESIZE = 76

ASCII_QP_ENCODED <- c(
  "=00", "=01", "=02", "=03", "=04", "=05", "=06", "=07", "=08", "=09", "=0A",
  "=0B", "=0C", "=0D", "=0E", "=0F", "=10", "=11", "=12", "=13", "=14", "=15",
  "=16", "=17", "=18", "=19", "=1A", "=1B", "=1C", "=1D", "=1E", "=1F", "=20",
  "=21", "=22", "=23", "=24", "=25", "=26", "=27", "=28", "=29", "=2A", "=2B",
  "=2C", "=2D", "=2E", "=2F", "=30", "=31", "=32", "=33", "=34", "=35", "=36",
  "=37", "=38", "=39", "=3A", "=3B", "=3C", "=3D", "=3E", "=3F", "=40", "=41",
  "=42", "=43", "=44", "=45", "=46", "=47", "=48", "=49", "=4A", "=4B", "=4C",
  "=4D", "=4E", "=4F", "=50", "=51", "=52", "=53", "=54", "=55", "=56", "=57",
  "=58", "=59", "=5A", "=5B", "=5C", "=5D", "=5E", "=5F", "=60", "=61", "=62",
  "=63", "=64", "=65", "=66", "=67", "=68", "=69", "=6A", "=6B", "=6C", "=6D",
  "=6E", "=6F", "=70", "=71", "=72", "=73", "=74", "=75", "=76", "=77", "=78",
  "=79", "=7A", "=7B", "=7C", "=7D", "=7E", "=7F", "=80", "=81", "=82", "=83",
  "=84", "=85", "=86", "=87", "=88", "=89", "=8A", "=8B", "=8C", "=8D", "=8E",
  "=8F", "=90", "=91", "=92", "=93", "=94", "=95", "=96", "=97", "=98", "=99",
  "=9A", "=9B", "=9C", "=9D", "=9E", "=9F", "=A0", "=A1", "=A2", "=A3", "=A4",
  "=A5", "=A6", "=A7", "=A8", "=A9", "=AA", "=AB", "=AC", "=AD", "=AE", "=AF",
  "=B0", "=B1", "=B2", "=B3", "=B4", "=B5", "=B6", "=B7", "=B8", "=B9", "=BA",
  "=BB", "=BC", "=BD", "=BE", "=BF", "=C0", "=C1", "=C2", "=C3", "=C4", "=C5",
  "=C6", "=C7", "=C8", "=C9", "=CA", "=CB", "=CC", "=CD", "=CE", "=CF", "=D0",
  "=D1", "=D2", "=D3", "=D4", "=D5", "=D6", "=D7", "=D8", "=D9", "=DA", "=DB",
  "=DC", "=DD", "=DE", "=DF", "=E0", "=E1", "=E2", "=E3", "=E4", "=E5", "=E6",
  "=E7", "=E8", "=E9", "=EA", "=EB", "=EC", "=ED", "=EE", "=EF", "=F0", "=F1",
  "=F2", "=F3", "=F4", "=F5", "=F6", "=F7", "=F8", "=F9", "=FA", "=FB", "=FC",
  "=FD", "=FE", "=FF", "=\r\n"
)

ASCII_QP_DECODED <- c(
  "", "\001", "\002", "\003", "\004", "\005", "\006", "\a", "\b", "\t", "\n",
  "\v", "\f", "\r", "\016", "\017", "\020", "\021", "\022", "\023", "\024",
  "\025", "\026", "\027", "\030", "\031", "\032", "\033", "\034", "\035",
  "\036", "\037", " ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+",
  ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":",
  ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I",
  "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X",
  "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g",
  "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
  "w", "x", "y", "z", "{", "|", "}", "~", "\177", "\x80", "\x81", "\x82",
  "\x83", "\x84", "\x85", "\x86", "\x87", "\x88", "\x89", "\x8a", "\x8b",
  "\x8c", "\x8d", "\x8e", "\x8f", "\x90", "\x91", "\x92", "\x93", "\x94",
  "\x95", "\x96", "\x97", "\x98", "\x99", "\x9a", "\x9b", "\x9c", "\x9d",
  "\x9e", "\x9f", "\xa0", "\xa1", "\xa2", "\xa3", "\xa4", "\xa5", "\xa6",
  "\xa7", "\xa8", "\xa9", "\xaa", "\xab", "\xac", "\xad", "\xae", "\xaf",
  "\xb0", "\xb1", "\xb2", "\xb3", "\xb4", "\xb5", "\xb6", "\xb7", "\xb8",
  "\xb9", "\xba", "\xbb", "\xbc", "\xbd", "\xbe", "\xbf", "\xc0", "\xc1",
  "\xc2", "\xc3", "\xc4", "\xc5", "\xc6", "\xc7", "\xc8", "\xc9", "\xca",
  "\xcb", "\xcc", "\xcd", "\xce", "\xcf", "\xd0", "\xd1", "\xd2", "\xd3",
  "\xd4", "\xd5", "\xd6", "\xd7", "\xd8", "\xd9", "\xda", "\xdb", "\xdc",
  "\xdd", "\xde", "\xdf", "\xe0", "\xe1", "\xe2", "\xe3", "\xe4", "\xe5",
  "\xe6", "\xe7", "\xe8", "\xe9", "\xea", "\xeb", "\xec", "\xed", "\xee",
  "\xef", "\xf0", "\xf1", "\xf2", "\xf3", "\xf4", "\xf5", "\xf6", "\xf7",
  "\xf8", "\xf9", "\xfa", "\xfb", "\xfc", "\xfd", "\xfe", "\xff", ""
)

# Indices of printable characters except "=".
#
PRINTABLE <- c(seq(33, 61), seq(63, 127))

# Indices of carriage return (\r) and line feed (\n).
#
LINFEED <- c(11)
CARRIAGE_RETURN <- c(14)

# Don't encode these characters.
ascii_qp_encoded <- ASCII_QP_ENCODED[-c(PRINTABLE, LINFEED, CARRIAGE_RETURN)]
ascii_qp_decoded <- ASCII_QP_DECODED[-c(PRINTABLE, LINFEED, CARRIAGE_RETURN)]

# Can't search for empty strings.
ascii_qp_encoded <- ascii_qp_encoded[ascii_qp_decoded != ""]
ascii_qp_decoded <- ascii_qp_decoded[ascii_qp_decoded != ""]

#' Quoted-Printable encoding
#'
#' Encode to and decode from Quoted-Printable encoding.
#'
#' @name qp
#'
#' @param x A string for encoding or decoding.
#' @return An encoded string for \code{qp_encode()} or a decoded string for \code{qp_decode()}.
NULL

#' @rdname qp
#' @param crlf End-of-line characters.
#'
#' @export
#' @examples
#' qp_encode("Mieux vaut être seul que mal accompagné.")
qp_encode <- function(x, crlf = CRLF) {
  stopifnot(length(x) == 1)

  # Split into lines.
  x <- str_split(x, "(\n|\r\n|\n\r)") %>% unlist()

  # Encode each line.
  #
  x <- stri_replace_all_fixed(x, ascii_qp_decoded, ascii_qp_encoded, vectorize_all = FALSE)

  find_line_breaks <- function(l) {
    len = nchar(l)

    lhs <- 1
    breaks <- c()
    while (TRUE) {
      rhs <- lhs + MAXLINESIZE - 2
      # Check if line ends in middle of encoded symbol.
      offset <- regexpr("=", substr(l, rhs - 1, rhs))
      offset <- ifelse(offset == -1, 0, 3 - offset)
      rhs <- rhs - offset
      breaks <- c(breaks, rhs)
      if (rhs >= len) break
      lhs <- rhs + 1
    }

    rhs <- breaks
    lhs <- c(0, breaks[1:length(breaks) - 1]) + 1

    paste(str_sub(l, lhs, rhs), collapse = "=\n")
  }

  lapply(x, find_line_breaks) %>%
    paste(collapse = crlf)
}

#' @rdname qp
#'
#' @export
#' @examples
#' qp_decode("Mieux vaut =C3=AAtre seul que mal accompagn=C3=A9.")
qp_decode <- function(x) {
  stopifnot(length(x) == 1)

  x %>%
    # Handle soft line breaks ()
    stri_replace_all_regex("=\\n", "", vectorize_all=FALSE) %>%
    stri_replace_all_fixed(ASCII_QP_ENCODED, ASCII_QP_DECODED, vectorize_all = FALSE)
}
