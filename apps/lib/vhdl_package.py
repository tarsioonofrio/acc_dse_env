import numpy as np


class Integer:
    type = 'integer'

    def __init__(self, default, name):
        self.default = np.array(default)
        self.is_scalar = len(self.default.shape) == 0
        self.name = name
        self.type_name = f"type_array_{self.name}"

    def range(self):
        if self.is_scalar:
            output = f"range 0 to {self.default}"
            return output
        else:
            output = f"range {self.default.min()} to {self.default.max()}"
            return output

    def __str__(self):
        if self.is_scalar:
            default = f":= {self.default}"
            output = f"constant {self.name}: {self.type} {self.range()} {default};"
            return output
        else:
            typ = (
                f"type {self.type_name} is array (0 to {len(self.default) - 1}) "
                f"of {self.type} {self.range()};"
            )
            default = f":= ({', '.join([str(s) for s in self.default])})"
            const = f"constant {self.name} : {self.type_name} {default};"
            output = f"{typ}\n{const}"
            return output

    def __repr__(self):
        return self.__str__()


class String:
    type = 'string'

    def __init__(self, default, name):
        self.default = default
        self.name = name

    def __str__(self):
        default = f":= '{self.default}'"
        output = f"constant {self.name}: {self.type} {default};"
        return output

    def __repr__(self):
        return self.__str__()


class Package:
    tab = ' '*2
    eof = '\n'

    def __init__(self, name, *args):
        self.name = name
        self.args = args

    def body(self, body):
        string = self.eof.join(map(str, body))
        formatted = (
            f"library ieee;{self.eof}"
            f"use ieee.std_logic_1164.all;{self.eof}"
            f"use ieee.std_logic_arith.all;{self.eof * 3}"
            f"package {self.name} is{self.eof * 2}"
            f"{string}{self.eof * 2}"
            f"end package {self.name};{self.eof}"
        )
        return formatted

    def __str__(self):
        return self.body(self.args)

    def __repr__(self):
        return self.__str__()

# class StdLogicVector:
#     type = 'std_logic_vector'
#
#     def __init__(self, default, name, start=None, end=None):
#         self.default = default
#         self.name = name
#         self.start = start
#         self.end = end
#
#     def range(self):
#         if self.start is None or self.end is None:
#             return None
#         elif self.start is None and self.end is None:
#             output = f" ({len(self.default)} downto 0)"
#             return output
#         else:
#             direction = "downto" if self.start > self.end else "to" if self.end > self.start else ''
#             output = f" ({self.start} {direction} {self.end})"
#             return output
#
#     def __str__(self):
#         # bounds = f" range {self.start} to {self.end}" if self.start is not None and self.end is not None else ""
#         default = f" := {self.default}"
#         output = f"constant {self.name}: {self.type}{self.range()}{default};"
#         return output
#
#     def __repr__(self):
#         return self.__str__()
#
#
# class Array:
#     def __init__(self, obj, name, start=None, end=None):
#         self.name = name
#         self.obj = obj
#         self.start = start
#         self.end = end
#
#     def __str__(self):
#         type_array = f"type_array_{self.name}"
#         typ = (
#             f"type {type_array} is array ({self.start} to {self.end}) "
#             f"of {self.obj.type} {self.obj.array_range(self.obj.default)};"
#         )
#         default = f" := ({', '.join([str(s) for s in self.obj.default])})"
#         const = f"constant {self.name} is {type_array}{default};"
#         output = (typ, const)
#         return output
#
#     def __repr__(self):
#         return self.__str__()




