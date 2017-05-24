int[] nums = {5,4,2,7,6,8,5,2,8,14};
for (int i=0; i<nums.length-1; i++) {
  nums[i] = nums[i] + nums[i+1];
  println(nums[i]);
}