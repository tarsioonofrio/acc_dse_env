library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package ifmap_package is
  type mem is array(0 to 4000000) of integer;

  constant input_map : mem := (

    -- ifmap
    -- channel=0
    0, 0, 0, 0, 314, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1299, 0, 256, 87, 0, 0, 0, 0, 0, 0, 0, 0, 516, 0, 0, 551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339, 0, 0, 0, 0, 0, 350, 1101, 0, 1304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 280, 0, 0, 0, 422, 273, 119, 0, 0, 213, 0, 0, 0, 1359, 0, 0, 1048, 48, 1075, 1994, 0, 0, 0, 240, 573, 1374, 0, 788, 702, 0, 0, 1924, 1226, 1128, 0, 141, 0, 0, 0, 0, 0, 0, 177, 1696, 687, 620, 1330, 193, 0, 509, 724, 1213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 8, 0, 522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 0, 617, 431, 807, 1137, 823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 478, 0, 0, 0, 585, 0, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 795, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 924, 440, 0, 755, 0, 0, 248, 1737, 1071, 1744, 376, 815, 0, 2137, 289, 584, 0, 84, 0, 0, 452, 751, 1026, 51, 155, 0, 1088, 0, 0, 0, 0, 0, 0, 0, 566, 0, 190, 43, 262, 0, 0, 0, 0, 0, 1084, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 283, 0, 0, 584, 0, 622, 415, 1106, 0, 64, 0, 0, 0, 0, 0, 0, 0, 569, 433, 75, 90, 244, 0, 0, 0, 0, 0, 0, 0, 245, 0, 0, 256, 0, 377, 0, 690, 0, 160, 0, 0, 0, 0, 0, 0, 580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 728, 158, 0, 967, 0, 0, 0, 0, 0, 0, 842, 0, 0, 910, 1006, 1360, 560, 0, 0, 0, 0, 0, 0, 318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1072, 0, 0, 743, 0, 8, 207, 0, 0, 0, 0, 0, 0, 0, 33, 354, 414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 620, 0, 198, 0, 893, 60, 0, 0, 0, 0, 0, 0, 0, 0, 613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 83, 0, 0, 0, 0, 0, 0, 0, 0, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 602, 392, 0, 0, 0, 0, 0, 0, 0, 0, 793, 0, 0, 0, 138, 0, 760, 1072, 0, 1201, 0, 0, 0, 0, 25, 0, 0, 186, 0, 0, 0, 0, 0, 0, 230, 0, 0, 0, 0, 0, 0, 0, 344, 295, 0, 0, 0, 1036, 1624, 2233, 0, 0, 0, 0, 0, 40, 0, 0, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 751, 0, 26, 0, 0, 147, 0, 0, 0, 0, 1211, 435, 828, 1019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 405, 662, 433, 549, 606, 0, 0, 272, 0, 520, 0, 60, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2036, 0, 1254, 0, 0, 0, 861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 427, 0, 0, 0, 137, 152, 0, 0, 328, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 134, 309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484, 0, 0, 1450, 0, 0, 0, 0, 0, 644, 1231, 0, 107, 382, 43, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 659, 1097, 0, 1045, 821, 829, 206, 501, 1363, 1493, 1700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 375, 430, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 90, 1128, 1276, 2430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 470, 0, 0, 0, 0, 0, 0, 0, 0, 996, 790, 335, 88, 927, 80, 642, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 790, 4, 0, 1751, 0, 474, 243, 0, 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396, 0, 0, 655, 342, 0, 524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 485, 0, 0, 0, 0, 0, 0, 883, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1615, 3059, 0, 0, 0, 0, 0, 0, 75, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 208, 0, 97, 0, 1, 0, 354, 836, 1534, 1196, 1070, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2124, 314, 123, 1575, 2794, 0, 664, 0, 0, 1595, 718, 623, 0, 1287, 0, 0, 0, 1011, 0, 0, 80, 0, 28, 0, 0, 0, 0, 0, 36, 0, 361, 319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461, 502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1185, 1064, 0, 0, 0, 0, 0, 207, 0, 0, 0, 133, 0, 0, 0, 1669, 2058, 1237, 1417, 1193, 1285, 869, 0, 0, 2130, 1705, 4234, 0, 0, 0, 0, 0, 0, 194, 95, 206, 0, 130, 0, 0, 0, 97, 0, 603, 291, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 297, 0, 0, 0, 0, 0, 0, 0, 0, 1199, 947, 371, 0, 155, 0, 0, 0, 0, 0, 12, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 1547, 0, 0, 0, 0, 0, 0, 0, 0, 398, 322, 0, 63, 143, 0, 0, 0, 0, 0, 0, 0, 1042, 685, 1633, 830, 341, 0, 0, 0, 0, 0, 0, 85, 1247, 1433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 876, 0, 0, 684, 798, 404, 813, 301, 607, 1355, 1492, 1195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 440, 245, 0, 0, 67, 0, 0, 0, 0, 258, 1234, 0, 0, 161, 953, 421, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172, 750, 0, 307, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 587, 727, 710, 657, 0, 0, 132, 840, 1133, 1205, 0, 109, 170, 9, 0, 0, 0, 0, 1363, 466, 442, 0, 0, 0, 0, 0, 0, 1413, 1606, 0, 426, 0, 0, 251, 809, 1917, 0, 1531, 888, 0, 59, 0, 0, 343, 0, 3, 0, 423, 0, 0, 0, 1091, 0, 140, 0, 0, 0, 143, 0, 0, 305, 1082, 994, 0, 0, 772, 1367, 303, 187, 2551, 3112, 4033, 0, 81, 0, 0, 0, 0, 966, 1422, 855, 0, 0, 0, 0, 0, 0, 0, 826, 1220, 0, 0, 0, 0, 247, 0, 0, 39, 0, 109, 0, 115, 0, 0, 0, 0, 282, 1270, 0, 880, 288, 0, 679, 919, 0, 0, 0, 0, 0, 245, 0, 0, 0, 0, 0, 177, 705, 0, 644, 93, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 509, 18, 0, 1226, 196, 140, 0, 0, 42, 223, 275, 0, 0, 0, 0, 62, 649, 492, 0, 0, 970, 1063, 0, 692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 431, 180, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1155, 0, 301, 0, 0, 0, 1875, 1168, 2630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 847, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1026, 10, 0, 0, 0, 0, 0, 0, 0, 2149, 3442, 1490, 2624, 908, 167, 1607, 3260, 3876, 546, 47, 296, 1312, 459, 240, 2321, 1356, 883, 40, 123, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1141, 953, 1354, 1371, 0, 435, 2256, 0, 0, 1777, 1663, 1451, 415, 745, 0, 963, 1005, 205, 0, 0, 0, 278, 0, 0, 110, 0, 0, 609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 193, 274, 0, 0, 0, 0, 49, 135, 0, 0, 0, 438, 96, 226, 0, 0, 0, 0, 0, 0, 0, 612, 93, 0, 0, 647, 242, 1103, 0, 0, 0, 0, 0, 0, 217, 0, 604, 1368, 433, 0, 0, 0, 0, 0, 0, 0, 0, 262, 140, 0, 730, 0, 0, 0, 0, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 280, 902, 1025, 567, 0, 0, 0, 0, 0, 2384, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 371, 818, 0, 0, 0, 0, 0, 0, 0, 0, 644, 0, 0, 0, 0, 32, 0, 772, 633, 943, 0, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 203, 179, 0, 0, 0, 0, 0, 0, 0, 542, 321, 1414, 0, 0, 203, 0, 0, 16, 311, 492, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 1542, 11, 232, 344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 284, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375, 286, 566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 0, 0, 1606, 1054, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1052, 371, 1326, 0, 533, 0, 780, 0, 1673, 708, 0, 591, 814, 0, 0, 456, 508, 0, 1044, 0, 0, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2115, 0, 1158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 259, 0, 0, 0, 0, 0, 0, 246, 0, 0, 0, 993, 0, 0, 373, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 368, 0, 0, 0, 0, 0, 0, 576, 499, 673, 855, 32, 314, 807, 756, 1267, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 509, 0, 0, 696, 1266, 649, 1822, 1556, 236, 795, 307, 575, 64, 1500, 2053, 124, 0, 0, 0, 0, 0, 516, 0, 0, 182, 0, 25, 0, 0, 0, 808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 232, 609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 602, 0, 171, 56, 0, 32, 0, 0, 0, 144, 0, 359, 602, 0, 0, 0, 0, 0, 1471, 0, 0, 977, 152, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 651, 2035, 190, 581, 516, 2246, 315, 0, 0, 0, 0, 815, 0, 0, 0, 0, 0, 1161, 350, 0, 0, 0, 0, 0, 0, 0, 57, 129, 664, 0, 0, 0, 553, 0, 0, 1222, 3164, 3730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 346, 0, 0, 1050, 0, 0, 791, 624, 1366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 615, 0, 0, 378, 0, 0, 0, 0, 0, 145, 0, 569, 0, 1016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1083, 1598, 2535, 529, 0, 0, 39, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    
    
    others => 0);
end ifmap_package;