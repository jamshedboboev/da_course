Создайте репозиторий git_branches
В репозитории создайте файл factorial.py
Сохраните и закомитьтесь.
Создайте новую ветку recursive но пока не переходите на неё
Вставьте в файл factorial.py следующий код:

```
def factorial(n, method="iterative"):
    if method == "iterative":
        result = 1
        for i in range(1, n + 1):
            result *= i
        return result
    else:
        # Placeholder for recursive method
        pass

if __name__ == "__main__":
    number = 5
    method = input("Choose method (iterative/recursive): ").strip().lower()
    print(f"Factorial of {number} is {factorial(number, method)}")
```

Сохраните изменения и закомитьте
Перейдите на ветку recursive
Вставьте в файл следующий код:
```
def factorial(n, method="iterative"):
    if method == "recursive":
        if n == 0 or n == 1:
            return 1
        else:
            return n * factorial(n - 1, method="recursive")
    else:
        # Placeholder for iterative method
        pass

if __name__ == "__main__":
    number = 5
    method = input("Choose method (iterative/recursive): ").strip().lower()
    print(f"Factorial of {number} is {factorial(number, method)}")
```

Сохраните изменения и закомитьте
Вернитесь на ветку main
Произведите слияние основной ветки с веткой recursive
Разрешите возникший конфликт (подсказка - этот конфликт вам придётся решать вручную)
Закомитьте результат но не удаляйте ветку recursive
Перенесите репозиторий с обеими ветками на github сделав его публичным
Прикрепите ссылку на этот репозиторий.