\# 🏏 CricketTournament Management System



A Java-based web application for managing cricket tournaments, teams, players, and matches through a web interface. The project demonstrates Advanced Web Technology concepts using Java Servlets, JSP, HTTP request handling, and server-side web development.



\## 🚀 Features



\- \*\*Team Management:\*\* Add, edit, view, and delete teams.

\- \*\*Player Management:\*\* Manage player information and team records.

\- \*\*Match Management:\*\* Create, update, view, and delete matches.

\- \*\*Authentication:\*\* Login and logout functionality.

\- \*\*Tournament Information:\*\* View teams, players, matches, and points pages.

\- \*\*Server-Side Processing:\*\* Handle user requests using Java Servlets.

\- \*\*Dynamic Web Pages:\*\* Generate web content using JSP.

\- \*\*JSON Processing:\*\* Gson library for JSON-related operations where required.



\## 🛠️ Technologies Used



| Technology | Purpose |

|---|---|

| Java | Application logic and server-side programming |

| Java Servlets | Handle HTTP requests and application operations |

| JSP (JavaServer Pages) | Generate dynamic web pages |

| HTML | Structure web pages |

| CSS | Web page styling, where implemented |

| Apache Tomcat 9 | Java web application server |

| Gson 2.13.2 | JSON serialization and deserialization |

| Eclipse IDE | Development and project management |

| Git and GitHub | Version control and source code hosting |



\## 🌐 Advanced Web Technology Concepts



\- \*\*Client–Server Architecture:\*\* The browser communicates with the server to perform application operations.

\- \*\*HTTP Request–Response Cycle:\*\* Servlets process incoming web requests and return responses.

\- \*\*Server-Side Rendering:\*\* JSP generates dynamic HTML content on the server.

\- \*\*CRUD Operations:\*\* Create, Read, Update, and Delete operations for teams, players, and matches.

\- \*\*Form Handling:\*\* Process user-submitted information through web forms.

\- \*\*Session-Based Authentication:\*\* Login and logout workflows, subject to the application's session implementation.

\- \*\*Java Web Application Deployment:\*\* Run a web application on an Apache Tomcat servlet container.

\- \*\*JSON Processing:\*\* Use Gson where JSON conversion is required.



\## 🏛️ MVC Architecture



The CricketTournament Management System follows the \*\*Model–View–Controller (MVC) architectural pattern\*\* to organize application components and separate the user interface from request handling and data representation.



\### MVC Components in This Project



\*\*1. Model — Java Classes\*\*



The Model represents the application's data and related logic.



Files used:

\- `Match.java` — Represents cricket match information.

\- `Player.java` — Represents player information.

\- `Team.java` — Represents team information.

\- `DataStore.java` — Supports data storage and access operations.



\*\*2. View — JSP Pages\*\*



The View presents information to users through dynamic web pages.



Examples:

\- `index.jsp` — Application entry page.

\- `login.jsp` — Login interface.

\- `admin.jsp` — Administrative interface.

\- `teams.jsp` and `team.jsp` — Team-related pages.

\- `players.jsp` and `player.jsp` — Player-related pages.

\- `matches.jsp` and `match.jsp` — Match-related pages.

\- `points.jsp` — Points information page.



\*\*3. Controller — Java Servlets\*\*



The Controller receives HTTP requests, processes user actions, and coordinates application operations.



Examples:

\- `LoginServlet.java` and `LogoutServlet.java` — Handle authentication workflows.

\- `AddTeamServlet.java`, `EditTeamServlet.java`, and `DeleteTeamServlet.java` — Handle team-management requests.

\- `AddPlayerServlet.java`, `EditPlayerServlet.java`, and `DeletePlayerServlet.java` — Handle player-management requests.

\- `AddMatchServlet.java`, `EditMatchServlet.java`, and `DeleteMatchServlet.java` — Handle match-management requests.



\### How MVC Works in the Application



For example, when an administrator adds a team:



1\. \*\*View:\*\* The user enters team information through a JSP form.

2\. \*\*Controller:\*\* The corresponding Servlet receives the HTTP form submission.

3\. \*\*Model / Data Layer:\*\* The application processes the team information using the relevant Java classes and data-storage operations.

4\. \*\*Response:\*\* The application returns or forwards to the appropriate JSP page to display the result.



\### Benefits of MVC



\- Separation of presentation, request handling, and data-related responsibilities.

\- Better organization and maintainability of Java web application code.

\- Easier debugging and modification of individual components.

\- Reusable Java classes and JSP views.

\- Clearer application structure for implementing CRUD operations.



This architecture demonstrates the application of MVC concepts in Java Servlet and JSP-based Advanced Web Technology development.





\## 📋 Prerequisites



Install the following software before running the application:



\- Java Development Kit (JDK)

\- Eclipse IDE for Enterprise Java and Web Developers

\- Apache Tomcat 9

\- Git (optional, for source code management)



\## ⚙️ How to Run the Project



1\. Clone or download this repository.

2\. Open Eclipse.

3\. Select \*\*File → Import → General → Existing Projects into Workspace\*\*.

4\. Select the downloaded `CricketTournament` project folder.

5\. Configure Apache Tomcat 9 in Eclipse under \*\*Window → Show View → Servers\*\*.

6\. Configure the project to use the Tomcat 9 runtime.

7\. Add the project to the Tomcat server.

8\. Start the server.

9\. Open the application in your browser using the context path assigned by Eclipse, for example:



&#x20;  `http://localhost:8080/CricketTournament/`



&#x20;  If the project uses a different context path, use that path instead.



\## 📁 Project Structure



```text

CricketTournament/

├── src/

│   └── main/

│       ├── java/

│       │   └── cricket/

│       │       ├── AddMatchServlet.java

│       │       ├── AddPlayerServlet.java

│       │       ├── AddTeamServlet.java

│       │       ├── DataStore.java

│       │       ├── LoginServlet.java

│       │       ├── LogoutServlet.java

│       │       ├── Match.java

│       │       ├── Player.java

│       │       └── Team.java

│       └── webapp/

│           ├── WEB-INF/

│           │   └── lib/

│           │       └── gson-2.13.2.jar

│           ├── index.jsp

│           ├── login.jsp

│           ├── admin.jsp

│           ├── teams.jsp

│           ├── players.jsp

│           ├── matches.jsp

│           └── points.jsp

├── .classpath

├── .project

├── .gitignore

└── README.md

```



\## 🎯 Project Objective



The objective of this project is to develop a web-based cricket tournament management system while applying Advanced Web Technology concepts, including Java Servlet processing, JSP-based dynamic content, HTTP communication, form handling, and CRUD operations.



\## 👨‍💻 Author



\*\*Toufik Deshmukh\*\*



B.Tech – Artificial Intelligence and Machine Learning



MGM University



\## 📄 License



This project is intended for educational and academic purposes. Add a specific open-source license if you wish to define permissions for reuse and distribution.



