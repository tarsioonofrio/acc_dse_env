library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    713, 734, 729, 738, 729, 722, 746, 765, 740, 683, 626, 624, 643, 649, 629, 
    714, 737, 746, 753, 748, 784, 751, 707, 618, 531, 487, 453, 489, 592, 630, 
    614, 636, 746, 755, 754, 788, 653, 486, 414, 515, 560, 491, 432, 424, 580, 
    488, 450, 733, 760, 721, 638, 608, 467, 421, 553, 614, 506, 427, 325, 478, 
    646, 620, 745, 784, 853, 737, 679, 490, 383, 476, 667, 521, 426, 358, 344, 
    699, 738, 778, 692, 805, 820, 759, 572, 394, 545, 762, 539, 457, 429, 340, 
    715, 709, 687, 658, 598, 762, 850, 670, 507, 604, 726, 499, 430, 477, 461, 
    784, 743, 600, 634, 609, 819, 743, 619, 522, 624, 700, 508, 444, 511, 551, 
    836, 796, 617, 620, 614, 624, 608, 531, 533, 603, 585, 443, 359, 507, 642, 
    847, 812, 659, 573, 632, 496, 605, 672, 531, 573, 421, 291, 373, 619, 707, 
    740, 819, 670, 717, 853, 611, 657, 742, 554, 368, 281, 291, 352, 462, 470, 
    491, 723, 754, 941, 939, 518, 404, 393, 347, 301, 294, 301, 313, 336, 329, 
    288, 444, 730, 968, 590, 321, 306, 294, 286, 276, 287, 312, 342, 344, 355, 
    294, 277, 529, 761, 410, 327, 318, 294, 291, 298, 298, 315, 298, 311, 347, 
    306, 266, 312, 405, 292, 283, 318, 314, 325, 336, 309, 288, 364, 400, 277, 
    
    -- channel=1
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 40, 0, 0, 3, 86, 179, 112, 30, 0, 0, 
    9, 0, 0, 0, 0, 80, 61, 54, 79, 266, 368, 282, 199, 34, 0, 
    202, 13, 0, 0, 0, 38, 218, 211, 197, 274, 320, 231, 190, 80, 0, 
    445, 348, 46, 62, 427, 396, 385, 240, 177, 164, 366, 262, 193, 146, 17, 
    538, 491, 106, 45, 427, 427, 420, 287, 194, 264, 491, 281, 226, 222, 130, 
    532, 532, 115, 0, 197, 341, 532, 369, 287, 371, 462, 268, 207, 248, 212, 
    587, 584, 307, 122, 172, 517, 499, 333, 232, 294, 388, 272, 230, 257, 91, 
    679, 664, 457, 331, 233, 300, 256, 250, 233, 192, 232, 193, 122, 92, 9, 
    618, 646, 511, 417, 412, 225, 292, 444, 311, 243, 193, 106, 133, 54, 9, 
    569, 611, 515, 524, 689, 498, 564, 632, 447, 247, 250, 325, 394, 379, 349, 
    640, 639, 584, 715, 823, 518, 473, 470, 454, 446, 487, 522, 560, 579, 579, 
    617, 567, 570, 801, 599, 501, 501, 472, 469, 491, 545, 589, 614, 618, 658, 
    657, 562, 609, 735, 493, 524, 516, 491, 505, 548, 592, 616, 603, 660, 705, 
    668, 603, 549, 533, 453, 478, 518, 509, 534, 578, 581, 556, 637, 763, 619, 
    
    -- channel=2
    235, 248, 247, 250, 246, 242, 254, 263, 251, 218, 192, 199, 212, 214, 206, 
    243, 254, 253, 255, 251, 301, 248, 237, 179, 164, 143, 130, 145, 187, 207, 
    196, 199, 255, 259, 254, 256, 210, 134, 104, 152, 157, 134, 110, 104, 191, 
    143, 147, 246, 259, 254, 200, 196, 117, 105, 139, 192, 132, 112, 71, 135, 
    179, 205, 241, 233, 305, 221, 214, 143, 97, 124, 210, 143, 118, 88, 72, 
    175, 247, 257, 208, 269, 243, 267, 167, 116, 164, 232, 146, 119, 108, 80, 
    186, 237, 215, 222, 181, 256, 273, 208, 144, 183, 218, 141, 113, 132, 125, 
    226, 247, 156, 212, 158, 256, 219, 176, 153, 192, 215, 144, 110, 140, 166, 
    255, 249, 172, 199, 180, 166, 185, 167, 150, 184, 170, 110, 86, 155, 207, 
    274, 248, 203, 167, 177, 123, 179, 224, 141, 155, 98, 49, 93, 204, 230, 
    247, 255, 205, 235, 292, 166, 180, 214, 145, 85, 52, 49, 69, 111, 110, 
    98, 212, 218, 313, 277, 122, 84, 80, 61, 38, 36, 38, 46, 51, 49, 
    28, 84, 210, 325, 141, 52, 41, 41, 36, 31, 34, 45, 49, 47, 64, 
    29, 27, 106, 250, 80, 50, 51, 38, 34, 38, 34, 38, 32, 43, 42, 
    36, 23, 41, 83, 32, 29, 39, 44, 50, 60, 39, 31, 66, 78, 22, 
    
    -- channel=3
    1061, 1056, 1056, 1056, 1057, 1059, 1060, 1059, 1059, 1054, 1049, 1057, 1058, 1056, 1059, 
    1065, 1061, 1061, 1060, 1059, 1059, 1060, 1063, 1053, 981, 953, 1033, 1060, 1060, 1062, 
    1059, 1059, 1063, 1064, 1064, 1061, 1053, 1026, 933, 830, 822, 981, 1064, 1065, 1067, 
    1025, 1041, 1060, 1072, 1072, 1032, 1007, 991, 879, 835, 805, 926, 1059, 1060, 1068, 
    746, 805, 980, 1062, 1065, 1034, 1012, 1042, 1015, 999, 935, 877, 845, 923, 1057, 
    765, 812, 937, 971, 973, 918, 876, 914, 970, 981, 885, 834, 768, 841, 1039, 
    625, 696, 820, 876, 882, 564, 453, 583, 822, 988, 954, 894, 870, 850, 894, 
    338, 550, 622, 770, 893, 815, 812, 856, 816, 762, 668, 621, 642, 705, 768, 
    404, 838, 807, 870, 948, 978, 964, 871, 757, 748, 746, 722, 697, 704, 700, 
    539, 662, 661, 673, 678, 689, 654, 598, 601, 539, 507, 472, 441, 480, 553, 
    229, 243, 254, 241, 275, 316, 340, 354, 365, 336, 311, 323, 379, 468, 559, 
    160, 189, 256, 157, 87, 77, 214, 258, 229, 245, 316, 418, 510, 551, 630, 
    160, 106, 186, 157, 91, 77, 347, 677, 635, 596, 544, 520, 534, 599, 721, 
    270, 80, 87, 85, 74, 75, 227, 541, 504, 417, 436, 524, 597, 652, 771, 
    323, 143, 117, 105, 102, 102, 168, 333, 358, 477, 586, 598, 631, 696, 798, 
    
    -- channel=4
    840, 835, 835, 835, 836, 838, 838, 835, 829, 840, 846, 835, 835, 835, 838, 
    843, 839, 839, 838, 836, 836, 837, 833, 830, 811, 758, 812, 839, 837, 840, 
    836, 836, 838, 838, 840, 843, 839, 834, 784, 730, 710, 789, 842, 839, 845, 
    844, 854, 843, 840, 847, 822, 776, 808, 763, 767, 724, 789, 860, 853, 853, 
    629, 653, 762, 824, 840, 822, 800, 834, 847, 873, 850, 767, 704, 730, 850, 
    729, 746, 809, 746, 767, 765, 736, 763, 808, 840, 767, 741, 696, 712, 856, 
    577, 594, 680, 698, 781, 508, 408, 485, 684, 845, 818, 756, 723, 732, 735, 
    307, 487, 487, 569, 718, 693, 732, 777, 672, 621, 557, 516, 540, 608, 689, 
    316, 783, 694, 755, 842, 848, 836, 783, 735, 762, 762, 748, 693, 664, 623, 
    610, 689, 721, 739, 742, 743, 731, 658, 660, 604, 597, 536, 504, 499, 516, 
    175, 210, 273, 269, 282, 350, 462, 485, 482, 448, 412, 401, 429, 445, 459, 
    14, 70, 148, 61, 0, 0, 204, 336, 303, 305, 331, 409, 437, 400, 433, 
    0, 0, 0, 0, 0, 0, 156, 360, 338, 320, 277, 235, 271, 386, 515, 
    79, 0, 0, 0, 0, 0, 0, 0, 0, 8, 104, 257, 351, 424, 575, 
    96, 0, 0, 0, 0, 0, 0, 0, 16, 159, 298, 333, 382, 474, 603, 
    
    -- channel=5
    346, 345, 345, 345, 345, 346, 346, 347, 347, 344, 343, 345, 346, 345, 346, 
    348, 347, 347, 347, 346, 346, 346, 349, 344, 314, 304, 338, 347, 347, 348, 
    344, 345, 349, 348, 348, 348, 340, 331, 282, 253, 238, 310, 349, 348, 350, 
    332, 339, 346, 351, 351, 344, 326, 325, 277, 263, 256, 295, 343, 345, 349, 
    206, 227, 324, 344, 348, 342, 329, 340, 328, 320, 277, 253, 244, 274, 345, 
    232, 254, 299, 295, 316, 248, 243, 261, 287, 320, 286, 265, 247, 269, 334, 
    159, 178, 247, 276, 283, 147, 115, 187, 264, 309, 283, 257, 252, 244, 260, 
    50, 183, 169, 237, 291, 266, 259, 254, 241, 234, 205, 192, 195, 225, 231, 
    116, 263, 255, 272, 294, 307, 299, 258, 219, 195, 208, 192, 178, 185, 198, 
    116, 167, 167, 173, 180, 188, 182, 164, 161, 139, 122, 110, 101, 112, 147, 
    16, 33, 27, 18, 24, 34, 42, 49, 60, 50, 45, 54, 86, 125, 152, 
    1, 2, 45, 6, 0, 0, 56, 60, 44, 51, 80, 113, 123, 158, 188, 
    5, 0, 15, 8, 0, 0, 58, 220, 199, 180, 148, 154, 163, 173, 218, 
    51, 0, 0, 0, 0, 0, 29, 199, 171, 136, 136, 149, 173, 189, 232, 
    66, 4, 0, 0, 0, 0, 14, 97, 107, 133, 172, 170, 182, 205, 243, 
    
    -- channel=6
    770, 737, 869, 924, 963, 985, 1030, 1032, 1024, 1068, 1065, 1082, 1067, 1069, 1069, 
    819, 784, 920, 965, 998, 997, 1015, 1030, 1036, 996, 937, 1076, 1082, 1081, 1075, 
    857, 797, 938, 989, 1014, 992, 973, 940, 980, 865, 778, 1011, 1048, 1047, 1059, 
    844, 771, 901, 959, 994, 973, 955, 856, 723, 583, 503, 592, 807, 940, 968, 
    584, 568, 605, 654, 718, 738, 741, 686, 526, 460, 442, 487, 609, 710, 659, 
    379, 444, 472, 451, 531, 528, 537, 504, 470, 471, 514, 724, 692, 725, 561, 
    420, 442, 423, 448, 572, 587, 564, 541, 540, 566, 679, 850, 824, 676, 500, 
    481, 505, 535, 583, 662, 703, 714, 695, 702, 663, 663, 780, 787, 612, 493, 
    516, 524, 569, 674, 696, 684, 677, 672, 678, 667, 656, 734, 734, 700, 702, 
    455, 489, 580, 616, 620, 646, 675, 673, 665, 714, 729, 718, 647, 554, 479, 
    516, 566, 580, 567, 563, 629, 626, 479, 477, 631, 617, 539, 445, 367, 332, 
    461, 558, 520, 421, 418, 520, 563, 449, 440, 463, 420, 360, 315, 266, 230, 
    417, 477, 447, 387, 390, 404, 387, 366, 362, 344, 309, 287, 270, 212, 198, 
    253, 255, 252, 260, 286, 296, 296, 290, 302, 298, 254, 235, 210, 198, 201, 
    199, 196, 211, 225, 239, 247, 254, 248, 293, 290, 213, 201, 190, 202, 188, 
    
    -- channel=7
    845, 768, 890, 913, 914, 884, 884, 876, 860, 896, 870, 871, 877, 887, 869, 
    811, 722, 836, 845, 845, 817, 827, 840, 843, 831, 707, 850, 864, 869, 849, 
    768, 667, 761, 771, 776, 757, 760, 727, 757, 725, 603, 802, 808, 784, 805, 
    684, 582, 669, 671, 686, 683, 695, 648, 586, 476, 424, 419, 545, 663, 640, 
    436, 402, 421, 435, 458, 489, 537, 579, 501, 482, 446, 389, 444, 462, 386, 
    355, 394, 437, 376, 470, 487, 568, 559, 477, 455, 451, 575, 486, 443, 409, 
    467, 420, 411, 451, 583, 622, 643, 609, 580, 572, 564, 621, 568, 455, 308, 
    566, 548, 599, 694, 756, 783, 791, 757, 718, 614, 473, 514, 558, 418, 294, 
    630, 596, 621, 759, 803, 767, 709, 641, 615, 577, 519, 567, 572, 525, 501, 
    560, 592, 697, 701, 673, 682, 684, 651, 588, 617, 617, 599, 517, 405, 312, 
    635, 689, 679, 635, 614, 633, 619, 434, 396, 551, 526, 439, 338, 264, 225, 
    541, 631, 598, 453, 447, 540, 561, 427, 387, 387, 352, 290, 240, 191, 125, 
    467, 524, 489, 415, 383, 353, 332, 331, 317, 284, 236, 223, 202, 141, 124, 
    212, 203, 203, 216, 234, 230, 235, 224, 226, 268, 180, 160, 137, 129, 125, 
    98, 100, 126, 142, 169, 187, 202, 167, 196, 226, 139, 125, 122, 130, 83, 
    
    -- channel=8
    231, 200, 268, 282, 307, 309, 332, 340, 330, 348, 337, 353, 343, 353, 344, 
    252, 219, 288, 302, 326, 316, 332, 340, 332, 322, 286, 352, 350, 359, 348, 
    267, 220, 294, 316, 333, 318, 322, 289, 303, 278, 223, 310, 341, 346, 341, 
    260, 218, 282, 308, 325, 314, 307, 273, 199, 164, 128, 149, 239, 298, 293, 
    156, 143, 170, 182, 210, 213, 213, 197, 133, 107, 95, 131, 159, 242, 187, 
    91, 97, 120, 110, 154, 139, 138, 122, 111, 121, 132, 228, 223, 238, 134, 
    93, 101, 98, 105, 157, 164, 157, 149, 154, 162, 199, 263, 266, 182, 123, 
    117, 138, 145, 158, 187, 200, 204, 194, 195, 187, 189, 241, 245, 182, 170, 
    121, 120, 150, 189, 189, 183, 186, 194, 194, 205, 196, 222, 220, 207, 202, 
    115, 124, 147, 162, 175, 182, 190, 181, 169, 212, 217, 213, 173, 145, 118, 
    129, 145, 152, 139, 134, 170, 177, 116, 114, 170, 160, 141, 102, 73, 61, 
    106, 141, 137, 94, 99, 131, 140, 98, 99, 114, 88, 69, 61, 37, 29, 
    81, 99, 92, 69, 75, 88, 85, 74, 62, 67, 55, 41, 39, 21, 15, 
    30, 32, 31, 32, 40, 43, 47, 50, 51, 48, 35, 27, 19, 16, 20, 
    18, 15, 21, 27, 31, 31, 31, 32, 42, 45, 20, 18, 11, 17, 11, 
    
    -- channel=9
    758, 819, 785, 767, 793, 820, 825, 817, 819, 825, 835, 831, 849, 900, 922, 
    739, 822, 844, 803, 776, 818, 821, 825, 845, 844, 848, 860, 887, 920, 932, 
    735, 804, 822, 827, 781, 765, 773, 790, 812, 810, 804, 822, 884, 917, 932, 
    733, 793, 814, 782, 774, 777, 784, 781, 798, 806, 793, 805, 830, 893, 907, 
    768, 793, 814, 789, 744, 750, 749, 769, 776, 764, 765, 820, 868, 882, 889, 
    833, 819, 790, 807, 806, 803, 819, 836, 824, 814, 823, 844, 879, 887, 897, 
    869, 806, 675, 643, 752, 839, 882, 898, 898, 886, 879, 883, 881, 889, 900, 
    886, 914, 887, 714, 517, 621, 826, 909, 913, 895, 883, 881, 878, 874, 873, 
    903, 953, 954, 931, 624, 412, 508, 669, 782, 832, 861, 889, 885, 880, 879, 
    916, 956, 957, 923, 608, 338, 376, 421, 450, 473, 540, 696, 784, 847, 876, 
    900, 934, 943, 887, 703, 498, 402, 538, 648, 527, 501, 479, 610, 772, 851, 
    776, 795, 786, 771, 764, 714, 637, 687, 738, 700, 693, 700, 696, 717, 734, 
    535, 519, 497, 481, 472, 456, 440, 462, 480, 466, 463, 465, 478, 477, 469, 
    437, 413, 403, 393, 392, 365, 356, 363, 367, 342, 332, 332, 329, 337, 380, 
    378, 335, 332, 336, 338, 336, 348, 360, 367, 351, 342, 335, 350, 416, 453, 
    
    -- channel=10
    668, 804, 741, 648, 677, 711, 692, 680, 686, 690, 699, 695, 710, 768, 791, 
    705, 828, 810, 571, 526, 579, 567, 564, 589, 601, 608, 620, 782, 810, 817, 
    696, 809, 803, 573, 530, 496, 466, 494, 554, 567, 562, 587, 748, 818, 829, 
    705, 802, 724, 462, 535, 559, 523, 525, 564, 541, 521, 567, 619, 806, 829, 
    738, 795, 801, 746, 666, 665, 668, 682, 703, 673, 653, 717, 796, 820, 835, 
    759, 800, 765, 767, 781, 769, 784, 798, 789, 778, 768, 798, 818, 811, 827, 
    759, 751, 556, 509, 643, 782, 827, 845, 837, 825, 816, 822, 821, 822, 829, 
    774, 845, 783, 568, 396, 498, 701, 811, 825, 807, 797, 808, 815, 815, 829, 
    773, 832, 834, 796, 490, 219, 303, 474, 621, 723, 782, 824, 822, 814, 828, 
    755, 809, 827, 799, 453, 148, 164, 201, 234, 283, 374, 523, 632, 738, 809, 
    748, 817, 824, 756, 528, 385, 248, 344, 497, 382, 350, 321, 446, 655, 750, 
    637, 696, 667, 648, 641, 611, 570, 625, 697, 666, 681, 684, 711, 728, 729, 
    392, 438, 429, 395, 367, 357, 369, 411, 425, 406, 405, 407, 423, 420, 393, 
    204, 214, 208, 174, 151, 143, 148, 144, 140, 114, 105, 113, 112, 114, 182, 
    128, 129, 127, 117, 107, 120, 136, 122, 134, 123, 116, 94, 125, 257, 290, 
    
    -- channel=11
    227, 250, 242, 240, 242, 262, 263, 257, 260, 262, 267, 263, 269, 286, 290, 
    219, 245, 261, 253, 263, 258, 261, 265, 268, 269, 269, 260, 286, 290, 294, 
    218, 240, 257, 249, 258, 259, 250, 262, 263, 268, 265, 260, 270, 288, 295, 
    220, 237, 254, 274, 261, 259, 262, 260, 271, 278, 276, 282, 271, 282, 282, 
    239, 238, 249, 242, 225, 221, 226, 235, 235, 233, 234, 252, 271, 273, 274, 
    262, 244, 217, 254, 248, 247, 253, 261, 256, 251, 254, 260, 274, 280, 279, 
    277, 258, 216, 167, 204, 258, 277, 283, 283, 277, 273, 274, 273, 276, 279, 
    284, 288, 286, 240, 124, 160, 238, 288, 289, 282, 278, 275, 274, 272, 269, 
    291, 303, 303, 301, 184, 105, 128, 176, 215, 246, 264, 281, 277, 273, 270, 
    298, 305, 306, 299, 172, 64, 90, 109, 116, 118, 124, 181, 216, 250, 271, 
    288, 298, 300, 293, 241, 166, 126, 173, 217, 161, 164, 151, 193, 244, 268, 
    209, 218, 213, 208, 202, 190, 158, 180, 204, 191, 188, 193, 191, 201, 207, 
    138, 139, 130, 120, 115, 108, 100, 105, 114, 104, 103, 102, 107, 107, 102, 
    103, 100, 99, 94, 95, 83, 81, 84, 87, 75, 72, 71, 69, 72, 101, 
    84, 72, 74, 74, 75, 82, 84, 87, 90, 85, 75, 72, 78, 112, 90, 
    
    -- channel=12
    391, 304, 325, 350, 264, 235, 367, 367, 470, 497, 459, 466, 519, 327, 392, 
    478, 438, 421, 384, 274, 236, 326, 361, 462, 441, 440, 486, 593, 402, 473, 
    462, 444, 424, 384, 267, 258, 392, 420, 429, 401, 405, 555, 717, 554, 559, 
    356, 395, 460, 369, 300, 456, 523, 348, 362, 406, 473, 638, 761, 636, 540, 
    399, 523, 583, 396, 433, 584, 465, 352, 509, 556, 626, 657, 734, 654, 457, 
    410, 501, 669, 512, 508, 612, 561, 578, 641, 643, 613, 632, 731, 640, 458, 
    435, 470, 636, 702, 659, 647, 635, 633, 639, 646, 654, 689, 705, 643, 509, 
    479, 509, 603, 685, 713, 607, 664, 725, 713, 694, 681, 755, 713, 650, 463, 
    525, 571, 604, 615, 696, 698, 688, 745, 753, 781, 769, 730, 717, 582, 448, 
    587, 577, 501, 516, 585, 668, 725, 774, 803, 797, 745, 735, 617, 456, 486, 
    537, 505, 493, 487, 538, 567, 719, 837, 819, 765, 728, 724, 637, 541, 594, 
    607, 726, 670, 567, 597, 578, 738, 842, 810, 744, 731, 741, 669, 615, 628, 
    642, 828, 896, 764, 629, 636, 724, 719, 690, 770, 782, 725, 629, 519, 592, 
    462, 444, 737, 889, 798, 679, 671, 604, 576, 753, 777, 721, 525, 415, 550, 
    461, 296, 417, 776, 925, 842, 761, 703, 653, 647, 675, 633, 488, 447, 667, 
    
    -- channel=13
    148, 61, 89, 145, 82, 0, 102, 97, 155, 153, 167, 143, 199, 34, 104, 
    231, 150, 171, 181, 68, 0, 66, 73, 167, 156, 155, 158, 250, 138, 225, 
    196, 124, 171, 185, 39, 0, 100, 156, 161, 148, 92, 218, 382, 260, 279, 
    116, 109, 215, 125, 23, 125, 153, 34, 73, 124, 161, 227, 405, 341, 322, 
    162, 260, 320, 142, 99, 238, 150, 28, 187, 176, 236, 216, 359, 383, 262, 
    165, 243, 396, 240, 183, 204, 221, 277, 272, 238, 225, 205, 346, 376, 221, 
    171, 220, 354, 393, 267, 199, 189, 236, 236, 245, 262, 286, 321, 344, 246, 
    196, 232, 316, 380, 307, 225, 221, 278, 275, 258, 279, 367, 355, 337, 201, 
    243, 299, 335, 325, 346, 322, 311, 339, 328, 329, 318, 333, 365, 290, 158, 
    331, 285, 208, 219, 256, 333, 343, 395, 403, 403, 330, 326, 265, 178, 199, 
    283, 172, 200, 227, 256, 235, 344, 462, 441, 389, 323, 302, 263, 257, 347, 
    280, 361, 259, 238, 307, 281, 359, 407, 436, 383, 336, 316, 224, 256, 328, 
    312, 373, 392, 291, 237, 314, 360, 322, 299, 380, 405, 316, 226, 167, 274, 
    175, 83, 240, 368, 315, 222, 223, 212, 235, 358, 362, 317, 176, 97, 198, 
    172, 0, 53, 264, 416, 367, 285, 241, 231, 272, 306, 232, 152, 159, 249, 
    
    -- channel=14
    100, 52, 71, 67, 38, 32, 80, 68, 115, 117, 118, 106, 157, 63, 95, 
    118, 98, 92, 82, 35, 26, 59, 77, 116, 103, 112, 118, 193, 95, 124, 
    110, 105, 100, 74, 31, 51, 93, 90, 90, 78, 116, 130, 235, 149, 165, 
    76, 107, 115, 88, 45, 120, 135, 53, 91, 97, 132, 172, 235, 179, 159, 
    81, 144, 172, 82, 109, 161, 120, 85, 132, 154, 182, 157, 219, 188, 126, 
    82, 131, 193, 144, 144, 170, 160, 164, 186, 179, 179, 171, 216, 174, 127, 
    102, 120, 162, 205, 192, 199, 199, 197, 198, 195, 198, 219, 204, 178, 138, 
    118, 130, 167, 203, 235, 160, 214, 235, 228, 230, 219, 228, 240, 187, 100, 
    138, 155, 147, 162, 193, 244, 203, 235, 248, 258, 245, 226, 224, 151, 116, 
    158, 143, 119, 143, 158, 173, 238, 254, 259, 264, 236, 235, 193, 124, 129, 
    138, 138, 126, 123, 144, 162, 223, 275, 267, 243, 235, 235, 198, 141, 162, 
    184, 241, 204, 145, 155, 161, 234, 279, 259, 238, 249, 238, 210, 164, 166, 
    170, 239, 289, 231, 177, 168, 211, 214, 198, 253, 245, 236, 196, 116, 152, 
    125, 85, 216, 282, 252, 191, 194, 182, 157, 240, 253, 225, 139, 109, 151, 
    118, 69, 83, 224, 292, 269, 229, 208, 176, 196, 191, 191, 142, 123, 196, 
    
    -- channel=15
    655, 601, 664, 659, 664, 639, 608, 562, 500, 399, 416, 409, 403, 453, 438, 
    759, 748, 687, 699, 715, 702, 665, 639, 562, 377, 392, 448, 486, 492, 455, 
    742, 711, 728, 751, 760, 760, 721, 683, 681, 530, 494, 489, 481, 499, 496, 
    702, 717, 748, 768, 784, 788, 754, 696, 697, 708, 653, 559, 461, 467, 507, 
    663, 719, 758, 770, 794, 779, 716, 694, 645, 673, 697, 581, 444, 485, 503, 
    517, 736, 773, 797, 776, 787, 745, 687, 619, 606, 620, 458, 389, 442, 478, 
    459, 756, 830, 786, 749, 813, 780, 650, 610, 652, 585, 385, 340, 419, 449, 
    514, 652, 815, 767, 824, 873, 811, 816, 813, 794, 638, 387, 350, 502, 452, 
    598, 669, 814, 712, 771, 815, 804, 714, 725, 685, 520, 284, 320, 584, 497, 
    620, 686, 827, 615, 559, 740, 703, 662, 588, 395, 307, 284, 344, 631, 572, 
    664, 676, 766, 533, 283, 414, 460, 549, 516, 305, 279, 318, 364, 623, 670, 
    662, 647, 689, 618, 489, 412, 439, 415, 252, 192, 166, 189, 333, 488, 637, 
    652, 679, 648, 731, 660, 569, 560, 503, 347, 252, 195, 194, 293, 358, 468, 
    628, 639, 672, 597, 610, 541, 617, 617, 515, 470, 430, 446, 445, 451, 480, 
    614, 641, 655, 630, 619, 642, 641, 622, 586, 554, 574, 619, 613, 568, 523, 
    
    -- channel=16
    88, 52, 50, 44, 27, 4, 0, 13, 48, 6, 24, 17, 11, 59, 66, 
    152, 115, 41, 62, 48, 25, 0, 0, 0, 0, 5, 41, 63, 64, 41, 
    184, 105, 74, 71, 79, 53, 19, 0, 21, 37, 37, 41, 44, 46, 59, 
    171, 145, 97, 91, 104, 57, 64, 29, 47, 65, 47, 31, 10, 16, 62, 
    152, 134, 113, 90, 86, 94, 124, 126, 86, 48, 93, 89, 9, 50, 60, 
    4, 162, 137, 146, 104, 183, 323, 256, 124, 99, 131, 55, 8, 13, 42, 
    63, 179, 270, 210, 166, 296, 250, 207, 207, 235, 179, 55, 6, 0, 34, 
    85, 153, 276, 234, 287, 324, 226, 325, 376, 350, 241, 79, 17, 78, 79, 
    101, 191, 304, 223, 274, 253, 266, 191, 220, 226, 131, 0, 0, 147, 145, 
    106, 188, 380, 214, 155, 258, 204, 159, 144, 28, 0, 0, 0, 186, 261, 
    154, 184, 329, 146, 0, 47, 28, 75, 59, 0, 0, 0, 0, 184, 314, 
    137, 161, 224, 147, 72, 28, 44, 42, 0, 0, 0, 0, 0, 76, 194, 
    102, 158, 169, 209, 141, 93, 72, 74, 23, 0, 0, 0, 0, 0, 80, 
    134, 130, 176, 107, 137, 67, 124, 109, 71, 82, 35, 47, 38, 36, 89, 
    105, 141, 133, 129, 132, 135, 102, 98, 82, 61, 62, 92, 105, 74, 54, 
    
    -- channel=17
    216, 198, 217, 227, 230, 217, 203, 178, 155, 102, 121, 122, 120, 132, 128, 
    253, 255, 229, 241, 248, 246, 229, 220, 191, 95, 110, 128, 151, 154, 134, 
    242, 248, 246, 257, 263, 263, 255, 230, 235, 178, 156, 146, 150, 154, 153, 
    227, 236, 253, 262, 270, 273, 261, 236, 232, 244, 217, 180, 141, 146, 159, 
    196, 245, 261, 264, 278, 264, 244, 249, 212, 227, 234, 185, 132, 144, 156, 
    155, 246, 277, 272, 259, 268, 239, 205, 199, 197, 200, 131, 104, 129, 146, 
    131, 249, 281, 268, 250, 268, 252, 225, 210, 218, 180, 98, 86, 125, 132, 
    164, 208, 276, 244, 278, 295, 272, 278, 266, 264, 211, 97, 81, 162, 126, 
    202, 220, 278, 218, 271, 266, 270, 232, 232, 201, 144, 64, 74, 189, 157, 
    213, 225, 277, 200, 147, 233, 231, 234, 191, 99, 75, 74, 80, 207, 195, 
    228, 216, 252, 162, 71, 100, 130, 177, 148, 66, 55, 78, 98, 182, 231, 
    214, 222, 220, 219, 140, 128, 136, 122, 47, 21, 11, 19, 84, 127, 212, 
    219, 232, 215, 226, 211, 180, 193, 164, 97, 57, 33, 34, 62, 92, 147, 
    214, 206, 224, 186, 191, 185, 204, 213, 167, 144, 134, 142, 140, 138, 140, 
    213, 221, 224, 212, 207, 221, 215, 203, 191, 181, 193, 208, 204, 188, 165, 
    
    -- channel=18
    793, 821, 848, 856, 820, 748, 727, 680, 617, 568, 517, 468, 331, 296, 379, 
    815, 774, 726, 680, 636, 588, 577, 554, 512, 486, 486, 404, 236, 262, 408, 
    631, 597, 560, 529, 509, 498, 501, 500, 497, 499, 481, 362, 299, 400, 449, 
    453, 462, 474, 476, 487, 506, 525, 545, 548, 539, 352, 240, 418, 464, 447, 
    440, 467, 479, 485, 505, 543, 564, 601, 632, 588, 355, 300, 429, 434, 423, 
    468, 478, 482, 480, 503, 556, 657, 697, 733, 717, 665, 405, 309, 397, 391, 
    485, 489, 481, 473, 500, 515, 495, 341, 289, 384, 825, 645, 206, 287, 320, 
    492, 495, 493, 481, 398, 380, 373, 333, 474, 726, 925, 749, 303, 197, 352, 
    484, 495, 420, 394, 334, 275, 406, 807, 980, 1002, 933, 542, 348, 416, 632, 
    499, 634, 463, 266, 222, 182, 434, 829, 874, 843, 833, 734, 649, 693, 657, 
    499, 641, 481, 241, 155, 179, 456, 810, 744, 405, 321, 643, 756, 629, 410, 
    403, 328, 401, 244, 158, 310, 598, 849, 597, 235, 214, 308, 588, 431, 198, 
    314, 316, 406, 293, 311, 488, 683, 836, 560, 290, 296, 209, 407, 300, 161, 
    290, 305, 344, 287, 329, 458, 511, 526, 388, 281, 341, 185, 158, 139, 115, 
    324, 267, 212, 175, 133, 142, 146, 138, 124, 194, 262, 149, 90, 96, 129, 
    
    -- channel=19
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 82, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 156, 27, 0, 0, 0, 
    0, 0, 0, 0, 0, 12, 283, 414, 489, 536, 539, 250, 7, 0, 0, 
    0, 0, 0, 0, 25, 221, 296, 162, 72, 190, 753, 524, 61, 41, 0, 
    0, 0, 0, 68, 152, 125, 202, 148, 292, 622, 862, 698, 136, 17, 103, 
    0, 0, 94, 202, 216, 89, 218, 699, 866, 877, 816, 324, 124, 267, 518, 
    0, 239, 382, 177, 90, 42, 312, 774, 806, 790, 704, 609, 586, 621, 537, 
    0, 516, 415, 160, 0, 50, 387, 762, 712, 274, 190, 517, 723, 565, 264, 
    0, 184, 369, 161, 14, 262, 525, 806, 559, 98, 88, 199, 516, 381, 0, 
    0, 199, 382, 209, 230, 462, 642, 765, 504, 182, 209, 87, 317, 185, 0, 
    0, 154, 298, 210, 277, 381, 417, 429, 276, 168, 232, 53, 26, 0, 0, 
    3, 80, 106, 90, 52, 57, 49, 26, 0, 69, 148, 0, 0, 0, 0, 
    
    -- channel=20
    316, 322, 338, 336, 322, 289, 281, 258, 225, 206, 182, 150, 87, 69, 122, 
    322, 303, 279, 263, 244, 221, 217, 204, 185, 176, 167, 127, 43, 68, 140, 
    226, 216, 207, 196, 186, 182, 184, 183, 179, 173, 159, 80, 79, 129, 153, 
    161, 166, 171, 172, 178, 185, 199, 209, 201, 184, 85, 37, 134, 160, 155, 
    156, 169, 174, 177, 183, 201, 199, 215, 242, 234, 104, 57, 145, 152, 143, 
    169, 175, 175, 175, 175, 207, 223, 203, 195, 185, 231, 97, 54, 134, 130, 
    177, 177, 177, 163, 172, 130, 134, 65, 64, 83, 266, 227, 10, 56, 87, 
    177, 180, 168, 157, 120, 91, 91, 114, 173, 229, 292, 214, 74, 13, 120, 
    175, 172, 118, 92, 62, 40, 75, 260, 299, 320, 307, 158, 110, 130, 188, 
    169, 250, 121, 40, 19, 3, 78, 259, 270, 228, 227, 244, 195, 204, 193, 
    155, 146, 144, 37, 0, 25, 100, 246, 230, 86, 52, 162, 216, 178, 80, 
    119, 69, 119, 32, 7, 59, 164, 255, 178, 40, 31, 27, 175, 101, 26, 
    81, 64, 108, 53, 74, 149, 203, 257, 168, 52, 73, 14, 97, 46, 10, 
    74, 60, 59, 26, 33, 81, 99, 105, 78, 54, 71, 11, 0, 0, 0, 
    86, 57, 36, 25, 0, 3, 4, 2, 0, 9, 37, 1, 0, 0, 0, 
    
    -- channel=21
    444, 430, 442, 461, 483, 510, 459, 411, 375, 353, 324, 286, 251, 238, 229, 
    437, 421, 426, 415, 474, 506, 515, 458, 392, 358, 350, 341, 340, 346, 346, 
    418, 414, 386, 381, 439, 457, 489, 511, 488, 473, 479, 482, 460, 433, 396, 
    404, 408, 365, 334, 415, 450, 480, 530, 544, 548, 544, 520, 456, 419, 400, 
    509, 579, 577, 401, 409, 491, 558, 549, 555, 547, 566, 561, 512, 503, 494, 
    712, 749, 670, 414, 414, 508, 584, 562, 552, 557, 557, 552, 569, 578, 547, 
    709, 708, 681, 488, 421, 523, 578, 555, 568, 557, 544, 541, 561, 541, 484, 
    671, 702, 719, 678, 525, 450, 543, 566, 610, 591, 549, 526, 521, 476, 446, 
    733, 803, 855, 776, 781, 658, 611, 595, 601, 597, 567, 535, 516, 499, 455, 
    941, 1031, 1058, 945, 793, 746, 618, 630, 590, 600, 600, 562, 511, 443, 363, 
    1126, 1097, 830, 684, 636, 620, 576, 569, 589, 601, 592, 552, 495, 461, 390, 
    951, 823, 676, 578, 472, 449, 491, 435, 470, 536, 566, 562, 500, 493, 457, 
    594, 555, 541, 541, 515, 437, 488, 484, 459, 549, 609, 589, 532, 472, 494, 
    484, 499, 516, 490, 454, 461, 438, 476, 463, 494, 555, 552, 520, 458, 456, 
    460, 436, 418, 392, 399, 468, 470, 444, 409, 401, 414, 457, 439, 407, 402, 
    
    -- channel=22
    237, 219, 221, 246, 171, 130, 159, 167, 156, 130, 109, 85, 49, 35, 27, 
    230, 210, 197, 145, 91, 40, 45, 42, 96, 104, 76, 75, 84, 108, 111, 
    204, 196, 159, 62, 0, 0, 0, 0, 21, 167, 173, 168, 166, 166, 119, 
    169, 174, 120, 0, 0, 0, 0, 0, 0, 59, 131, 128, 149, 140, 77, 
    261, 336, 336, 26, 0, 0, 18, 0, 0, 0, 0, 20, 113, 121, 96, 
    456, 487, 419, 79, 0, 14, 57, 0, 0, 0, 0, 0, 54, 134, 144, 
    457, 451, 425, 198, 53, 51, 25, 0, 0, 0, 0, 0, 10, 117, 151, 
    401, 425, 435, 351, 204, 58, 41, 0, 40, 39, 0, 0, 0, 46, 97, 
    439, 495, 550, 448, 389, 278, 153, 25, 32, 48, 0, 0, 0, 31, 48, 
    682, 785, 810, 617, 387, 328, 155, 38, 19, 48, 11, 0, 0, 0, 0, 
    884, 856, 519, 277, 151, 89, 19, 12, 12, 29, 7, 0, 0, 0, 0, 
    716, 567, 383, 271, 66, 0, 2, 30, 0, 0, 33, 4, 0, 9, 11, 
    330, 302, 270, 241, 190, 67, 36, 20, 0, 21, 137, 54, 0, 0, 23, 
    195, 196, 175, 109, 44, 52, 14, 5, 0, 2, 77, 15, 0, 0, 0, 
    139, 62, 0, 0, 0, 38, 19, 0, 0, 0, 0, 0, 0, 0, 0, 
    
    -- channel=23
    109, 103, 109, 113, 128, 139, 116, 98, 85, 78, 65, 50, 38, 37, 36, 
    107, 104, 106, 93, 126, 129, 139, 115, 88, 85, 84, 85, 82, 84, 84, 
    98, 99, 87, 83, 111, 118, 129, 142, 126, 130, 130, 135, 121, 111, 99, 
    96, 101, 102, 69, 101, 121, 133, 147, 153, 147, 150, 142, 125, 110, 105, 
    150, 176, 185, 91, 95, 133, 162, 154, 161, 153, 157, 157, 145, 152, 147, 
    216, 227, 213, 90, 112, 140, 161, 159, 161, 160, 161, 150, 161, 180, 165, 
    209, 211, 209, 149, 106, 132, 162, 155, 162, 159, 156, 143, 158, 156, 132, 
    200, 216, 223, 195, 163, 125, 165, 162, 175, 169, 154, 143, 145, 124, 125, 
    225, 260, 297, 248, 263, 218, 197, 171, 168, 170, 162, 147, 136, 127, 121, 
    317, 341, 322, 312, 235, 239, 177, 187, 165, 168, 173, 155, 130, 116, 100, 
    372, 362, 243, 212, 174, 173, 158, 152, 168, 166, 168, 159, 130, 135, 105, 
    275, 243, 200, 162, 132, 110, 134, 111, 126, 145, 162, 164, 133, 141, 140, 
    163, 146, 151, 153, 144, 114, 126, 135, 116, 145, 179, 164, 153, 135, 148, 
    132, 136, 139, 128, 122, 137, 117, 130, 120, 122, 148, 153, 143, 129, 130, 
    116, 112, 115, 107, 107, 138, 135, 125, 114, 111, 107, 122, 123, 112, 114, 
    
    -- channel=24
    152, 354, 771, 788, 741, 792, 807, 807, 752, 521, 569, 851, 902, 903, 899, 
    158, 266, 670, 758, 756, 745, 785, 834, 850, 644, 662, 950, 955, 946, 936, 
    170, 203, 547, 745, 824, 764, 636, 700, 729, 684, 803, 959, 987, 982, 973, 
    369, 360, 683, 790, 806, 842, 691, 606, 570, 682, 876, 963, 1031, 1000, 989, 
    838, 796, 896, 774, 740, 866, 836, 676, 587, 669, 860, 1019, 1087, 989, 930, 
    935, 911, 931, 814, 800, 845, 787, 643, 615, 671, 826, 1029, 1114, 1024, 915, 
    958, 925, 871, 833, 784, 775, 755, 693, 727, 730, 813, 1010, 1121, 1093, 978, 
    954, 910, 805, 825, 876, 818, 782, 698, 763, 779, 814, 908, 1059, 1097, 1039, 
    938, 838, 836, 838, 923, 902, 840, 745, 703, 772, 786, 692, 776, 910, 977, 
    978, 880, 900, 906, 910, 936, 926, 857, 748, 766, 767, 734, 718, 761, 787, 
    1008, 913, 903, 939, 946, 865, 842, 903, 888, 779, 704, 737, 777, 749, 700, 
    998, 924, 894, 980, 961, 888, 857, 887, 868, 739, 691, 757, 783, 751, 674, 
    977, 923, 901, 955, 887, 743, 861, 876, 823, 700, 691, 718, 715, 710, 688, 
    959, 887, 867, 949, 897, 786, 816, 783, 719, 629, 657, 671, 631, 634, 711, 
    883, 845, 801, 898, 923, 858, 751, 691, 621, 572, 632, 657, 632, 639, 684, 
    
    -- channel=25
    4, 51, 254, 311, 307, 261, 275, 295, 322, 225, 212, 394, 354, 342, 328, 
    6, 22, 201, 333, 495, 408, 382, 407, 448, 319, 321, 510, 460, 422, 401, 
    6, 13, 129, 322, 595, 534, 330, 332, 357, 342, 499, 554, 579, 568, 544, 
    127, 88, 357, 400, 557, 606, 432, 336, 290, 398, 582, 604, 729, 678, 590, 
    447, 436, 514, 382, 475, 619, 570, 414, 326, 402, 545, 637, 711, 565, 475, 
    520, 522, 522, 406, 523, 605, 523, 372, 387, 427, 529, 639, 723, 570, 427, 
    504, 488, 444, 421, 486, 503, 516, 444, 517, 486, 526, 634, 724, 687, 542, 
    507, 480, 394, 466, 602, 571, 551, 478, 456, 477, 508, 511, 627, 702, 602, 
    498, 421, 469, 543, 638, 658, 616, 507, 362, 400, 440, 279, 364, 478, 517, 
    546, 487, 569, 579, 601, 661, 668, 608, 430, 402, 415, 316, 330, 387, 375, 
    592, 534, 562, 609, 614, 561, 530, 605, 579, 442, 308, 372, 426, 385, 334, 
    584, 521, 549, 680, 658, 548, 527, 557, 541, 369, 311, 404, 439, 395, 316, 
    556, 475, 507, 658, 583, 372, 502, 498, 455, 326, 318, 358, 384, 343, 327, 
    529, 412, 423, 641, 579, 435, 464, 378, 332, 251, 294, 311, 287, 273, 347, 
    445, 372, 371, 612, 608, 519, 370, 298, 255, 196, 274, 299, 276, 289, 325, 
    
    -- channel=26
    5, 62, 269, 254, 245, 259, 269, 268, 254, 152, 162, 289, 310, 308, 306, 
    6, 34, 229, 230, 250, 230, 248, 272, 277, 201, 209, 320, 323, 322, 318, 
    10, 19, 174, 232, 271, 245, 183, 215, 225, 211, 263, 312, 329, 330, 325, 
    117, 100, 221, 240, 253, 279, 224, 186, 171, 198, 290, 313, 339, 324, 316, 
    276, 249, 295, 235, 232, 278, 270, 203, 174, 192, 277, 337, 364, 324, 292, 
    303, 289, 304, 258, 250, 262, 253, 192, 197, 202, 260, 340, 371, 345, 289, 
    311, 296, 272, 285, 251, 245, 244, 198, 231, 221, 256, 335, 371, 371, 312, 
    306, 286, 270, 276, 279, 258, 243, 219, 243, 226, 260, 258, 347, 363, 337, 
    308, 258, 284, 269, 303, 299, 269, 246, 200, 239, 264, 222, 229, 291, 307, 
    323, 272, 294, 295, 287, 297, 298, 279, 247, 251, 240, 239, 230, 245, 242, 
    328, 289, 292, 309, 311, 278, 267, 287, 291, 247, 220, 235, 251, 237, 217, 
    322, 301, 280, 319, 317, 275, 283, 286, 283, 233, 216, 235, 255, 239, 212, 
    315, 296, 275, 312, 295, 218, 291, 278, 263, 215, 216, 219, 219, 220, 217, 
    308, 285, 258, 311, 295, 258, 263, 248, 225, 181, 203, 207, 192, 191, 227, 
    272, 275, 225, 291, 299, 281, 227, 213, 189, 172, 189, 206, 195, 195, 210, 
    
    -- channel=27
    1014, 1000, 992, 883, 824, 801, 840, 895, 991, 1047, 1033, 1036, 989, 954, 916, 
    1086, 1084, 1051, 805, 645, 657, 688, 749, 828, 915, 981, 1008, 1051, 1005, 992, 
    1101, 1099, 1045, 673, 430, 480, 498, 489, 485, 561, 823, 1018, 1011, 932, 934, 
    1099, 1082, 995, 697, 521, 717, 675, 584, 578, 589, 688, 940, 1001, 924, 843, 
    1094, 1071, 898, 575, 477, 576, 587, 524, 575, 608, 660, 812, 1027, 1027, 928, 
    1037, 1035, 804, 486, 376, 464, 450, 442, 454, 486, 563, 680, 966, 1103, 1101, 
    926, 892, 745, 566, 416, 441, 440, 378, 407, 474, 467, 557, 785, 955, 1064, 
    886, 688, 661, 667, 427, 382, 352, 317, 288, 290, 281, 296, 407, 563, 912, 
    867, 615, 609, 522, 393, 492, 487, 443, 416, 461, 495, 412, 466, 565, 805, 
    911, 596, 500, 364, 336, 351, 356, 491, 586, 563, 573, 555, 604, 481, 650, 
    910, 613, 371, 334, 251, 287, 365, 356, 398, 450, 402, 470, 457, 439, 618, 
    839, 541, 397, 415, 297, 225, 328, 321, 355, 528, 521, 588, 425, 358, 552, 
    747, 584, 434, 511, 371, 226, 173, 187, 239, 548, 725, 584, 280, 267, 491, 
    732, 711, 564, 491, 387, 283, 189, 213, 298, 478, 633, 545, 247, 267, 504, 
    684, 644, 569, 416, 350, 304, 249, 254, 280, 336, 424, 444, 245, 267, 514, 
    
    -- channel=28
    738, 716, 738, 614, 571, 608, 634, 676, 748, 766, 724, 730, 697, 634, 583, 
    857, 849, 833, 659, 596, 633, 639, 677, 704, 662, 635, 707, 742, 637, 602, 
    876, 875, 838, 605, 579, 687, 701, 695, 666, 610, 585, 743, 715, 557, 518, 
    872, 865, 789, 708, 677, 843, 867, 844, 824, 819, 712, 661, 709, 610, 490, 
    862, 857, 774, 646, 672, 760, 778, 795, 810, 821, 819, 721, 797, 767, 651, 
    797, 833, 680, 612, 502, 645, 684, 672, 664, 677, 721, 681, 772, 878, 875, 
    717, 690, 564, 538, 601, 694, 705, 598, 622, 677, 529, 529, 665, 760, 845, 
    656, 489, 435, 578, 572, 481, 446, 415, 355, 346, 340, 335, 441, 606, 768, 
    664, 478, 441, 423, 437, 509, 548, 480, 386, 451, 501, 373, 500, 653, 727, 
    720, 487, 367, 259, 361, 359, 365, 473, 621, 593, 609, 574, 621, 505, 577, 
    735, 518, 305, 277, 203, 258, 392, 393, 373, 474, 431, 464, 471, 468, 586, 
    783, 477, 290, 412, 271, 148, 271, 241, 290, 461, 507, 560, 342, 338, 452, 
    773, 583, 437, 526, 350, 164, 77, 104, 164, 465, 689, 578, 229, 199, 490, 
    752, 751, 593, 491, 401, 235, 84, 127, 229, 450, 580, 542, 139, 218, 531, 
    765, 719, 619, 425, 347, 252, 165, 188, 231, 316, 428, 443, 168, 208, 533, 
    
    -- channel=29
    335, 327, 333, 274, 259, 255, 264, 290, 322, 340, 334, 338, 328, 307, 293, 
    356, 357, 350, 220, 181, 186, 185, 207, 244, 283, 307, 335, 343, 325, 318, 
    362, 361, 338, 203, 116, 137, 133, 136, 131, 162, 253, 335, 334, 303, 288, 
    361, 358, 315, 199, 143, 202, 186, 157, 159, 157, 204, 303, 332, 309, 254, 
    359, 356, 254, 153, 125, 145, 154, 130, 152, 158, 198, 249, 335, 347, 315, 
    339, 339, 246, 124, 70, 115, 110, 98, 102, 125, 137, 187, 317, 362, 362, 
    301, 278, 221, 165, 91, 98, 104, 79, 88, 110, 110, 142, 230, 286, 356, 
    283, 193, 202, 199, 96, 97, 83, 69, 37, 38, 47, 38, 80, 147, 299, 
    283, 165, 190, 111, 104, 115, 120, 114, 134, 133, 155, 129, 135, 147, 230, 
    297, 160, 135, 77, 57, 78, 70, 110, 164, 152, 154, 150, 169, 116, 174, 
    294, 168, 100, 77, 34, 42, 87, 74, 98, 120, 110, 144, 96, 131, 146, 
    263, 139, 90, 127, 57, 22, 50, 64, 59, 138, 145, 161, 91, 72, 130, 
    224, 195, 110, 155, 93, 34, 9, 14, 29, 170, 218, 186, 38, 44, 111, 
    224, 212, 164, 138, 92, 59, 19, 26, 51, 112, 178, 177, 35, 39, 114, 
    198, 187, 172, 90, 79, 61, 41, 45, 50, 71, 99, 125, 32, 43, 136, 
    
    
    others => 0);
end gold_package;