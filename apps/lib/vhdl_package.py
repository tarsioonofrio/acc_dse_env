from util import log2ceil


class Integer:
    type = 'integer'

    def __init__(self, name=None, start=None, end=None, default=None):
        self.name = name
        self.start = start
        self.end = end
        self.default = default

    def __str__(self):
        bounds = f" range {self.start} to {self.end}" if self.start is not None and self.end is not None else ""
        default = f" := {self.default}" if self.default is not None else ""
        output = f"constant {self.name}: {self.type} {bounds}{default};"
        return output


class StdLogicVector:
    type = 'std_logic_vector'

    def __init__(self, name, start=None, end=None, default=None):
        self.name = name
        self.start = start
        self.end = end
        self.default = default

    def __str__(self):
        bounds = f" range {self.start} to {self.end}" if self.start is not None and self.end is not None else ""
        default = f" := {self.default}" if self.default is not None else ""
        output = f"constant {self.name}: {self.type} {bounds}{default};"
        return output


class Array:
    def __init__(self, name, obj, start=None, end=None, default=None):
        self.name = name
        self.obj = obj
        self.start = start
        self.end = end
        self.default = default

    def __str__(self):
        bounds = f" range {self.start} to {self.end}" if self.start is not None and self.end is not None else ""
        default = f" := ({', '.join([str(s) for s in self.default])})" if self.default is not None else ""
        output = f"constant {self.name} is {self.obj.type}{bounds}{default};"
        return output

    def __call__(self):
        # bounds = f" range {self.start} to {self.end}" if self.start is not None and self.end is not None else ""
        # default = f" := {self.default}" if self.default is not None else ""
        output = f"type {self.name} is array ({self.start} to {self.end}) of {self.obj.type};"
        return output


class Package:
    def __init__(self, name, constant, array):
        self.name = name
        self.constant = constant
        self.array = array

    def body(self, body):
        string = (
            f"package {self.name} is"
            f"{body}"
            f"end package {self.name};"
        )

        return string

    def __str__(self):
        constant_scalar = [str(s) for s in self.constant]
        type_array = [s() for s in self.array]
        constant_array = [str(s) for s in self.array]
        body = constant_scalar + type_array + constant_array
        return self.body(body)


i = Integer("val", 0, 10, 7)
print(i)
i = Integer("val")
print(i)
# s = signal(i)
# c = constant(i)
i = Integer()
arr = Array('test', obj=i, start=0, end=10, default=[0, 1, 2])
print(arr())
print(arr)
print()

