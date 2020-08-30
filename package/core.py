"""The core of the module."""


def fib(n: int) -> int:
    """Return the Fibonacci number in the series at the given n number."""
    if n < 2:
        return n
    return fib(n - 1) + fib(n - 2)


def main() -> None:
    """Ask an integer and print the Fibonacci number at given integer"""
    n = int(input("Give me some integer: "))
    print(f"fib({n}) = {fib(n)}")
