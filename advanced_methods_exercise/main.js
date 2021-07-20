function bubbleSort(arr) {
	let sorted = false;
	while (!sorted) {
		sorted = true;

		for (let i = 0; i < arr.length - 1; i++) {
			if (arr[i] > arr[i + 1]) {
				let prev = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = prev;
				sorted = false;
			}
		}
	}

	return arr;
}

console.log(bubbleSort([2, 8, 5, 2, 6]));
console.log(bubbleSort([10, 8, 7, 1, 2, 3]));
