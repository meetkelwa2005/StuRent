# StuRent - Student Product Rental Platform

A web-based enterprise rental platform tailored for students to browse and rent essential items—such as appliances, electronics, furniture, and academic supplies—while offering administrative management and complaint tracking.

---

## 🌟 Features
- **Student Authentication**: Secure sign-up, sign-in, password modification, and account deletion.
- **Admin & Authority Portal**: Dedicated administrative access to manage product inventories, view orders, and oversee student records.
- **Rental Order Pipeline**: Interactive product catalog allowing students to select items (e.g., coolers, study tables, beds, ACs) and submit rental orders.
- **Complaint Management System**: Students can submit complaints; administrators can review reports, update complaint resolution statuses, and delete closed tickets.
- **Enterprise MVC Architecture**: Clean separation of concerns using Apache Struts 2 actions and Hibernate ORM for relational persistence.

---

## 🛠️ Tech Stack
- **Backend**: Java, Apache Struts 2 (`ActionSupport`, `ModelDriven`), Servlets
- **ORM & Database**: Hibernate 3+ (`SessionFactory`), MySQL, JDBC
- **Frontend**: JSP, HTML, CSS, JavaScript
- **Build & Project Structure**: Apache Ant, NetBeans Project

---

## 📋 Prerequisites
- **Java Development Kit (JDK)**: JDK 8 or 11
- **Servlet Container / Web Server**: Apache Tomcat (v8.5 or v9.0)
- **Database**: MySQL Server 8.0+
- **IDE**: NetBeans IDE or IntelliJ IDEA (with Ant and Tomcat support)

---

## ⚙️ Database Configuration
1. Start your local MySQL service.
2. Create or verify the target database in MySQL:
   ```sql
   CREATE DATABASE mysql;
   ```
3. Update connection credentials in `src/java/hibernate.cfg.xml` if your local MySQL settings differ:
   ```xml
   <property name="hibernate.connection.driver_class">com.mysql.cj.jdbc.Driver</property>
   <property name="hibernate.connection.url">jdbc:mysql://localhost:3306/mysql</property>
   <property name="hibernate.connection.username">root</property>
   <property name="hibernate.connection.password">YOUR_PASSWORD</property>
   <property name="hibernate.hbm2ddl.auto">update</property>
   ```

---

## 🚀 How to Run
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/meetkelwa2005/StuRent.git
   cd StuRent
   ```
2. **Open in NetBeans IDE**:
   - Open NetBeans and select **File → Open Project**.
   - Navigate to the `StuRent` project directory and open it.
3. **Configure the Server**:
   - Right-click the project → **Properties → Run**.
   - Select your configured **Apache Tomcat** server.
4. **Deploy and Run**:
   - Right-click the project → **Clean and Build**.
   - Click **Run** or deploy the generated `.war` file to Tomcat's `webapps` directory.
   - Access the platform at: `http://localhost:8080/StuRent/` (or configured context path).

---

## 🧭 Key Actions & Endpoints
| Action Name | Action Class | Description |
| :--- | :--- | :--- |
| `signincode` | `struts.actions.UserActionCode` | Validates student credentials |
| `signupcode` | `struts.actions.UserActionCode` | Registers a new student |
| `ordercode` | `struts.actions.orderActionCode` | Processes and persists a rental product order |
| `complaincode` | `struts.actions.ComplainActionCode` | Submits a student complaint |
| `updatestatuscode` | `struts.actions.ComplainActionCode` | Updates resolution status of a complaint |
| `authsignincode` | `struts.actions.AuthActionCode` | Authenticates administrator/authority |

---

## 📄 License
This project is open source and available under standard educational terms.
