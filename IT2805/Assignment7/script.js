var tasks = [];
var checkboxes = [];
var numCheckedTasks = 0;

document.getElementById("submitButton").addEventListener("click", addTask);

// Make addTask trigger by 'enter' key in addition to submit button
document.getElementById("inputField").addEventListener("keydown", function (e)
	{
		if (e.key === "Enter") addTask();
	});

function addTask()
{
	// Initialize or get HTML elements
	let input = document.getElementById("inputField");
	if (input.value.length === 0) return;	// check that user actually typed something
	let taskList = document.getElementById("taskList");
	let row = document.createElement("li");
	let checkbox = document.createElement("input");
	let rowText = document.createElement("span");

	// Populate row 
	checkbox.setAttribute("type", "checkbox");
	checkbox.setAttribute("class", "listItemCheckbox");
	checkboxes.push(checkbox);
	registerCheckboxEventListener(checkbox);
	rowText.innerHTML = input.value;
	row.appendChild(checkbox);
	row.appendChild(rowText);
	input.value = "";

	// Add row (li) to list (ul)
	taskList.insertBefore(row, taskList.childNodes[0]);

	// Add task object which isn't really used but the assignment says it's required
	let task = {text: row.childNodes[1].innerHTML, timestamp: new Date()};
	tasks.push(task);

	updateOutputText();
}

function updateOutputText()
{
	let output = document.getElementById("output");
	output.innerHTML = numCheckedTasks + "/" + checkboxes.length + " tasks completed";
}

function registerCheckboxEventListener(checkbox)
{
	checkbox.addEventListener("change", function() 
		{
			if (this.checked)
			{
				this.parentElement.childNodes[1].style.textDecoration = "line-through";
				numCheckedTasks++;
			}
			else
			{
				this.parentElement.childNodes[1].style.textDecoration = "none";
				numCheckedTasks--;
			}
			updateOutputText();
		});
}