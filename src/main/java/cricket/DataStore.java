package cricket;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

public class DataStore {

    public static List<Team> teams = new ArrayList<>();
    public static List<Match> matches = new ArrayList<>();

    private static final Gson gson = new GsonBuilder()
            .setPrettyPrinting()
            .create();

    private static final String DATA_FOLDER =
            System.getProperty("user.home")
            + File.separator
            + "CricketTournamentData";

    private static final String TEAMS_FILE =
            DATA_FOLDER + File.separator + "teams.json";

    private static final String MATCHES_FILE =
            DATA_FOLDER + File.separator + "matches.json";

    static {

        File folder = new File(DATA_FOLDER);

        if (!folder.exists()) {
            folder.mkdirs();
        }

        loadData();

        /*
         * If no saved data exists,
         * create the original default data.
         */
        if (teams.isEmpty() && matches.isEmpty()) {

            createDefaultData();

            saveTeams();
            saveMatches();
        }
    }

    private static void createDefaultData() {

        Team india = new Team("India", "Rohit Sharma");

        india.addPlayer(
            new Player("Rohit Sharma", "Batsman", 245, 0)
        );

        india.addPlayer(
            new Player("Virat Kohli", "Batsman", 310, 0)
        );

        india.addPlayer(
            new Player("Hardik Pandya", "All-Rounder", 180, 6)
        );

        india.addPlayer(
            new Player("Jasprit Bumrah", "Bowler", 35, 12)
        );

        Team australia = new Team("Australia", "Pat Cummins");

        australia.addPlayer(
            new Player("Pat Cummins", "Bowler", 45, 10)
        );

        australia.addPlayer(
            new Player("Steve Smith", "Batsman", 275, 0)
        );

        australia.addPlayer(
            new Player("Glenn Maxwell", "All-Rounder", 190, 7)
        );

        australia.addPlayer(
            new Player("Mitchell Starc", "Bowler", 30, 11)
        );

        teams.add(india);
        teams.add(australia);

        matches.add(
            new Match("India", "Australia", 185, 178)
        );
    }

    private static void loadData() {

        try {

            File teamsFile = new File(TEAMS_FILE);
            File matchesFile = new File(MATCHES_FILE);

            if (teamsFile.exists()) {

                FileReader reader = new FileReader(teamsFile);

                List<Team> loadedTeams = gson.fromJson(
                        reader,
                        new TypeToken<List<Team>>() {}.getType()
                );

                reader.close();

                if (loadedTeams != null) {
                    teams = loadedTeams;
                }
            }

            if (matchesFile.exists()) {

                FileReader reader = new FileReader(MATCHES_FILE);

                List<Match> loadedMatches = gson.fromJson(
                        reader,
                        new TypeToken<List<Match>>() {}.getType()
                );

                reader.close();

                if (loadedMatches != null) {
                    matches = loadedMatches;
                }
            }

        } catch (Exception e) {

            System.out.println(
                "Error loading JSON data: " + e.getMessage()
            );
        }
    }

    public static void saveTeams() {

        try {

            File folder = new File(DATA_FOLDER);

            if (!folder.exists()) {
                folder.mkdirs();
            }

            FileWriter writer = new FileWriter(TEAMS_FILE);

            gson.toJson(teams, writer);

            writer.flush();
            writer.close();

            System.out.println("Teams saved to: " + TEAMS_FILE);

        } catch (Exception e) {

            System.out.println(
                "Error saving teams: " + e.getMessage()
            );
        }
    }

    public static void saveMatches() {

        try {

            File folder = new File(DATA_FOLDER);

            if (!folder.exists()) {
                folder.mkdirs();
            }

            FileWriter writer = new FileWriter(MATCHES_FILE);

            gson.toJson(matches, writer);

            writer.flush();
            writer.close();

            System.out.println("Matches saved to: " + MATCHES_FILE);

        } catch (Exception e) {

            System.out.println(
                "Error saving matches: " + e.getMessage()
            );
        }
    }
}