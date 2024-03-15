function calculateSum() {
    var min = parseInt(document.getElementById('min').value);
    var max = parseInt(document.getElementById('max').value);
    var sum = 0;
    var oddNumbers = [];

    for (var i = min; i <= max; i++) {
        if (i % 2 !== 0) {
            sum += i;
            oddNumbers.push(i);
        }
    }

    var resultText = oddNumbers.join(" + ") + " = " + sum;
    
    document.getElementById('result').innerText = resultText;
}
