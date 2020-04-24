<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s" %>

<div id="sidebar" class="sidebar py-3">
      <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
      <ul class="sidebar-menu list-unstyled">
        <li class="sidebar-list-item"><a id="adminhomeactive" href="<c:url value="/manager/home"/>" class="sidebar-link text-muted"><i
              class="o-home-1 mr-3 text-gray"></i><span>Home</span></a></li>
              
        <li class="sidebar-list-item"><a id="usermanageractive" href="<c:url value="/manager/user"/>" class="sidebar-link text-muted"><i
              class="o-table-content-1 mr-3 text-gray"></i><span>Account Manager</span></a></li>
              
        <li class="sidebar-list-item"><a id="actormanageractive" href="<c:url value="/manager/actor"/>" class="sidebar-link text-muted"><i
              class="o-table-content-1 mr-3 text-gray"></i><span>Actors Manager</span></a></li>
              
        <li class="sidebar-list-item"><a id="directorsnamageractive" href="<c:url value="/manager/directors"/>" class="sidebar-link text-muted"><i
              class="o-table-content-1 mr-3 text-gray"></i><span>Directors Manager</span></a></li>
              
        <li class="sidebar-list-item"><a id="moviemanageractive" href="<c:url value="/manager/movies"/>" class="sidebar-link text-muted"><i
              class="o-table-content-1 mr-3 text-gray"></i><span>Movies Manager</span></a></li>
              
        <li class="sidebar-list-item"><a id="logmageractive" href="<c:url value="/manager/systemlog"/>" class="sidebar-link text-muted"><i
              class="o-survey-1 mr-3 text-gray"></i><span>Activity log</span></a></li>
              
        <li class="sidebar-list-item"><a href="#" data-toggle="collapse" data-target="#pages" aria-expanded="false"
            aria-controls="pages" class="sidebar-link text-muted"><i
              class="o-wireframe-1 mr-3 text-gray"></i><span>Quản lý khác</span></a>
          <div id="pages" class="collapse">
            <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
              <li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted pl-lg-5">Page one</a></li>
              <li class="eebar-list-item"><a href="#" class="sidebar-link text-muted pl-lg-5">Page two</a></li>
              <li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted pl-lg-5">Page three</a></li>
              <li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted pl-lg-5">Page four</a></li>
            </ul>
          </div>
        </li>
        <li class="sidebar-list-item"><a href="<c:url value="/manager/"/>" class="sidebar-link text-muted"><i
              class="o-exit-1 mr-3 text-gray"></i><span>Logout</span></a></li>
      </ul>
      <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">EXTRAS
      </div>
      <ul class="sidebar-menu list-unstyled">
        <li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted"><i
              class="o-database-1 mr-3 text-gray"></i><span>Demo</span></a></li>
        <li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted"><i
              class="o-imac-screen-1 mr-3 text-gray"></i><span>Demo</span></a></li>
        <li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted"><i
              class="o-paperwork-1 mr-3 text-gray"></i><span>Demo</span></a></li>
        <li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted"><i
              class="o-wireframe-1 mr-3 text-gray"></i><span>Demo</span></a></li>
      </ul>
    </div>