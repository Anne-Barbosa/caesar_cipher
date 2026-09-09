# Caesar Cipher (Ruby)

A classic "intro to programming" project built as part of **The Odin Project** curriculum. The goal is to implement a Caesar cipher — a simple substitution encryption technique.

## What does it do?
The program takes a string and a shift factor, then returns a modified string encrypted using a right shift.

### Key Features:
* **Case Preservation:** Keeps uppercase and lowercase letters intact.
* **Special Character Support:** Leaves spaces, punctuation, and other non-alphabetical characters untouched (`!`, `,`, etc.).
* **Alphabet Wrap-Around:** Uses the modulo operator (`%`) to seamlessly wrap from `z` back to `a`.

## Example Usage

You can test it directly in your script or using IRB:

```ruby
caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"