% on(a,b) a is lying on b
on(block1, block2).
on(block2, block3).
on(block3, block4).
on(block4, block5).
on(block5, block6).
on(block6, block7).

above(BlockX, BlockY) :- on(BlockX, BlockZ), above(BlockZ, BlockY).
above(BlockX, BlockY) :- on(BlockX, BlockY).
