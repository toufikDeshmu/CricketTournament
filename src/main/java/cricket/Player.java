package cricket;

public class Player {

    private String name;
    private String role;
    private int runs;
    private int wickets;

    public Player(String name, String role, int runs, int wickets) {
        this.name = name;
        this.role = role;
        this.runs = runs;
        this.wickets = wickets;
    }

    public String getName() {
        return name;
    }

    public String getRole() {
        return role;
    }

    public int getRuns() {
        return runs;
    }

    public int getWickets() {
        return wickets;
    }
}