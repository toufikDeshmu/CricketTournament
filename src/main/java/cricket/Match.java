package cricket;

public class Match {

    private String team1;
    private String team2;
    private int score1;
    private int score2;
    private String winner;

    public Match(String team1, String team2, int score1, int score2) {
        this.team1 = team1;
        this.team2 = team2;
        this.score1 = score1;
        this.score2 = score2;

        if (score1 > score2) {
            winner = team1;
        } else if (score2 > score1) {
            winner = team2;
        } else {
            winner = "Match Draw";
        }
    }

    public String getTeam1() {
        return team1;
    }

    public String getTeam2() {
        return team2;
    }

    public int getScore1() {
        return score1;
    }

    public int getScore2() {
        return score2;
    }

    public String getWinner() {
        return winner;
    }
}