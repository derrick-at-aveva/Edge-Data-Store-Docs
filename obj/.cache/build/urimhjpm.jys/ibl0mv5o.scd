<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>OCS egress quick start </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="OCS egress quick start ">
    <meta name="generator" content="docfx 2.43.2.0">
    
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="stylesheet" href="../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../styles/docfx.css">
    <link rel="stylesheet" href="../../styles/main.css">
    <meta property="docfx:navrel" content="../../toc.html">
    <meta property="docfx:tocrel" content="../toc.html">
    
    <meta property="docfx:rel" content="../../">
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../../V1/index.html" width="46">
                <img id="logo" src="../../V1/images/atlas_icon.png" height="46" width="46" alt="OSIsoft Edge Data Store"> 
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div class="container body-content">
        
        <div id="search-results">
          <div class="search-list"></div>
          <div class="sr-items">
            <p><i class="glyphicon glyphicon-refresh index-loading"></i></p>
          </div>
          <ul id="pagination"></ul>
        </div>
      </div>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="ocsEgressQuickStart1-0">
<h1 id="ocs-egress-quick-start" sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="5" sourceendlinenumber="5">OCS egress quick start</h1>

<p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="7" sourceendlinenumber="7">Data egress provides a mechanism to transfer data to OSIsoft Cloud Services using OMF messages. To get started sending data stored in Edge Data Store to OCS, create an OMF connection in OCS and configure an egress endpoint with the connection information for OCS.</p>
<h2 id="create-an-omf-connection-in-ocs" sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="9" sourceendlinenumber="9">Create an OMF connection in OCS</h2>
<p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="11" sourceendlinenumber="11">Complete the following steps to create an OMF connection in OCS:</p>
<ol sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="21">
<li sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="15"><p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="13">In OCS, create a <strong>Client</strong>.</p>
<p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="15" sourceendlinenumber="15">The <em>Client Id</em> and <em>Client Secret</em> are used for the corresponding properties in the egress configuration.</p>
</li>
<li sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="17" sourceendlinenumber="21"><p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="17" sourceendlinenumber="17">In OCS, create an <strong>OMF</strong> type <strong>Connection</strong>.</p>
<p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="19" sourceendlinenumber="19">The connection should link the client to an existing namespace where the data will be stored. The <strong>OMF Endpoint</strong> URL for the connection is used as the value for the <em>Endpoint</em> property in the egress configuration.</p>
<p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="21" sourceendlinenumber="21">For complete steps, as well as best practices and recommendations, see the <a href="https://ocs-docs.osisoft.com/Content_Portal/Documentation/OSIsoft_Cloud_Services.html" data-raw-source="[OSIsoft Cloud Services documentation](https://ocs-docs.osisoft.com/Content_Portal/Documentation/OSIsoft_Cloud_Services.html)" sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="21" sourceendlinenumber="21">OSIsoft Cloud Services documentation</a>.</p>
</li>
</ol>
<h2 id="create-a-periodic-egress-configuration" sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="23" sourceendlinenumber="23">Create a periodic egress configuration</h2>
<p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="25" sourceendlinenumber="25">Complete the following steps to configure periodic egress to OCS:</p>
<ol sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="64">
<li sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="50"><p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="27">Create a JSON file containing one or more egress endpoints, by copying the following example into a text editor.</p>
<pre sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="29" sourceendlinenumber="50"><code class="lang-json">[{
    &quot;Id&quot;: &quot;OCS&quot;,
    &quot;ExecutionPeriod&quot;: &quot;00:00:50&quot;,
    &quot;Name&quot;: null,
    &quot;NamespaceId&quot;: &quot;default&quot;,
    &quot;Description&quot;: null,
    &quot;Enabled&quot;: true,
    &quot;Backfill&quot;: false,
    &quot;EgressFilter&quot;: &quot;&quot;,
    &quot;StreamPrefix&quot;: &quot;ChangeMe&quot;,
    &quot;TypePrefix&quot;: &quot;ChangeMe&quot;,
    &quot;Endpoint&quot;: &quot;https://&lt;your OCS OMF endpoint&gt;&quot;,
    &quot;ClientId&quot;: &quot;&lt;your OCS ClientId&gt;&quot;,
    &quot;ClientSecret&quot;: &quot;&lt;your OCS ClientSecret&gt;&quot;,
    &quot;UserName&quot;: null,
    &quot;Password&quot;: null,
    &quot;DebugExpiration&quot;: null,
    &quot;ValidateEndpointCertificate&quot;: true,
    &quot;TokenEndpoint&quot;: null
}]
</code></pre></li>
<li sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="52" sourceendlinenumber="52"><p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="52" sourceendlinenumber="52">Modify the <strong>Endpoint</strong> parameter to be the URL of the OCS OMF endpoint.</p>
</li>
<li sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="53" sourceendlinenumber="55"><p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="53" sourceendlinenumber="53">Modify the <strong>ClientId</strong> and <strong>ClientSecret</strong> parameters with the authentication information to connect to the OCS OMF endpoint.</p>
<p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="55" sourceendlinenumber="55"> <strong>Note:</strong> If uniqueness is required on the destination system, use the <strong>StreamPrefix</strong> and <strong>TypePrefix</strong> parameters. If a StreamPrefix is specified, it is used to create a unique stream ID on OCS. This configuration is set up to send all stream data to OCS. To only send specific streams, edit the <strong>EgressFilter</strong> parameter. For examples of more advanced scenarios, see <a class="xref" href="../Egress/Egress_1-0.html" data-raw-source="[Data egress configuration](xref:egress1-0)" sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="55" sourceendlinenumber="55">Data egress configuration</a>.</p>
</li>
<li sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="57" sourceendlinenumber="57"><p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="57" sourceendlinenumber="57">Save the JSON file with the name <em>PeriodicEgressEndpoints.json</em> to any directory on the device where EDS is installed.</p>
</li>
<li sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="58" sourceendlinenumber="64"><p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="58" sourceendlinenumber="58">To configure the Edge Storage component to send data to OCS, run the following curl script from the directory where the JSON file is located.</p>
<pre sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="60" sourceendlinenumber="62"><code class="lang-bash">curl -d &quot;@PeriodicEgressEndpoints.json&quot; -H &quot;Content-Type: application/json&quot; -X PUT http://localhost:5590/api/v1/configuration/storage/PeriodicEgressEndpoints/
</code></pre><p sourcefile="V1/Overview/OCSEgressQuickStart_1-0.md" sourcestartlinenumber="64" sourceendlinenumber="64">When this command completes successfully, data egress to OCS begins.</p>
</li>
</ol>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/Edge-Data-Store-Docs/blob/master/V1/Overview/OCSEgressQuickStart_1-0.md/#L1" class="contribution-link">Improve this Doc</a>
                  </li>
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
              <!-- <p><a class="back-to-top" href="#top">Back to top</a><p> -->
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
          <div class="container">
            <span class="pull-right">
              <a href="#top">Back to top</a>
            </span>
            
            <span><a href="https://www.osisoft.com/copyright/">© 2019 - 2020 OSIsoft, LLC. All rights reserved.</a></span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../styles/main.js"></script>
  </body>
</html>