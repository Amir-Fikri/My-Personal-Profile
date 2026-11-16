<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Character Profile</title>

    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=VT323&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1 class="game-title"><i class="fa-solid fa-trophy"></i> PLAYER PROFILE</h1>
        <p class="subtitle">&gt; CHARACTER CREATED! &lt;</p>

        <div class="pixel-box">

            <div class="card-top">
                <div class="avatar">
                    <c:out value="${fn:toUpperCase(fn:substring(name, 0, 1))}"/>
                </div>
                <div>
                    <h2 class="char-name"><c:out value="${name}"/></h2>
                    <p class="char-class">
                        <i class="fa-solid fa-shield-halved"></i>
                        <c:choose>
                            <c:when test="${program == 'Computer Science'}">Code Mage</c:when>
                            <c:when test="${program == 'Information Technology'}">Tech Knight</c:when>
                            <c:when test="${program == 'Software Engineering'}">Build Paladin</c:when>
                            <c:when test="${program == 'Data Science'}">Data Ranger</c:when>
                            <c:otherwise>Adventurer</c:otherwise>
                        </c:choose>
                    </p>
                </div>
            </div>

            <h3 class="section-title"><i class="fa-solid fa-chart-simple"></i> STATS</h3>
            <div class="stats">
                <div class="stat">
                    <small>PLAYER ID</small>
                    <i class="fa-solid fa-id-card"></i><c:out value="${studentId}"/>
                </div>
                <div class="stat">
                    <small>PROGRAM</small>
                    <i class="fa-solid fa-graduation-cap"></i><c:out value="${program}"/>
                </div>
                <div class="stat" style="grid-column: 1 / -1;">
                    <small>CONTACT</small>
                    <i class="fa-solid fa-envelope"></i><c:out value="${email}"/>
                </div>
            </div>

            <h3 class="section-title"><i class="fa-solid fa-star"></i> SKILLS</h3>
            <c:choose>
                <c:when test="${empty hobbies}">
                    <p class="empty">No skills unlocked yet.</p>
                </c:when>
                <c:otherwise>
                    <ul class="skill-list">
                        <c:forEach var="h" items="${hobbies}">
                            <li class="skill-badge">
                                <c:choose>
                                    <c:when test="${h == 'Gaming'}"><i class="fa-solid fa-gamepad"></i></c:when>
                                    <c:when test="${h == 'Coding'}"><i class="fa-solid fa-code"></i></c:when>
                                    <c:when test="${h == 'Reading'}"><i class="fa-solid fa-book"></i></c:when>
                                    <c:when test="${h == 'Sports'}"><i class="fa-solid fa-futbol"></i></c:when>
                                    <c:when test="${h == 'Music'}"><i class="fa-solid fa-music"></i></c:when>
                                    <c:when test="${h == 'Drawing'}"><i class="fa-solid fa-palette"></i></c:when>
                                    <c:otherwise><i class="fa-solid fa-star"></i></c:otherwise>
                                </c:choose>
                                <c:out value="${h}"/>
                            </li>
                        </c:forEach>
                    </ul>
                </c:otherwise>
            </c:choose>

            <h3 class="section-title"><i class="fa-solid fa-scroll"></i> BACKSTORY</h3>
            <div class="dialog"><c:out value="${intro}"/></div>

            <div class="center">
                <a href="index.html" class="btn btn-back"><i class="fa-solid fa-arrow-left"></i> NEW CHARACTER</a>
            </div>
        </div>
    </div>
</body>
</html>
