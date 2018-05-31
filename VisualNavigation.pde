class VisualNavigation {
  private ArrayList Menu;
  private String Injuries2012;
  private String Injuries2013;
  private String Injuries2014;
  private String Injuries2015;
  private String Injuries2016;
  private String Injuries2017;
  private List numConcussions;
  private List numACL;
  private List numMCL;
  public VisualNavigation(String data12, String data13, String data14, String data15, String data16, String data17, int[] concussion, int[] ACL, int[] MCL) {
    Injuries2012=data12;
    Injuries2013=data13;
    Injuries2014=data14;
    Injuries2015=data15;
    Injuries2016=data16;
    Injuries2017=data17;
    Menu=new ArrayList<String>();
    numConcussions=new ArrayList<Integer>();
    for (int i : concussion) {
      numConcussions.add(i);
    }
    numACL=new ArrayList<Integer>();
    for (int i : ACL) {
      numACL.add(i);
    }
    numMCL=new ArrayList<Integer>();
    for (int i : MCL) {
      numMCL.add(i);
    }
  }
  void fillMenu() {
    Menu.add(Injuries2012);
    Menu.add(Injuries2013);
    Menu.add(Injuries2014);
    Menu.add(Injuries2015);
    Menu.add(Injuries2016);
    Menu.add(Injuries2017);
  }
  public ArrayList getMenu() {
    return Menu;
  }
  public List getNumConcussions() {
    return numConcussions;
  }
  public List getNumACL() {
    return numACL;
  }
  public List getNumMCL() {
    return numMCL;
  }
}