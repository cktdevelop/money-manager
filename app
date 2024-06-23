document.addEventListener('DOMContentLoaded', function () {
    const salary = document.getElementById('salary');
    const loan1 = document.getElementById('loan1');
    const loan2 = document.getElementById('loan2');
    const houseLoan = document.getElementById('houseLoan');
    const landLoan = document.getElementById('landLoan');
    const gasoline = document.getElementById('gasoline');
    const food = document.getElementById('food');
    const utilities = document.getElementById('utilities');
    const milk = document.getElementById('milk');
    const diapers = document.getElementById('diapers');
    const saving = document.getElementById('saving');
    const balance = document.getElementById('balance');

    function calculateBalance() {
        const totalExpenses = 
            parseFloat(loan1.value) +
            parseFloat(loan2.value) +
            parseFloat(houseLoan.value) +
            parseFloat(landLoan.value) +
            parseFloat(gasoline.value) +
            parseFloat(food.value) +
            parseFloat(utilities.value) +
            parseFloat(milk.value) +
            parseFloat(diapers.value) +
            parseFloat(saving.value);

        const remainingBalance = parseFloat(salary.value) - totalExpenses;
        balance.value = remainingBalance.toFixed(2);
    }

    const inputs = [salary, loan1, loan2, houseLoan, landLoan, gasoline, food, utilities, milk, diapers, saving];

    inputs.forEach(input => {
        input.addEventListener('keyup', calculateBalance);
        input.addEventListener('change', calculateBalance); // In case the value is changed using other means
    });
});
