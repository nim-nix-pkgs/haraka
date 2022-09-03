# Haraka v2

Haraka v2 is a secure and efficient short-input (256 or 512 bits) hash function, designed 
to be very fast on modern platforms which support AES-NI. One of the main applications 
for such a design is the use in hash-based signature schemes like XMSS and SPHINCS.
For more information see our [paper](https://eprint.iacr.org/2016/098).

## Implementation

This is implementation is in pure Nim and does not yet make use of AES-NI instructions.
It may be useful for building and testing hash-based signature schemes, but should be
considered underperformant.

## Reference

Haraka v2 - Efficient Short-Input Hashing for Post-Quantum Applications

Stefan Kölbl and Martin M. Lauridsen and Florian Mendel and Christian Rechberger
https://eprint.iacr.org/2016/098
