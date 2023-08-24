class InvalidDefenderLocationException extends java.lang.Exception implements java.io.Serializable
{
  private Location location;
  
  public InvalidDefenderLocationException(Location location)
  {
    this.location = location;
  }
  
  @Override
  public String getMessage()
  {
    String message = "{Invalid defender location: " + location + "}";
    return message;
  }
}
