<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %> <%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %> <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" jdbcUrl="jdbc:mysql://localhost/dw_aeki?user=root&password=" catalogUri="/WEB-INF/queries/AEKI_Schema1.xml">
  select {[Measures].[Total Sales], [Measures].[Unit Sales], [Measures].[Avg Sales]} on columns, {[Produk].[Semua Produk]} on rows from Sales
</jp:mondrianQuery>

<c:set var="title01" scope="session">AKEI - Cube Penjualan Berdasarkan Kategori Furniture</c:set>
