/* Part 2 */
console.log('PART 2')
for (var i = 1; i <= 20; i++)
{
    console.log(i);
}

/* Part 3 */
console.log('PART 3')

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

for (var i = 0; i < 20; i++)
{
    if (numbers[i] % 3 == 0)
        if (numbers[i] % 5 == 0)
            console.log('eplekake');
        else
            console.log('eple');
    else if (numbers[i] % 5 == 0)
        console.log('kake');
    else
        console.log(numbers[i]);
}

/* Part 4 */
document.getElementById("title").innerText = "Hello JavaScript";

/* Part 5 */
function changeDisplay () {
    document.getElementById("magic").style.display = "none";
}

function changeVisibility () {
    document.getElementById("magic").style.visibility = "hidden";
}

function reset () {
    document.getElementById("magic").style.display = "block";
    document.getElementById("magic").style.visibility = "visible";
}

/* Part 6 */
const technologies = [
    'HTML5',
    'CSS3',
    'JavaScript',
    'Python',
    'Java',
    'AJAX',
    'JSON',
    'React',
    'Angular',
    'Bootstrap',
    'Node.js'
];

function addTechnologies() {
    var list = document.getElementById("tech");
    if (list.childElementCount > 0)
    {
        //We have already created a list, so do nothing.
        return;
    }
    for (var i = 0; i < technologies.length; i++) {
        var listItem = document.createElement("LI");
        listItem.appendChild(document.createTextNode(technologies[i]));
        list.appendChild(listItem);
    }
}
