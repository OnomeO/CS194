
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 

<jsp:useBean id="student" class="student.StudentInfo" scope="session"/>
<jsp:setProperty name="student" property="*"/>

<html>
	<head>
		<title>BSEE Program Sheet</title>

		<link rel='stylesheet' type='text/css' href='stylesheets/sheet.css'>
		
		<script type='text/javascript' src='javascript/webcell4.js'></script> 
		<script type='text/javascript' src='javascript/proforma.js'></script>
		<script type='text/javascript' src='javascript/epilog.js'></script>
		<script type='text/javascript' src='javascript/infoserver.js'></script>
        <script type='text/javascript'>var sheethandle = 'sheet_3544732557001';var saveddata = 'false';</script>
        <script type='text/javascript' src='javascript/mscs2010.js'></script>
	</head>

	<body onload="generateSheet('single');">
		<h1 align="center">DEPARTMENT OF ELECTRICAL ENGINEERING</h1>
		<h2 align="center">BSEE Program Sheet (2012-2013)</h2>
		
		<jsp:useBean id="user" class="student.StudentInfo" scope="session"/> 
		
		<form id='form1' action='programsheet?' method='post' > 
		<input type='hidden' id='sheettype' name='sheettype' value=''/> 
		<input type='hidden' id='student' name='student' value=''/>
		<input type='hidden' id='submittimestamp' name='submittimestamp' value=''/>
		<input type='hidden' id='approvetimestamp' name='approvetimestamp' value=''/>
		<input type='hidden' id='admintimestamp' name='admintimestamp' value=''/>
		<input type='hidden' id='approver' name='approver' value=''/>
		<input type='hidden' id='admin' name='admin' value=''/>
		<input type='hidden' id='sheetproxy' name='sheetproxy' value=''/> </form>
		<h2 style='margin-top: 0px; padding-top: 0px; font-size: 1.2em' id='heading'> </h2>
		
		
		<select name="concentration" >
			<option value="BioEE">Bioelectronics and Bioimaging</option>
		   	<option value="Circuits">Circuits and Devices</option>
			<option value="Hardware">Computer Hardware</option>
			<option value="Software">Computer Software</option>
		  	<option value="Controls">Controls</option>
		 	<option value="Waves">Fields and Waves</option> 
		   	<option value="Signal">Signal Processing</option> 
		   	<option value="Devices">Solid State and Photonic Devices</option>
		</select>
			
		
		<div>
		<fieldset><table>
		<tr><td style='width: 200px'>Name: <%= student.getStudentname() %><span id='student_name'></span></a></td>
		    <td style='width: 200px'>Advisor: <%= student.getAdvisorname() %></span></a></td>
		    <td style='padding-right: 30px'><div>Proposed date for degree conferral:</div></td><td>Date: <span id='proposed_date'></span></td>
		</tr>
		<tr><td valign='bottom'>Student ID #:<input type='text' name='person.studentid' value='' size='9' maxlength='9' 
		                    onchange='showchange(this)' id='studentid' onkeypress='if (event.keyCode == 13){return false;} return CheckWholeNumber(event,this.value)' /> </td>
		    <td valign='bottom' style='padding-right: 20px'>Email: <input type='text' name='email' value='' size='20' 
		                    maxlength='50' id='student_email' onchange='showchange(this)' onkeypress='if (event.keyCode == 13){return false;}'/></td>
		<td style='padding-right: 20px' valign='bottom'><select name='person.proposedgradquarter' onchange='showchange(this)' id='grad_quarter'>
		<option value='&quot;&quot;'></option>
		<option value='spring'>Spring</option>
		<option value='summer'>Summer</option>
		<option value='autumn'>Autumn</option>
		<option value='winter'>Winter</option>
		</select>
		<select name='person.proposedgradyear' onchange='showchange(this)' id='grad_year'>
		<option value='&quot;&quot;'></option>
		<option value='2011'>2011</option>
		<option value='2012'>2012</option>
		<option value='2013'>2013</option>
		<option value='2014'>2014</option>
		<option value='2015'>2015</option>
		<option value='2016'>2016</option>
		<option value='2017'>2017</option>
		<option value='2018'>2018</option>
		<option value='2019'>2019</option>
		<option value='2020'>2020</option>
		</select></td>
		</tr>
		</table></fieldset>			
		
		
		<fieldset class='noprint'>
		<legend class='smallcaps'>General instructions</legend>
		Before the end of your sophomore year, you should complete the following steps.  Detailed instructions are included in the <b>Undergraduate Engineering Handbook</b> 
		available<a href='http://www.stanford.edu/group/ughb/2011-12/UGHB%202011_12_WikiwBookmarks4.pdf' target='_blank'>here)</a>:
			<ul>
				<li>Complete this program sheet by filling in the number, name and units of each course you intend to use for your degree.</li>
				<li>Create a course schedule showing the year and quarter in which you intend to take each course in your program sheet.</li>
				<li>Meet with your advisor and secure the necessary signatures on the program sheet.</li>
			</ul>
		</fieldset>
						
						
		<fieldset onkeyup='$("math_total").value=eval(Math.min(10,totalUnits("mathTable"))); sheetTotal()'>
			<legend class='smallcaps'><b>MATHEMATICS REQUIREMENT</b></legend>
			<table id='mathTable' width="750" border="0" cellspacing="0">
				<tr>
			    	<th align="left">Course ID</th>
			    	<th align="left">Course Name</th>
			    	<th align="left">Grade</th>
			    	<th align="left">Units</th>
			  	</tr>
			  	<tr>
			   		<td><input type="text" name="courseID" size="10"></td>
			    	<td><input type="text" name="courseID" size="80"></td>
			    	<td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    	<td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  	</tr>
			  	<tr>
			    	<td><input type="text" name="courseID" size="10"></td>
			    	<td><input type="text" name="courseID" size="80"></td>
			   	 	<td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    	<td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  	</tr>
			  	<tr>
			    	<td></td>
			    	<td></td>
			  	</tr>
			</table>
			<span class='total'><b>TOTAL MATHEMATICS REQUIREMENT UNITS:</b>
			<input type='text' name='total_math_units' value='0' size='2' id='math_total' onchange='showchange(this)' readonly='readonly' onkeypress='' style='font-weight: bold; font-size: 1em'/><br/>
			</span>
		</fieldset>
		
		<fieldset onkeyup='$("science_total").value=eval(Math.min(10,totalUnits("scienceTable"))); sheetTotal()'>
			<legend class='smallcaps'><b>SCIENCE REQUIREMENT</b></legend>
				
			<table id='scienceTable' width="750" border="0" cellspacing="0">
			  <tr>
			    <th align="left">Course ID</th>
			    <th align="left">Course Name</th>
			    <th align="left">Grade</th>
			    <th align="left">Units</th>
			  </tr>
			  <tr>
			    <td><input type="text" name="courseID" size="10"></td>
			    <td><input type="text" name="courseID" size="80"></td>
			    <td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    <td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  </tr>
			  <tr>
			    <td><input type="text" name="courseID" size="10"></td>
			    <td><input type="text" name="courseID" size="80"></td>
			    <td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    <td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  </tr>
			  <tr>
			    <td></td>
			    <td></td>
			  </tr>
			</table>
			<span class='total'><b>TOTAL SCIENCE REQUIREMENT UNITS:</b>
				<input type='text' name='total_science_units' value='0' size='2' id='science_total' onchange='showchange(this)' readonly='readonly' onkeypress='' style='font-weight: bold; font-size: 1em'/><br/>
			</span>
		</fieldset>
		
		
		<fieldset>
			<legend class='smallcaps'><b>TECHNOLOGY IN SOCIETY REQUIREMENT</b></legend>
			<span id='significantDesc' >One course is required.</span><br/>
		
			<table id='tisTable' width="750" border="0" cellspacing="0">
			  <tr>
			    <th align="left">Course ID</th>
			    <th align="left">Course Name</th>
			    <th align="left">Grade</th>
			    <th align="left">Units</th>
			  </tr>
			  <tr>
			    <td><input type="text" name="courseID" size="10"></td>
			    <td><input type="text" name="courseID" size="80"></td>
			    <td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    <td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  </tr>
			  <tr>
			    <td></td>
			    <td></td>
			  </tr>
			</table>
			<div class='noprint'>Courses that may be used to satisfy the TIS requirement can be found in the Engineering handbook.</div>
		</fieldset>
		
		
		<fieldset>
			<legend class='smallcaps'><b>ENGINEERING FUNDAMENTALS</b></legend>
			<table id='fundamentalsTable' width="750" border="0" cellspacing="0">
			  <tr>
			    <th align="left">Course ID</th>
			    <th align="left">Course Name</th>
			    <th align="left">Grade</th>
			    <th align="left">Units</th>
			  </tr>
			  <tr>
			    <td><input type="text" name="courseID" size="10"></td>
			    <td><input type="text" name="courseID" size="80"></td>
			    <td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    <td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  </tr>
			  <tr>
			    <td><input type="text" name="courseID" size="10"></td>
			    <td><input type="text" name="courseID" size="80"></td>
			    <td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    <td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  </tr>
			  <tr>
			    <td></td>
			    <td></td>
			  </tr>
			</table>
			<span class='total'><b>TOTAL ENGINEERING FUNDAMENTAL UNITS:</b>
				<input type='text' name='total_science_units' value='0' size='2' id='science_total' onchange='showchange(this)' readonly='readonly' onkeypress='' style='font-weight: bold; font-size: 1em'/><br/>
			</span>					
		</fieldset>
		
		
		<fieldset>
			<legend class='smallcaps'><b>ENGINEERING DEPTH</b></legend>
		
			<table id='depthTable' width="750" border="0" cellspacing="0">
			  <tr>
			    <th align="left">Course ID</th>
			    <th align="left">Course Name</th>
			    <th align="left">Grade</th>
			    <th align="left">Units</th>
			  </tr>
			  <tr>
			    <td><input type="text" name="courseID" size="10"></td>
			    <td><input type="text" name="courseID" size="80"></td>
			    <td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    <td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  </tr>
			  <tr>
			    <td><input type="text" name="courseID" size="10"></td>
			    <td><input type="text" name="courseID" size="80"></td>
			    <td><input type="text" name="Grade" size="4" maxlength="2"></td>
			    <td><input type="text" name="Units" size="4" maxlength="1"><br></td>
			  </tr>
			  <tr>
			    <td></td>
			    <td></td>
			  </tr>
			</table>
			<span class='total'><b>TOTAL ENGINEERING DEPTH UNITS:</b>
				<input type='text' name='total_science_units' value='0' size='2' id='science_total' onchange='showchange(this)' readonly='readonly' onkeypress='' style='font-weight: bold; font-size: 1em'/><br/>
			</span>					
		</fieldset>
		
		
		<fieldset>		
			<span class='total'><b>TOTAL UNITS APPLIED TO BSEE:</b>
				<input type='text' name='total_bsee_units' value='0' size='2' id='science_total' onchange='showchange(this)' readonly='readonly' onkeypress='' style='font-weight: bold; font-size: 1em'/><br/>
			</span>				
		</fieldset>
		
		
		<fieldset>
			<legend class='smallcaps'><b>ACTIONS</b></legend>
			<button type="button">Save Changes</button>
			<button type="button">Save and Continue Editing</button>
			<button type="button">Save and Submit for Approval</button>				
		</fieldset>
		
		
		</div>
	</body>
	</html>