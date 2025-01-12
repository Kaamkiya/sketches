int w = 600;
int[] nums = new int[w];

void randomizeNums() {
  for (int i = 0; i < nums.length; i++) {
    nums[i] = floor(random(height));
  }
}

void setup() {
  size(600, 400);
  
  randomizeNums();
  
  noStroke();
  fill(0);
}

void draw() {
  background(255);

  for (int i = 0; i < nums.length; i++) {
    rect(i, height - nums[i], 1, height);
  }
  
  boolean swapped = false;
  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] > nums[i+1]) {
      int tmp = nums[i];
      nums[i] = nums[i+1];
      nums[i+1] = tmp;
      swapped = true;
    }
  }
  
  if (!swapped) {
    nums = new int[w];
    randomizeNums();
  }
}
