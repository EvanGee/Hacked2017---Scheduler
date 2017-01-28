#define TOKENPASTE(x, y) x ## y

#define GET_MINIMUM(T) TOKENPASTE(get_minimum_, T)

TYPE GET_MINIMUM (TYPE) (TYPE * nums, size_t len){
	TYPE min = nums[0];

	for (size_t i = 1; i < len; i++) {
		if (nums[i] < min) {
			min = nums[i];
		}
	}

	return min;
}
