<!DOCTYPE html>
<html lang="en">
  	<head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<meta name="description" content="">
    	<meta name="author" content="">

		<link href="${pageContext.request.contextPath}/view/css/bootstrap.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/view/css/fhir.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/view/css/custom.css" rel="stylesheet" type="text/css" />
		<link href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
		<!-- <link href="${pageContext.request.contextPath}/view/css/site.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/view/css/style.css" rel="stylesheet" type="text/css" /> -->

    	<title>FHIR Server</title>
    	<script src="${pageContext.request.contextPath}/view/js/jquery-1.11.1.js"></script>
	<style>
		ul, ol {
		    margin-left: 0;
		    margin-top: 0;
		}
	</style>
	</head>
	<body>
		<header> 
			<div class="navbar navbar-inverse navbar-static-top"> <div class="navbar-inner external"> <div class="container"> <div class="nav"> <li><a href="http://www.healthit.gov/" tabindex="1">HealthIT.gov</a></li> <li> <ul class="social" style="padding:0px;"> <div id="fb-root"></div> <script>/*<![CDATA[*/(function(e,a,f){var c,b=e.getElementsByTagName(a)[0];if(e.getElementById(f)){return}c=e.createElement(a);c.id=f;c.src="//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=408132609248724&version=v2.0";b.parentNode.insertBefore(c,b)}(document,"script","facebook-jssdk"));/*]]>*/</script> <li><div class="fb-like" data-href="http://sitenv.org" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div></li> <li class="rss"> <a href="http://feeds.feedburner.com/healthitgov" title="Subscribe/RSS" tabindex="1"><img src="https://sitenv.org/site-portal-responsivebootstrap-theme/images/rss.png" alt="Subscribe to ONC RSS feed"></a> </li> <li class="twitter"> <a class="fix-transparency" title="Follow ONC on Twitter" href="http://twitter.com/ONC_HealthIT/" tabindex="1"><img src="https://sitenv.org/site-portal-responsivebootstrap-theme/images/twitter.png" alt="Follow ONC on Twitter"></a> </li> <li class="youtube"> <a class="fix-transparency" title="Follow Project ONC on Youtube" href="http://www.youtube.com/user/HHSONC" tabindex="1"><img src="https://sitenv.org/site-portal-responsivebootstrap-theme/images/youtube.png" alt="Subscribe to ONC on YouTube"></a> </li> <li class="linkedin"> <a class="fix-transparency" title="Follow ONC on LinkedIn" href="http://www.linkedin.com/title/office+coordinator/in-us-97-Washington-D.C.-Metro-Area/" tabindex="1"><img src="https://sitenv.org/site-portal-responsivebootstrap-theme/images/linkedin.png" alt="Follow ONC on Linkedin"></a> </li> <li class="googleplus"> <a class="fix-transparency" title="Find ONC on Google Plus" href="https://plus.google.com/115897569896631074599/posts" tabindex="1"><img src="https://sitenv.org/site-portal-responsivebootstrap-theme/images/gplus.png" alt="Follow ONC on Google Plus"></a> </li> </ul> </li> </div> </div> </div> </div> 
			<div class="jumbotron"> 
				<div class="container"></div> 
			</div> 
		</header>
		<div class="top-navbar navbar-default">
		 	<div class="navbar" role="navigation"> 
		 		<div class="navbar-container container"> 
		 			<div class="navbar-header"> 
		 				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" tabindex="1"> 
		 					<span class="sr-only">Toggle navigation</span> 
		 					<span class="icon-bar"></span> 
		 					<span class="icon-bar"></span> 
		 					<span class="icon-bar"></span> 
		 				</button> 
		 			</div> 
		 			<nav class="sort-pages modify-pages navbar-collapse collapse" id="navigation"> 
		 				<ul class="nav navbar-nav"> 
		 					<li class="dropdown-parent"> 
		 						<a href="https://sitenv.org/web/site/home" tabindex="1">
		 							<span> Home</span>
		 						</a> 
		 						<div class="firefox_fix"> 
		 							<ul class="dropdown-menu" style="display: none;"> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/c-cda" tabindex="1">Consolidated CDA Sandbox</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/transport" tabindex="1">Direct Transport Sandbox</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/provider-directory" tabindex="1">Provider Directory Sandbox</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/qrda" tabindex="1">Quality Reporting Standard Sandbox</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/cqm-certification" tabindex="1">Clinical Quality Measure Sandbox</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/public-health-reporting-sandbox" tabindex="1">Public Health Reporting Sandbox</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/laboratory-standards-sandbox" tabindex="1">Laboratory Standards Sandbox</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/electronic-prescribing-sandbox" tabindex="1">Electronic Prescribing Sandbox</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/soap-transport-sandbox" tabindex="1">SOAP Transport Sandbox</a> 
		 								</li> 
		 							</ul> 
		 						</div> 
		 					</li> 
		 					<li class="dropdown-parent"> 
		 						<a href="https://sitenv.org/web/site/learn" tabindex="1">
		 							<span> Learn</span>
		 						</a> 
		 						<div class="firefox_fix"> 
		 							<ul class="dropdown-menu"> 
		 								<li> 
		 									<a href="http://www.hl7.org/permalink/?HelpDesk" target="_blank" tabindex="1">HL7 C-CDA Help Desk</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=258" target="_blank" tabindex="1">C-CDA Standard</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://wiki.directproject.org/" target="_blank" tabindex="1">Direct Project Wiki</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://modularspecs.siframework.org/Implementation+Guidance+Artifacts" target="_blank" tabindex="1">SOAP Resources</a> 
		 										<span class="external-page">
		 											<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 												<span class="hiddenText">Web Site Disclaimers</span>
		 											</a>
		 										</span> 
		 									</li> 
		 								<li> 
		 									<a href="http://wiki.ihe.net/index.php?title=Healthcare_Provider_Directory" target="_blank" tabindex="1">IHE Healthcare Provider Directory Wiki</a> 
		 										<span class="external-page">
		 											<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 												<span class="hiddenText">Web Site Disclaimers</span>
		 											</a>
		 										</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://github.com/siteadmin/pdti" target="_blank" tabindex="1">Provider Directory Test Implementation (PDTI) Documentation</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_HPD.pdf" target="_blank" tabindex="1">IHE IT Infrastructure Technical Framework Supplement</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=35" target="_blank" tabindex="1">QRDA Category I Standard</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=286" target="_blank" tabindex="1">QRDA Category III Standard</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://projectcypress.org/" target="_blank" tabindex="1">Cypress Knowledge Base</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://www.hl7.org/implement/standards/hhsifr.cfm" target="_blank" tabindex="1">HL7 Standards Referenced in US Regulations</a> 
		 										<span class="external-page">
		 											<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 												<span class="hiddenText">Web Site Disclaimers</span>
		 											</a>
		 										</span> 
		 								</li> 
		 							</ul> 
		 						</div> 
		 					</li> 
		 					<li class="dropdown-parent"> 
		 						<a href="https://sitenv.org/web/site/collaborate" tabindex="1">
		 							<span> Collaborate</span>
		 						</a> 
		 						<div class="firefox_fix"> 
		 							<ul class="dropdown-menu" style="display: none;"> 
		 								<li> 
		 									<a href="http://www.hl7.org/permalink/?HelpDesk" target="_blank" tabindex="1">HL7 C-CDA Help Desk</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://github.com/chb/sample_ccdas" target="_blank" tabindex="1">C-CDA Sample Repository</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://bit.ly/contribute-ccda" target="_blank" tabindex="1">Contribute a C-CDA Sample</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://jira.oncprojectracking.org/browse/QRDA" target="_blank" tabindex="1">QRDA Issue Tracker</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://github.com/chb/sample_qrdas" target="_blank" tabindex="1">QRDA Sample Repository</a> 
		 										<span class="external-page">
		 											<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 												<span class="hiddenText">Web Site Disclaimers</span>
		 											</a>
		 										</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://docs.google.com/forms/d/14tVqvCf0NErOcShmONgoxtKCHjKqoX2T300vaFNXKNQ/viewform" target="_blank" tabindex="1">Contribute a QRDA Sample</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://jira.oncprojectracking.org/browse/CYPRESS" target="_blank" tabindex="1">CQM Issue Tracker</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/forum/#!forum/cancer-reg-testing-tool" target="_blank" tabindex="1">Cancer Reporting Google Group</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/d/forum/hl7v2-immunization-testing" target="_blank" tabindex="1">HL7V2 Immunization Testing Google Group</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/d/forum/hl7v2-syndromic-testing" target="_blank" tabindex="1">HL7V2 Syndromic Testing Google Group</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/d/forum/hl7v2-reportable-lab-testing" target="_blank" tabindex="1">HL7V2 Reportable Lab Testing Google Group</a> 
		 										<span class="external-page">
		 											<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 												<span class="hiddenText">Web Site Disclaimers</span>
		 											</a>
		 										</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/d/forum/hl7v2-lab-testing" target="_blank" tabindex="1">HL7V2 Lab Testing Google Group</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/forum/?hl=en#!forum/hl7v2-lab-orders-interface-testing" target="_blank" tabindex="1">Laboratory Orders Interface (LOI) Google Group</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/d/forum/hl7v2-lab-testing" tabindex="1">HL7v2 Lab Test Compendium Testing (eDOS) Google Group</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/d/forum/erx-testing-tool" target="_blank" tabindex="1">Electronic Prescribing (eRX) Google Group</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/forum/?fromgroups#!forum/transport-testing-tool" target="_blank" tabindex="1">Transport Test Tool Google Group</a> 
		 										<span class="external-page">
		 											<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 												<span class="hiddenText">Web Site Disclaimers</span>
		 											</a>
		 										</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://groups.google.com/forum/?utm_source=digest&amp;utm_medium=email#!forum/edge-test-tool/topics" target="_blank" tabindex="1">Edge Test Tool Google Group</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 							</ul> 
		 						</div> 
		 					</li> 
		 					<li class="active dropdown-parent"> 
		 						<a href="https://sitenv.org/web/site/test" tabindex="1">
		 							<span> Test</span>
		 						</a> 
		 						<div class="firefox_fix"> 
		 							<ul class="dropdown-menu" style="display: none;"> 
		 								<li> 
		 									<a href="https://sitenv.org/scorecard/" target="_blank" tabindex="1">C-CDA Scorecard (Beta)</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/c-cda-validator" target="_blank" tabindex="1">C-CDA Validator</a> 
		 								</li> 
		 								<li class="active"> 
		 									<a href="https://sitenv.org/web/site/fhir-sandbox" tabindex="1">FHIR Sandbox</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/direct-certificate-discovery-tool" target="_blank" tabindex="1">Direct Certificate Discovery Tool</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/direct-certificate-discovery-tool-2015" target="_blank" tabindex="1">Direct Certificate Discovery Tool 2015</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/direct-transport-test-tool" target="_blank" tabindex="1">Direct Transport Test Tool</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/direct-smtp-edge-test-tool" target="_blank" tabindex="1">Direct SMTP Edge Test Tool</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/direct-xdr-edge-test-tool" target="_blank" tabindex="1">Direct XDR Edge Test Tool</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://sitenv.org/web/site/provider-directory-test-tool" target="_blank" tabindex="1">Provider Directory Test Tool</a> 
		 								</li> 
		 								<li> 
		 									<a href="https://validator.projectcypress.org/" target="_blank" tabindex="1">CYPRESS QRDA Validator</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://cda-cancer-testing.nist.gov/" target="_blank" tabindex="1">CDA Cancer Registry Reporting Validation Tool</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://hl7v2-iz-testing.nist.gov/mu-immunization/" target="_blank" tabindex="1">Immunization Information System (IIS) Reporting Validation Tool</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://hl7v2-ss-testing.nist.gov/mu-syndromic/" target="_blank" tabindex="1">Syndromic Surveillance Reporting Validation Tool</a> 
		 										<span class="external-page">
		 											<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 												<span class="hiddenText">Web Site Disclaimers</span>
		 											</a>
		 										</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://hl7v2-elr-testing.nist.gov/mu-elr/" target="_blank" tabindex="1">Electronic Laboratory Reporting (ELR) Validation Tool</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://hl7v2-lab-testing.nist.gov/mu-lab/" target="_blank" tabindex="1">Laboratory Results Interface (LRI) Validation Tool</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://hit-dev.nist.gov:8086/loi-r1/#/home" target="_blank" tabindex="1">Laboratory Orders Interface (LOI) Validation Tool</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://erx-testing.nist.gov/" target="_blank" tabindex="1">Electronic Prescribing (eRX) Test Tool</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://hl7v2-edos-r1-testing.nist.gov/edos-r2" target="_blank" tabindex="1">Electronic Directory of Service (eDOS) Test Tool</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="http://transport-testing.nist.gov/ttt/" target="_blank" tabindex="1">NIST Transport Test Tool (TTT)</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 								<li> 
		 									<a href="https://edge.nist.gov/ett/#/home" target="_blank" tabindex="1">NIST Edge Test Tool (ETT)</a> 
		 									<span class="external-page">
		 										<a href="http://www.hhs.gov/disclaimer.html" title="Web Site Disclaimers" class="ext-icon" target="_blank" tabindex="1">
		 											<span class="hiddenText">Web Site Disclaimers</span>
		 										</a>
		 									</span> 
		 								</li> 
		 							</ul> 
		 						</div> 
		 					</li> 
		 					<li> 
		 						<a href="https://sitenv.org/web/site/about-us" tabindex="1">
		 							<span> About Us</span>
		 						</a> 
		 					</li> 
		 				</ul> 
		 			</nav> 
		 		</div> 
		 	</div> 
		</div>
		<div class="container" style="margin-top:10px;">
			<div class="col-md-12">
					 <h1 style="font-size:43px;" align="center" >FHIR Server</h1>
			</div>
			<div class="col-md-12">
				<div class="col-md-12" align="center" style="font-size:16px;">
					<p>This is an implementation of the FHIR standard using the <a href="http://hl7.org/fhir/us/daf/2016Sep/daf-core.html" target="_blank">DAF-Core Implementation guide</a>. We expect client developers to use the server as part of their development activities to work with different data sets.   </p>
					<hr>
				</div>
			</div>
			<div class="col-lg-12">
		        	 <div class="panel panel-default"> 
		                <div style="background-image:linear-gradient(to bottom, #f5f5f5 0%, #e8e8e8 100%);background-repeat:repeat-x" class="panel-heading">
		                    <h3 style="margin:5px;font-size:20px">Instructions and Guidelines to use the FHIR Server:</h3>
		                </div>
		                <div class="panel-body">
		                	<div class="col-md-12">
		                		The FHIR Server can be used in two modes. An open mode (No OAuth token required) and a secure mode (OAuth tokens required). 
		                			<ol>
		                				<li>
		                					The server URL for open mode is : <a href="https://fhir.sitenv.org/open/fhir" target="_blank">https://fhir.sitenv.org/open/fhir</a>
		                				</li>
		                				<li>
		                					The server URL for secure mode is : <a href="https://fhir.sitenv.org/secure/fhir" target="_blank">https://fhir.sitenv.org/secure/fhir</a>
		                				</li>
		                			</ol>
		                	</div>
		                	<div class="row">
		                		<div class="col-md-6">
		                			 <div class="panel panel-default" style="min-height:300px;"> 
						                <div style="background-image:linear-gradient(to bottom, #f5f5f5 0%, #e8e8e8 100%);background-repeat:repeat-x" class="panel-heading">
						                    Using the Open FHIR Server:
						                </div>
						                <div class="panel-body">
						                	A client can use the open server by making a FHIR request using a FHIR READ or SEARCH operation.
						                	<ol style="margin-top:10px;">
						                		<li>
						                		For example a simple READ can be executed as follows:
											<ul style="list-style:outside none disc;margin-bottom:8px;">							                		
												<li>GET <a href="https://fhir.sitenv.org/open/fhir/Patient/1" target="_blank">https://fhir.sitenv.org/open/fhir/Patient/1</a></li>
											</ul>	
										</li>
										<li>
										For example a simple SEARCH can be executed as follows:
											<ul style="list-style:outside none disc;margin-bottom:8px;">							                		
												<li>GET <a href="https://fhir.sitenv.org/open/fhir/Patient/?_id=1" target="_blank">https://fhir.sitenv.org/open/fhir/Patient/?_id=1</a></li>
											</ul>	
										</li>
										<li style="margin-bottom:8px;">
											Click here for more details on <a href="http://hl7.org/fhir/search.html" target="_blank">FHIR Search</a>.
										</li>
										<li>
											For a list of Patients <a style="cursor:pointer;" onclick="openpatientlistmodal();">Click here</a>
										</li>
									</ol>
						                </div>
						            </div>
		                		</div>
		                		<div class="col-md-6">
		                			 <div class="panel panel-default" style="min-height:300px;"> 
						                <div style="background-image:linear-gradient(to bottom, #f5f5f5 0%, #e8e8e8 100%);background-repeat:repeat-x" class="panel-heading">
						                    Using the Secure FHIR Server: 
						                </div>
						                <div class="panel-body">
							                <ol>
							                	<li>
							                		The Secure FHIR server follows the implementation of Smart On FHIR specifications.	
							                	</li>
							                	<li>
							                		In order to use the FHIR Server with the appropriate tokens the following steps need to be followed
							                		<ul style="list-style:outside none disc;">
							                			<li style="margin-bottom:8px;">
							                				Create a user account in the FHIR Authorization Server: 
							                				Follow instructions <a href="view/newuser.html">here</a> for user creation.
							                			</li>
							                			<li style="margin-bottom:8px;">
							                				Login and Register a client so that you can get the Client Id and  Client Secret. 
							                				Follow instructions <a href="view/clients.html">here</a> for client registration
							                			</li>
							                			<li style="margin-bottom:8px;">
							                				Once you have a Client Id and Client Secret follow the guidelines according to the Smart On FHIR to request resources.
							                			</li>
							                		</ul>
							                	</li>
							                </ol>    
						                </div>
						            </div>
		                		</div>
		                	</div>
		                </div>
		            </div>
		        </div>
		</div>
		<footer> 
			<div role="contentinfo" class="container"> 
					<div> 
						<p>This project was funded by a contract from the <a tabindex="100" href="http://www.healthit.gov">Office of the National Coordinator for Health Information Technology (ONC)</a>
						</p> 
					</div> 
					<div class="row"> <div class="col-md-8"> <p>For any inquiries or questions, please send an email to <a tabindex="100" href="mailto:TestingServices@sitenv.org">TestingServices@sitenv.org</a></p> </div> <div class="col-md-4"> <p style="float:right;"><a tabindex="100" href="http://www.hhs.gov/Privacy.html">Privacy Policy</a> | <a tabindex="100" href="http://www.hhs.gov/Disclaimer.html">Disclaimers</a></p> </div> </div>
			</div> 
		</footer>

		<!-- Patient List Modal-->
		    <div class="modal fade" tabindex="-1" role="dialog" id="patientlist-modal">
		      <div class="modal-dialog" style="width:900px">
		        <div class="modal-content">
		          <div class="modal-header">
		            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		            <h4 class="modal-title">List of Patients</h4>
		          </div>
		          <div class="modal-body" style="overflow:auto;">
		          		<table id="example" class="display" cellspacing="0" width="100%">
					        <thead>
					            <tr>
					                <th>Patient Id</th>
					                <th>Name</th>
					                <th>Date of Birth</th>
					            </tr>
					        </thead>
					        <tbody>
					            
					        </tbody>
			    		</table>
		          	</div>
		          	<div class="modal-footer">
		            	<button type="button" class="btn btn-default" data-dismiss="modal" id="respclosebtn">Close</button>
		          	</div>
		        </div><!-- /.modal-content -->
		      </div><!-- /.modal-dialog -->
		    </div><!-- /.modal -->
			<!-- Patient List Modal-->

		<script src="${pageContext.request.contextPath}/view/js/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/view/js/hoverMenu.js"></script>
		<script src="${pageContext.request.contextPath}/view/js/url.js"></script>
		<script type="text/javascript" src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript">
			openpatientlistmodal = function (){
				loadPatients();
			    $("#patientlist-modal").modal({
			        backdrop: 'static',
			        keyboard: false
			    });
			}
			loadPatients = function(){
				$('#example').dataTable({
					"destroy": true,
	    			"bLengthChange": false,
					"bPaginate": false,
					"bFilter":false,
					"info":false,
					"ajax":geturl()+"/authorize/launchpatient",
	    			"sAjaxDataProp": "",
	     			"columns": [{
	     					"data": function (data, type, row) {
				               var userpoc = "<div onclick='patientId("+data.id+")' class='col-md-12'>"+data.id+"</div>";
				               return userpoc;
				           }
	       				},{
	       					"data": function (data, type, row) {
				               var userpoc = "<div onclick='patientId("+data.id+")' class='col-md-12'>"+data.fullName+"</div>";
				               return userpoc;
				           }
	       				},{
	       					"data": function (data, type, row) {
				               var userpoc = "<div onclick='patientId("+data.id+")' class='col-md-12'>"+data.birthDate+"</div>";
				               return userpoc;
				           }
	       				}
	       			]
	   			});
			}
		</script>
	</body>
</html>


