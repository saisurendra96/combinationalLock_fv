**Combinational Lock**

When coverpoint Page93_c2 opened, it was observed that the lock was opened at cycle 2, but according the specification sheet, the lock should open when particular combination of digits were observed in the last three cycles, i.e, the lock shouldn't open before fourth cycle. Also, the oveeride is high, so the lock will be open even if there are correct combination of digits. By debugging, I found that the assumption for override to be low was forgotten to be added in the file. The bug can be seen in cover point bug image. The bug was fixed by adding the assumption page99_fix1 which is about making the oveeride 0 as shown.

Even after adding the assumption, the assertions are failing and found that there is an incorrection in the combination lock. So changed the combination lock in line 20, 21, 22. After that, I found that the one assertion passed and remaining three assertions (Page95_open_bad2, Page95_open_bad1, Page95_open_bad0) were failed. I debugged it, and found that in line 55, digit_val is assigned to logic 0 and it should be logic 1. Changed it to logic 1 and all assertions were passed.
