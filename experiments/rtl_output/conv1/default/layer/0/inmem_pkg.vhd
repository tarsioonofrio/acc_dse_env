library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package inmem_package is
  type mem is array(0 to 4000000) of integer;

  constant input_mem : mem := (
    -- bias
    17819, -24623, -7042,

    -- weights
    -- filter=0 channel=0
    80, 70, 101, 37, 110, 71, 112, 44, 47,
    -- filter=0 channel=1
    120, 51, 63, 109, 41, 85, 84, 24, 49,
    -- filter=0 channel=2
    3, -39, -34, -54, 9, -42, -42, -47, 30,
    -- filter=1 channel=0
    -75, -13, -56, 18, -32, -44, 4, -60, -37,
    -- filter=1 channel=1
    -32, 13, -11, -14, 4, -9, -17, -30, -42,
    -- filter=1 channel=2
    157, 157, 144, 182, 186, 181, 190, 123, 133,
    -- filter=2 channel=0
    31, 23, 59, 67, 49, 3, 18, 64, 42,
    -- filter=2 channel=1
    34, 19, -2, -20, 22, 56, 18, 30, -2,
    -- filter=2 channel=2
    12, 2, -40, -32, -26, -35, -8, 36, -11,

    -- ifmap
    -- channel=0
    158, 159, 165, 166, 160, 156, 162, 159, 158, 159, 161, 160, 161, 166, 169, 170, 167, 162, 160, 160, 156, 149, 150, 148, 149, 143, 140, 141, 143, 137, 126, 116, 
    152, 151, 159, 166, 162, 160, 164, 162, 163, 156, 155, 159, 163, 170, 171, 171, 169, 160, 154, 151, 145, 139, 140, 141, 149, 147, 145, 142, 143, 136, 125, 119, 
    151, 151, 158, 167, 160, 163, 165, 165, 163, 162, 158, 157, 161, 166, 167, 169, 170, 159, 145, 121, 110, 98, 101, 114, 120, 134, 143, 140, 142, 139, 130, 120, 
    155, 155, 160, 174, 167, 167, 169, 169, 165, 165, 167, 191, 177, 157, 162, 164, 158, 149, 104, 103, 98, 92, 80, 74, 86, 83, 113, 132, 140, 140, 136, 127, 
    155, 156, 161, 170, 169, 163, 169, 166, 164, 164, 173, 246, 195, 151, 146, 142, 111, 78, 85, 113, 112, 106, 97, 93, 74, 84, 85, 105, 128, 138, 133, 129, 
    148, 133, 130, 147, 161, 165, 167, 167, 163, 165, 163, 180, 157, 128, 97, 66, 69, 66, 89, 118, 122, 119, 114, 94, 99, 91, 58, 67, 108, 140, 138, 134, 
    127, 109, 47, 88, 153, 170, 168, 170, 169, 166, 164, 147, 129, 127, 100, 68, 78, 72, 83, 132, 146, 124, 105, 107, 115, 85, 63, 46, 79, 132, 141, 134, 
    131, 99, 42, 70, 143, 167, 165, 168, 171, 161, 140, 120, 130, 144, 116, 88, 91, 85, 77, 124, 163, 136, 102, 106, 100, 85, 54, 49, 57, 107, 138, 136, 
    170, 103, 54, 124, 153, 161, 163, 166, 165, 174, 113, 125, 157, 156, 121, 86, 82, 84, 80, 81, 138, 146, 113, 87, 83, 86, 71, 56, 40, 74, 133, 137, 
    180, 134, 94, 154, 174, 158, 156, 153, 207, 237, 207, 156, 174, 148, 125, 93, 86, 74, 59, 76, 137, 143, 133, 106, 86, 87, 84, 75, 50, 40, 95, 132, 
    183, 108, 142, 165, 177, 155, 159, 122, 213, 237, 220, 164, 183, 156, 125, 120, 78, 80, 45, 91, 175, 157, 155, 107, 87, 103, 88, 78, 59, 41, 59, 104, 
    188, 100, 135, 170, 187, 166, 173, 134, 117, 194, 199, 170, 185, 189, 134, 117, 102, 84, 38, 125, 210, 160, 146, 93, 83, 94, 104, 85, 73, 55, 62, 76, 
    189, 90, 127, 175, 174, 166, 178, 159, 97, 168, 168, 137, 186, 216, 160, 123, 120, 115, 50, 150, 194, 155, 123, 91, 84, 84, 95, 86, 84, 73, 79, 73, 
    189, 93, 152, 185, 119, 136, 173, 167, 103, 147, 145, 167, 189, 226, 180, 141, 126, 117, 71, 154, 186, 149, 114, 87, 80, 72, 80, 99, 100, 90, 97, 94, 
    194, 108, 168, 186, 105, 99, 156, 167, 100, 115, 138, 198, 190, 172, 145, 154, 146, 103, 71, 152, 179, 137, 130, 110, 85, 91, 95, 109, 115, 100, 97, 117, 
    197, 132, 172, 184, 130, 78, 140, 155, 115, 130, 143, 230, 242, 145, 135, 131, 121, 108, 95, 144, 168, 152, 112, 87, 71, 87, 105, 112, 120, 103, 121, 136, 
    203, 146, 168, 191, 168, 78, 126, 138, 138, 96, 154, 173, 162, 140, 113, 113, 101, 105, 112, 171, 156, 148, 135, 109, 78, 79, 94, 101, 107, 125, 151, 144, 
    214, 163, 164, 183, 176, 94, 96, 156, 148, 106, 129, 118, 114, 116, 102, 115, 86, 101, 144, 118, 68, 128, 133, 75, 60, 58, 71, 102, 116, 143, 150, 140, 
    212, 178, 167, 173, 176, 124, 86, 141, 153, 135, 104, 77, 134, 124, 129, 147, 85, 92, 150, 132, 117, 107, 75, 64, 44, 65, 86, 133, 155, 160, 154, 151, 
    199, 187, 171, 174, 177, 144, 86, 119, 122, 137, 144, 70, 129, 108, 145, 184, 116, 73, 131, 137, 134, 89, 51, 52, 47, 90, 121, 163, 171, 164, 158, 149, 
    165, 195, 179, 177, 181, 152, 99, 131, 171, 103, 93, 80, 93, 122, 178, 191, 150, 100, 89, 87, 60, 46, 38, 24, 46, 60, 108, 144, 144, 128, 127, 120, 
    117, 195, 177, 178, 181, 138, 83, 150, 245, 219, 133, 134, 149, 176, 190, 194, 168, 125, 110, 61, 35, 34, 49, 58, 61, 58, 69, 72, 78, 69, 59, 55, 
    79, 175, 174, 176, 177, 140, 109, 211, 253, 252, 208, 124, 114, 124, 116, 122, 104, 68, 68, 60, 52, 50, 51, 56, 56, 51, 43, 51, 59, 48, 43, 42, 
    41, 96, 144, 168, 178, 165, 165, 246, 253, 227, 110, 60, 53, 49, 49, 48, 45, 42, 46, 42, 38, 46, 46, 43, 42, 46, 46, 50, 55, 53, 51, 45, 
    29, 29, 59, 131, 166, 132, 194, 254, 241, 141, 61, 50, 50, 51, 49, 50, 47, 42, 39, 34, 35, 39, 38, 42, 45, 56, 62, 59, 56, 50, 46, 51, 
    48, 30, 34, 73, 128, 128, 215, 256, 187, 66, 54, 50, 52, 52, 46, 45, 43, 41, 36, 39, 40, 40, 43, 46, 59, 62, 64, 59, 54, 50, 70, 83, 
    52, 35, 31, 41, 66, 128, 224, 240, 124, 58, 49, 56, 54, 44, 44, 47, 46, 43, 43, 44, 44, 45, 54, 58, 54, 46, 43, 36, 51, 73, 85, 76, 
    50, 35, 29, 35, 44, 78, 202, 211, 97, 65, 54, 48, 58, 48, 40, 45, 47, 48, 47, 46, 51, 39, 39, 48, 47, 39, 28, 40, 67, 67, 46, 51, 
    50, 35, 32, 33, 41, 46, 104, 170, 64, 54, 52, 53, 61, 58, 54, 45, 42, 41, 46, 49, 46, 42, 40, 39, 37, 40, 44, 63, 47, 31, 15, 51, 
    68, 42, 31, 38, 37, 43, 42, 71, 49, 31, 27, 38, 49, 56, 58, 53, 56, 60, 57, 53, 50, 45, 39, 33, 42, 62, 79, 73, 56, 38, 13, 40, 
    61, 49, 35, 43, 39, 42, 44, 40, 42, 27, 23, 30, 27, 29, 36, 47, 56, 62, 66, 75, 69, 49, 43, 43, 60, 85, 109, 93, 60, 26, 29, 20, 
    54, 56, 45, 43, 40, 40, 40, 38, 36, 26, 22, 29, 25, 29, 19, 18, 32, 47, 61, 74, 66, 53, 52, 45, 67, 89, 105, 89, 48, 24, 34, 21, 
    
    -- channel=1
    112, 111, 116, 118, 112, 109, 115, 113, 111, 113, 116, 111, 111, 117, 117, 119, 117, 113, 111, 112, 109, 107, 107, 106, 107, 101, 98, 97, 97, 95, 91, 85, 
    112, 110, 114, 116, 112, 113, 117, 114, 116, 110, 111, 110, 113, 119, 117, 115, 115, 111, 112, 115, 110, 104, 102, 100, 105, 102, 102, 97, 98, 95, 91, 88, 
    110, 109, 111, 111, 106, 115, 117, 117, 115, 115, 114, 109, 111, 115, 114, 113, 116, 114, 111, 96, 90, 78, 77, 85, 86, 96, 103, 99, 99, 98, 95, 89, 
    107, 110, 109, 112, 110, 117, 120, 119, 115, 117, 123, 146, 130, 111, 115, 114, 112, 111, 80, 87, 90, 90, 75, 63, 70, 62, 85, 98, 102, 101, 99, 94, 
    107, 114, 115, 114, 114, 113, 120, 116, 113, 116, 128, 214, 156, 114, 111, 108, 80, 53, 69, 103, 110, 114, 102, 94, 72, 78, 73, 83, 96, 101, 94, 93, 
    109, 104, 100, 112, 115, 113, 116, 115, 111, 116, 118, 138, 122, 102, 75, 50, 58, 56, 83, 113, 121, 122, 116, 96, 100, 91, 58, 58, 84, 105, 98, 95, 
    100, 95, 37, 74, 117, 118, 115, 118, 117, 116, 120, 107, 98, 108, 87, 67, 83, 75, 84, 130, 142, 118, 99, 102, 111, 83, 71, 47, 61, 98, 99, 93, 
    115, 96, 43, 64, 111, 117, 114, 116, 119, 113, 109, 94, 110, 131, 106, 87, 95, 88, 77, 118, 153, 124, 93, 98, 93, 81, 60, 53, 47, 83, 103, 97, 
    161, 105, 58, 121, 124, 113, 117, 122, 121, 135, 89, 105, 141, 143, 111, 80, 81, 85, 78, 71, 125, 135, 103, 79, 77, 82, 73, 57, 35, 59, 106, 103, 
    176, 139, 100, 154, 149, 116, 116, 118, 180, 214, 180, 131, 153, 131, 110, 85, 84, 74, 57, 68, 125, 133, 124, 98, 81, 85, 85, 76, 49, 30, 75, 103, 
    183, 116, 151, 169, 156, 112, 118, 89, 197, 224, 191, 135, 159, 137, 108, 111, 76, 80, 44, 85, 165, 147, 147, 100, 83, 102, 88, 79, 59, 36, 46, 81, 
    191, 108, 144, 175, 167, 120, 123, 93, 95, 182, 171, 142, 161, 171, 119, 107, 98, 84, 38, 121, 201, 152, 139, 89, 80, 93, 104, 87, 75, 53, 55, 56, 
    194, 96, 134, 180, 156, 123, 123, 109, 68, 154, 144, 114, 166, 202, 149, 113, 114, 114, 50, 147, 187, 149, 118, 88, 83, 84, 95, 87, 87, 73, 74, 55, 
    192, 95, 154, 188, 110, 106, 124, 116, 72, 132, 125, 149, 174, 216, 172, 131, 117, 114, 71, 152, 181, 144, 110, 85, 80, 73, 80, 100, 101, 88, 89, 73, 
    196, 107, 167, 186, 109, 89, 119, 122, 74, 106, 123, 185, 180, 165, 140, 143, 136, 100, 71, 152, 175, 133, 128, 109, 86, 93, 96, 110, 116, 96, 85, 95, 
    197, 129, 167, 178, 137, 83, 120, 125, 94, 120, 131, 221, 236, 138, 130, 121, 112, 104, 88, 134, 159, 147, 108, 85, 72, 88, 104, 109, 110, 86, 96, 104, 
    203, 146, 164, 182, 170, 86, 125, 126, 121, 80, 143, 163, 152, 132, 106, 106, 101, 101, 90, 143, 138, 141, 130, 105, 76, 79, 93, 91, 83, 88, 108, 104, 
    215, 166, 167, 184, 182, 102, 96, 149, 137, 93, 116, 105, 102, 105, 91, 110, 91, 103, 128, 96, 56, 120, 126, 69, 56, 56, 70, 93, 94, 112, 116, 110, 
    211, 184, 175, 181, 184, 131, 88, 139, 148, 128, 90, 64, 121, 111, 117, 143, 92, 96, 139, 117, 109, 99, 68, 59, 41, 62, 69, 105, 119, 120, 115, 111, 
    192, 189, 176, 179, 182, 149, 90, 121, 124, 136, 134, 59, 118, 97, 134, 176, 118, 75, 119, 124, 129, 86, 49, 51, 49, 90, 91, 118, 121, 113, 111, 107, 
    156, 193, 178, 173, 181, 157, 103, 135, 175, 105, 90, 77, 90, 118, 173, 182, 148, 100, 78, 77, 61, 52, 46, 33, 57, 71, 100, 125, 123, 109, 113, 105, 
    120, 200, 178, 169, 179, 144, 87, 153, 247, 222, 140, 141, 156, 182, 196, 192, 172, 133, 109, 62, 49, 54, 70, 81, 85, 84, 99, 101, 104, 96, 92, 90, 
    105, 197, 183, 172, 177, 146, 112, 211, 252, 253, 224, 143, 132, 141, 133, 133, 124, 93, 87, 82, 84, 84, 85, 93, 94, 91, 96, 104, 108, 97, 97, 95, 
    89, 137, 168, 174, 182, 170, 166, 245, 251, 231, 136, 88, 80, 76, 75, 72, 79, 81, 81, 82, 86, 90, 89, 87, 89, 93, 94, 96, 96, 94, 95, 90, 
    91, 87, 102, 153, 179, 136, 189, 250, 245, 159, 94, 84, 84, 85, 83, 84, 86, 84, 82, 79, 83, 86, 85, 89, 92, 103, 103, 101, 102, 99, 94, 103, 
    111, 94, 85, 106, 148, 136, 213, 253, 198, 93, 91, 88, 90, 90, 83, 82, 82, 81, 80, 83, 86, 89, 92, 95, 108, 110, 109, 108, 108, 105, 123, 137, 
    114, 99, 86, 83, 95, 145, 229, 245, 143, 92, 87, 94, 92, 82, 82, 83, 84, 83, 86, 88, 90, 97, 106, 110, 105, 97, 95, 91, 108, 130, 138, 125, 
    110, 98, 89, 86, 83, 106, 219, 228, 126, 104, 94, 87, 97, 87, 80, 82, 84, 87, 89, 89, 97, 92, 93, 102, 101, 93, 85, 101, 129, 126, 98, 96, 
    108, 97, 92, 88, 88, 84, 133, 197, 100, 97, 94, 95, 103, 100, 96, 83, 79, 80, 88, 92, 92, 95, 93, 92, 90, 93, 102, 125, 110, 90, 60, 93, 
    124, 100, 88, 91, 87, 89, 79, 107, 89, 77, 71, 82, 93, 100, 102, 92, 94, 99, 99, 97, 95, 94, 88, 83, 91, 112, 132, 131, 116, 97, 64, 85, 
    116, 102, 85, 91, 90, 92, 88, 81, 85, 72, 67, 74, 71, 73, 80, 86, 95, 101, 109, 119, 113, 95, 88, 88, 105, 130, 156, 145, 115, 82, 82, 64, 
    107, 105, 89, 86, 89, 92, 87, 81, 79, 69, 66, 73, 69, 73, 63, 58, 70, 87, 104, 119, 111, 96, 95, 87, 109, 131, 146, 135, 99, 77, 84, 67, 
    
    -- channel=2
    49, 47, 51, 53, 46, 41, 47, 45, 44, 41, 41, 52, 49, 41, 45, 44, 40, 38, 39, 43, 44, 45, 45, 43, 44, 39, 43, 41, 38, 36, 36, 33, 
    51, 40, 45, 56, 49, 43, 47, 45, 46, 38, 41, 54, 52, 41, 40, 33, 30, 33, 41, 50, 53, 55, 52, 48, 50, 46, 45, 38, 34, 31, 32, 34, 
    47, 33, 36, 48, 42, 44, 45, 45, 43, 43, 48, 57, 51, 38, 37, 35, 39, 47, 54, 49, 52, 50, 47, 50, 48, 55, 51, 39, 35, 34, 34, 33, 
    40, 32, 31, 44, 43, 46, 48, 48, 44, 45, 57, 95, 75, 41, 47, 54, 58, 67, 47, 65, 76, 84, 66, 50, 52, 39, 45, 46, 43, 39, 39, 36, 
    41, 48, 49, 47, 43, 40, 47, 44, 41, 42, 59, 164, 107, 56, 60, 71, 50, 31, 56, 98, 111, 118, 105, 93, 67, 70, 47, 45, 48, 46, 36, 36, 
    54, 64, 57, 53, 44, 39, 41, 41, 37, 39, 42, 85, 78, 58, 43, 31, 43, 45, 76, 110, 120, 122, 116, 96, 97, 86, 47, 37, 49, 58, 44, 40, 
    57, 80, 17, 28, 48, 43, 40, 43, 42, 37, 39, 52, 59, 75, 70, 57, 72, 64, 74, 121, 132, 108, 90, 94, 103, 77, 69, 39, 36, 58, 48, 39, 
    90, 92, 38, 41, 56, 42, 36, 39, 49, 51, 51, 49, 77, 107, 93, 79, 88, 82, 69, 107, 140, 112, 81, 88, 84, 74, 58, 49, 32, 50, 51, 39, 
    144, 105, 59, 113, 82, 43, 41, 50, 66, 95, 59, 78, 121, 128, 101, 74, 77, 82, 73, 61, 112, 123, 93, 70, 69, 76, 67, 53, 27, 35, 59, 45, 
    163, 143, 105, 149, 112, 51, 47, 60, 146, 198, 166, 119, 145, 125, 107, 79, 79, 71, 53, 58, 112, 122, 114, 89, 74, 78, 78, 71, 43, 15, 44, 57, 
    175, 122, 158, 168, 122, 50, 51, 47, 179, 226, 188, 131, 155, 132, 104, 104, 69, 77, 40, 77, 154, 137, 138, 92, 77, 96, 79, 73, 59, 33, 31, 46, 
    189, 116, 153, 178, 136, 59, 55, 44, 80, 188, 164, 133, 151, 159, 106, 95, 89, 79, 34, 113, 192, 142, 130, 82, 75, 88, 94, 81, 78, 55, 48, 26, 
    194, 105, 144, 185, 133, 68, 53, 47, 44, 152, 126, 94, 148, 183, 129, 98, 105, 109, 47, 140, 178, 140, 111, 83, 79, 80, 85, 81, 89, 73, 64, 24, 
    193, 103, 163, 192, 98, 66, 58, 50, 39, 120, 103, 127, 155, 200, 157, 117, 107, 109, 68, 147, 174, 136, 104, 80, 76, 70, 72, 94, 99, 81, 69, 34, 
    196, 112, 172, 188, 109, 67, 62, 55, 34, 88, 103, 169, 169, 159, 140, 134, 125, 95, 70, 149, 170, 127, 122, 105, 83, 91, 90, 104, 111, 80, 53, 47, 
    197, 136, 174, 181, 142, 77, 88, 77, 52, 93, 116, 211, 230, 137, 130, 112, 101, 95, 75, 118, 146, 138, 101, 80, 68, 87, 99, 99, 93, 54, 48, 48, 
    204, 160, 178, 188, 172, 90, 126, 113, 82, 37, 133, 155, 141, 117, 88, 90, 92, 87, 58, 104, 109, 126, 118, 97, 72, 77, 94, 82, 55, 45, 55, 46, 
    215, 180, 184, 194, 186, 105, 102, 145, 111, 61, 105, 95, 89, 89, 73, 98, 88, 95, 102, 64, 32, 105, 115, 61, 51, 53, 65, 78, 64, 68, 64, 54, 
    205, 192, 189, 193, 188, 133, 96, 143, 141, 111, 80, 55, 108, 96, 100, 133, 93, 93, 120, 93, 92, 86, 58, 52, 39, 60, 40, 59, 62, 54, 45, 46, 
    180, 187, 181, 185, 184, 152, 99, 132, 130, 135, 126, 51, 108, 86, 123, 168, 118, 73, 103, 105, 118, 78, 44, 50, 52, 93, 60, 68, 64, 52, 50, 46, 
    146, 187, 175, 172, 180, 160, 111, 146, 185, 111, 87, 73, 86, 116, 173, 177, 148, 101, 66, 63, 57, 54, 51, 41, 69, 83, 75, 82, 76, 61, 69, 63, 
    124, 200, 176, 168, 179, 147, 91, 159, 250, 225, 144, 147, 164, 192, 208, 197, 181, 143, 109, 62, 58, 68, 87, 102, 110, 111, 122, 119, 120, 112, 112, 115, 
    133, 213, 192, 177, 182, 150, 113, 209, 247, 252, 232, 157, 149, 162, 156, 152, 148, 119, 104, 101, 111, 110, 115, 125, 131, 130, 135, 141, 142, 132, 137, 132, 
    135, 168, 188, 188, 192, 174, 164, 237, 241, 228, 153, 111, 105, 105, 107, 101, 115, 120, 113, 116, 125, 125, 126, 128, 132, 139, 137, 137, 135, 134, 139, 133, 
    141, 130, 134, 176, 191, 137, 181, 242, 245, 175, 127, 118, 119, 121, 120, 116, 117, 117, 115, 113, 120, 125, 125, 130, 134, 145, 142, 142, 146, 144, 140, 149, 
    162, 140, 124, 136, 167, 143, 209, 249, 205, 118, 128, 125, 127, 127, 121, 115, 113, 112, 113, 117, 123, 131, 134, 138, 150, 152, 147, 149, 154, 152, 167, 182, 
    165, 147, 130, 122, 126, 164, 234, 247, 153, 114, 123, 131, 129, 119, 119, 119, 119, 119, 123, 127, 131, 141, 150, 154, 150, 141, 140, 138, 158, 178, 182, 169, 
    162, 149, 138, 133, 126, 138, 233, 234, 140, 126, 129, 124, 133, 123, 116, 119, 122, 126, 130, 132, 140, 138, 139, 148, 147, 139, 133, 153, 182, 176, 142, 139, 
    161, 147, 143, 141, 138, 125, 159, 211, 119, 121, 128, 130, 139, 135, 131, 120, 118, 120, 130, 135, 136, 139, 138, 136, 135, 138, 151, 178, 164, 140, 103, 136, 
    177, 148, 137, 146, 139, 132, 113, 133, 114, 105, 105, 117, 128, 135, 137, 128, 131, 137, 139, 138, 137, 136, 131, 125, 133, 154, 179, 181, 168, 146, 108, 127, 
    168, 148, 132, 143, 139, 134, 125, 112, 115, 104, 102, 109, 106, 108, 115, 120, 128, 135, 144, 156, 152, 134, 127, 127, 144, 170, 197, 190, 164, 130, 126, 107, 
    160, 149, 132, 134, 134, 132, 123, 115, 114, 105, 101, 108, 104, 108, 98, 89, 100, 118, 137, 152, 145, 131, 130, 123, 145, 167, 182, 175, 145, 124, 129, 110, 
    
    
    others => 0);
end inmem_package;