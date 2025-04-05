```
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title>Calculatrice</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #222;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      color: white;
    }

    .calculator {
      background: #333;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.5);
    }

    .display {
      width: 100%;
      height: 50px;
      background: #000;
      color: #0f0;
      font-size: 24px;
      text-align: right;
      padding: 10px;
      border-radius: 5px;
      margin-bottom: 10px;
    }

    .buttons {
      display: grid;
      grid-template-columns: repeat(4, 60px);
      gap: 10px;
    }

    button {
      padding: 15px;
      font-size: 18px;
      border: none;
      border-radius: 5px;
      background: #555;
      color: white;
      cursor: pointer;
      transition: 0.2s;
    }

    button:hover {
      background: #777;
    }

    button.operator {
      background: #f90;
    }

    button.equal {
      background: #0c0;
    }

    button.clear {
      background: #c00;
    }
  </style>
</head>
<body>

<div class="calculator">
  <div class="display" id="display">0</div>
  <div class="buttons">
    <button class="clear" onclick="clearDisplay()">C</button>
    <button onclick="appendValue('(')">(</button>
    <button onclick="appendValue(')')">)</button>
    <button class="operator" onclick="appendValue('/')">÷</button>

    <button onclick="appendValue('7')">7</button>
    <button onclick="appendValue('8')">8</button>
    <button onclick="appendValue('9')">9</button>
    <button class="operator" onclick="appendValue('*')">×</button>

    <button onclick="appendValue('4')">4</button>
    <button onclick="appendValue('5')">5</button>
    <button onclick="appendValue('6')">6</button>
    <button class="operator" onclick="appendValue('-')">−</button>

    <button onclick="appendValue('1')">1</button>
    <button onclick="appendValue('2')">2</button>
    <button onclick="appendValue('3')">3</button>
    <button class="operator" onclick="appendValue('+')">+</button>

    <button onclick="appendValue('0')">0</button>
    <button onclick="appendValue('.')">.</button>
    <button class="equal" onclick="calculate()">=</button>
  </div>
</div>

<script>
  let display = document.getElementById('display');

  function appendValue(value) {
    if (display.innerText === '0') {
      display.innerText = value;
    } else {
      display.innerText += value;
    }
  }

  function clearDisplay() {
    display.innerText = '0';
  }

  function calculate() {
    try {
      display.innerText = eval(display.innerText);
    } catch (e) {
      display.innerText = 'Erreur';
    }
  }
</script>

</body>
</html>
```
