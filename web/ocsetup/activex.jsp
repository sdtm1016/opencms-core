<!-- ------------------------------------------------- JSP DECLARATIONS ------------------------------------------------ -->
<% /* Initialize the Bean */ %>
<jsp:useBean id="Bean" class="com.opencms.boot.CmsSetup" scope="session" />
<jsp:useBean id="Thread" class="com.opencms.boot.CmsSetupThread" scope="session"/>

<%	
	/* true if properties are initialized */
	boolean setupOk = (Bean.getProperties()!=null);
	
	/* next page to be accessed */
	String nextPage = "finished.jsp";
	
	/* stop possible running threads */
	Thread.stopLoggingThread();		
	Thread.stop();	
	
%>

<!-- ------------------------------------------------------------------------------------------------------------------- -->

<html>
<head> 
	<title>OpenCms Setup Wizard</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link rel="Stylesheet" type="text/css" href="style.css">
</head>
<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td align="center" valign="middle">
<table border="1" cellpadding="0" cellspacing="0">
<tr>
	<td><form action="<%= nextPage %>" method="POST">
		<table class="background" width="700" height="500" border="0" cellpadding="5" cellspacing="0">
			<tr>
				<td class="title" height="25">OpenCms Setup Wizard</td>
			</tr>

			<tr>
				<td height="50" align="right"><img src="opencms.gif" alt="OpenCms" border="0"></td>
			</tr>
			<% if(setupOk)	{ %>
			<tr>
				<td align="center" valign="top" height="375">	
				<textarea style="width:600px;height:300px" cols="40" rows="20" wrap>
------------------------------Attention--------------------------------
OpenCms uses ActiveX components for user editors.
The controls (there are 2, one for the WYSIWYG editor and one for the source code editor) are freely available, i.e. are shareware. 
This, however, currently restricts the WYSIWYG editor to Microsoft�s Internet Explorer (Version 4 or higher).
A thin version of Netscape Navigator is only available as source code editor. 
It would be possible to replace the ActiveX controls with Java applets. 
However, the OpenCms Team is currently not aware of an open source applet that could be plugged in. 
Should anyone know of an open source applet or have even written one that can be used as a WYSIWYG or source text editor, we would, of course, be more than happy to hear about it.
-----------------------------------------------------------------------

--------------Configuring Microsoft Internet Explorer 5.x Clients------
First step is the installation of the neccessary controls. The are two ActiveX controls needed by OpenCms: 

1. For the WYSIWYG editor, the "Dynamic HTML Edit Control" is used. This control is part of all MS IE installations since version 5.0, which means you must make sure the IE you use is version 5.0 or later. 
2. The code editor is a component developed by AY Software and it's called LeEdit OCX Control. You can download the shareware version of this control at http://www.aysoft.com/ledit.htm. This control must be installed on all clients that need access to the code editor functionality. 

The second step is configuring the ActiveX settings so that the controls work properly. 
Open IEs "Internet options." Then do the following: 

1. On the tab "Security", select "Trusted site zones" from the drop-down menu and click on "Add Sites" to add the URL (e.g. http://opencms.mycompany.com - ask your system administrator for the exact URL) of the zone's OpenCms server. Deactivate the radio button "Require server verification (https:) for all sites in this zone." 
2. On the tab "Security", select "Trusted site zones" from the drop-down menu and click on "Settings". All ActiveX control elements must be set to "Enable." A note on security: It is safe to use ActiveX controls with these settings since their use is allowed only for the "Trusted sites", and ActiveX remains disabled for all other web sites. 

This setup must be repeated for all clients / workstations that use the OpenCms workplace. Cookies must be enabled on this machines. 
-----------------------------------------------------------------------

-----------------------Configuring Netscape Navigator------------------
Ok, honestly we try our best to keep the workplace compatible with Netscape versions 4.x. We so far do not support Netscape 6.0 or other browsers that use the new Mozilla HTML rendering engine. That's a pity since Mozilla is open source as well. If anyone of you feels compelled to help boosting Netscape compatibility for 4.x or 6.0 (at last for the HTML parts of the workplace), please send an Email to contributions@opencms.com. 

Settings for Netscape 4.x: 

1. On the menu bar, click on the menu item "Edit" and select "Settings." Then do the following: 
2. On the tab "Settings" go to the section "Extended" and enable the options "Java" and "Java Script." 
3. On the tab "Settings" go to the section "Extended/Cache" and enable "Compare cache and network document: always." 

This setup must be repeated for all clients / workstations that use the OpenCms workplace. Cookies must be enabled on this machines.

-----------------------------------------------------------------------
</textarea>
<p><input type="checkbox" name="understood" value="true"><b> I have understood how to enable the ActiveX Editors</b></p>

</td>
			</tr>

			<tr>
				<td height="50" align="center">
					<table border="0">
						<tr>
							<td width="200" align="right">
								<input type="button" class="button" style="width:150px;" width="150" value="&#060;&#060; Back" onclick="history.back();">
							</td>
							<td width="200" align="left">
								<input type="submit" name="submit" class="button" style="width:150px;" width="150" value="Finish">
							</td>
							<td width="200" align="center">
								<input type="button" class="button" style="width:150px;" width="150" value="Cancel" onclick="location.href='cancel.jsp'">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<% } else	{ %>			
				<tr>
					<td align="center" valign="top" height="425">
						<p><b>ERROR</b></p>
						The setup wizard has not been started correctly!<br>
						Please click <a href="">here</a> to restart the Wizard
					</td>
				</tr>		
			<% } %>
		</form>
		</table>
	</td>
</tr>
</table>
</td></tr>
</table>
</body>
</html>