String[] names = {"3 Wings", "Burger", "Burger+2 Wings", "4 Piece", "5 Wing", "5 Strips",
  "Grilled Burger", "Half Pounder", "Fish Burger", "Chicken & Rice", "Quarter Pounder", "6 Nugget"};
int[] counts = {9, 27, 6, 1, 1, 1, 2, 1, 1, 1, 1, 2};

void setup() {
  size(900, 500);
  textAlign(CENTER);
  textSize(11);
}

void draw() {
  background(255);
  text("Meal orders over 3 Mondays (90 mins each)", width / 2, 25);
  for (int i = 0; i < counts.length; i++) {
    float x = 40 + i * 70, h = counts[i] * 11;
    fill(counts[i] == max(counts) ? color(240, 130, 30) : color(70, 130, 190));
    rect(x, 400 - h, 50, h);
    fill(0);
    text(counts[i], x + 25, 395 - h);
    text(names[i], x + 25, 420 + (i % 2) * 20);
  }
}
