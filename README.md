# Pokerware Secure Passphrase Generator

Pokerware is an offline secure passphrase generator that operates just
like [Diceware][dw] except that it uses a deck of playing cards instead
of dice. In some situations a deck may be more readily available than
dice. Pokerware draws from 5,304 words, in contrast to Diceware's 7,776
words.

## Passphrase generation

1. Thoroughly shuffle the deck. [Six or seven riffle shuffles][shuffle]
   should be sufficient.

2. Draw two cards. Sort them by value, then suit. Suits are in
   alphabetical order: Clubs, Diamonds, Hearts, Spades.

3. Draw additional cards until you get a card that doesn't match the
   face value of either of your initial two cards. Observe its suit.

4. Using your two cards and observed suit, look up a word in the table.

5. Place all cards back in the deck, shuffle a few times, and repeat
   from step 2 until you have the desired number of words. Each word is
   worth 12.4 bits.

For example, suppose in step 2 you draw King of Spades (KS, K♠) and
Queen of Clubs (QC, Q♣). In step 3 you first draw King of Diamonds (KD,
K♦), discarding it because it matches the face value of one of your
cards from step 2. Next you draw Four of Spades (4S, 4♠), taking spades
as your extra suit. In order, this gives you Queen of Clubs, King of
Spades, and Spades: QCKSS or Q♣K♠♠. This corresponds to "wolves" in the
formal word list.

## PDF / postscript build

Choose a word list (formal, slang) and listing type (ascii, unicode) and
run it with make.

    $ make LIST=slang TYPE=unicode pdf

Which will produce `pokerware.pdf` with the selected configuration.


[dw]: http://www.diceware.com/
[shuffle]: https://possiblywrong.wordpress.com/2011/03/27/card-shuffling-youre-not-done-yet/
