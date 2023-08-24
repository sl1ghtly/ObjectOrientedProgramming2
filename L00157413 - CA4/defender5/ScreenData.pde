public class ScreenData
{
  private int score;
  private int lives;

  public ScreenData()
  {
    score=0;
    lives=Game.INITIAL_LIVES;
  }
  
  //added methods start
  public int getScore()
  {
    return score;
  }
  
  public void setScore(int score)
  {
    this.score = score;
  }
  
  public int getLives()
  {
    return lives;
  }
  
  public void setLives(int lives)
  {
    this.lives = lives;
  }
  
  public void incScore(int value)
  {
    this.score = this.score + value;
  }
  
  public void addLife()
  {
    this.lives = this.lives + 1;
  }
  
  public void loseLife()
  {
    this.lives = this.lives - 1;
  }
  
  //toString method for ScreenData
  public String toString()
  {
    return "[ScreenData: score=" + getScore() + ", lives=" + getLives() + "]";
  }
  //added methods end
  
  public void display()
  {
    textSize(28);
    fill(153);    
    // display lives and score
    textSize(32);
    text("Score: " + str(score), 0, 30);
    text("Lives: " + str(lives), width-110, 30);
    
  }
}
