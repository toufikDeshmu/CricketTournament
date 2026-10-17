package cricket;

import java.util.ArrayList;
import java.util.List;

public class Team {

    private String name;
    private String captain;
    private List<Player> players;

    public Team(String name, String captain) {
        this.name = name;
        this.captain = captain;
        this.players = new ArrayList<>();
    }

    public void addPlayer(Player player) {
        players.add(player);
    }

    public String getName() {
        return name;
    }

    public String getCaptain() {
        return captain;
    }

    public List<Player> getPlayers() {
        return players;
    }
}