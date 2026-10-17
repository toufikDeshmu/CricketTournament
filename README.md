# 🏏 CricketTournament Management System



A Java-based web application for managing cricket tournaments, teams, players, and matches through a web interface.



This project demonstrates **Advanced Web Technology** concepts using Java Servlets, JSP, HTTP request handling, and server-side web development.



## 🚀 Features



- **Team Management:** Add, edit, view, and delete teams.

- **Player Management:** Manage player information and team records.

- **Match Management:** Create, update, view, and delete matches.

- **Authentication:** Login and logout functionality.

- **Tournament Information:** View teams, players, matches, and points pages.

- **Server-Side Processing:** Handle user requests using Java Servlets.

- **Dynamic Web Pages:** Generate web content using JSP.

- **JSON Processing:** Use the Gson library for JSON-related operations where required.



## 🛠️ Technologies Used



| Technology | Purpose |

|---|---|

| Java | Application logic and server-side programming |

| Java Servlets | Handle HTTP requests and application operations |

| JSP | Generate dynamic web pages |

| HTML | Structure web pages |

| CSS | Style web pages, where implemented |

| Apache Tomcat 9 | Run the Java web application |

| Gson 2.13.2 | JSON processing |

| Eclipse IDE | Development environment |

| Git and GitHub | Version control and source code hosting |



## 🌐 Advanced Web Technology Concepts



- **Client–Server Architecture:** The browser communicates with the server.

- **HTTP Request–Response Cycle:** Servlets process incoming requests and return responses.

- **Server-Side Rendering:** JSP generates dynamic HTML content.

- **CRUD Operations:** Create, Read, Update, and Delete teams, players, and matches.

- **Form Handling:** Process information submitted through web forms.

- **Authentication:** Implement login and logout workflows.

- **Web Application Deployment:** Run the application using Apache Tomcat.

- **JSON Processing:** Use Gson where JSON conversion is required.



## 🏛️ MVC Architecture



The application follows an **MVC-style separation** of data-related classes, user interface pages, and request-handling components.



### 1. Model — Java Classes



The Model represents application data.



- `Match.java` — Represents cricket match information.

- `Player.java` — Represents player information.

- `Team.java` — Represents team information.

- `DataStore.java` — Supports data storage and access operations.



### 2. View — JSP Pages



The View displays information and provides the user interface.



- `index.jsp` — Application entry page.

- `login.jsp` — Login interface.

- `admin.jsp` — Administrative interface.

- `teams.jsp` and `team.jsp` — Team-related pages.

- `players.jsp` and `player.jsp` — Player-related pages.

- `matches.jsp` and `match.jsp` — Match-related pages.

- `points.jsp` — Points information page.



### 3. Controller — Java Servlets



The Controller receives HTTP requests and processes user actions.



- `LoginServlet.java` and `LogoutServlet.java` — Handle login and logout requests.

- `AddTeamServlet.java`, `EditTeamServlet.java`, and `DeleteTeamServlet.java` — Handle team-management operations.

- `AddPlayerServlet.java`, `EditPlayerServlet.java`, and `DeletePlayerServlet.java` — Handle player-management operations.

- `AddMatchServlet.java`, `EditMatchServlet.java`, and `DeleteMatchServlet.java` — Handle match-management operations.



### How MVC Works



For example, when an administrator adds a team:



1\. **View:** The user enters team information in a JSP form.

2\. **Controller:** The corresponding Servlet receives the submitted form data.

3\. **Model/Data Layer:** The application processes the information using its Java classes and data-handling operations.

4\. **Response:** The application returns the appropriate response or JSP page.



### Benefits of MVC



- **Separation of concerns:** Organizes presentation, request handling, and data-related responsibilities.

- **Maintainability:** Makes the code easier to understand and modify.

- **Organization:** Separates JSP pages from Servlet request-handling code.

- **Reusability:** Gives Java classes and JSP pages distinct responsibilities.



## 📋 Prerequisites



Install the following software:



- Java Development Kit (JDK)

- Eclipse IDE for Enterprise Java and Web Developers

- Apache Tomcat 9

- Git (optional)



## ⚙️ How to Run the Project



1\. Clone or download the repository.

2\. Open Eclipse.

3\. Select **File → Import → General → Existing Projects into Workspace**.

4\. Select the `CricketTournament` project folder.

5\. Configure Apache Tomcat 9 in Eclipse.

6\. Set the project runtime to Tomcat 9.

7\. Add the project to the Tomcat server.

8\. Start the server.

9\. Open the application using the context path assigned by Eclipse, for example:



&#x20;  `http://localhost:8080/CricketTournament/`



&#x20;  Use the actual context path if it differs.



## 📁 Project Structure



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



## 🎯 Project Objective



To develop a web-based cricket tournament management system while applying Advanced Web Technology concepts such as Java Servlet processing, JSP-based dynamic content, HTTP communication, form handling, and CRUD operations.



## 👨‍💻 Author



**Toufik Deshmukh**



B.Tech — Artificial Intelligence and Machine Learning



MGM University



## 📄 License



This project is intended for educational and academic purposes. Add an open-source license if you want to specify permissions for reuse and distribution.


