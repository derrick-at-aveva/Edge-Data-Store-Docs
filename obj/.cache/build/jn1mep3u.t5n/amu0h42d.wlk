<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Troubleshoot Edge Data Store </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Troubleshoot Edge Data Store ">
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
            <article class="content wrap" id="_content" data-uid="troubleShooting1-0">
<h1 id="troubleshoot-edge-data-store" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="5" sourceendlinenumber="5">Troubleshoot Edge Data Store</h1>

<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="7" sourceendlinenumber="7">Edge Data Store includes both local and remote means of diagnosing issues encountered while using or developing against EDS.</p>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="9" sourceendlinenumber="9">Edge Data Store supports a diagnostics namespace that stores streams containing diagnostic information from Edge Data Store itself. Egress this data to either a PI Web Server or OSIsoft Cloud Services to monitor the state of a system remotely. For details about egressing diagnostic data, see <a class="xref" href="../Diagnostics/Diagnostics_1-0.html" data-raw-source="[Diagnostics configuration](xref:EdgeDataStoreDiagnostics1-0)" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="9" sourceendlinenumber="9">Diagnostics configuration</a>.</p>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="11" sourceendlinenumber="11">In addition to diagnostics data, all components in Edge Data Store support OMF health messages. Configure health messages to send health data to either PI Web Server or OSIsoft Cloud Service endpoints for remote monitoring of devices. For more information, see <a class="xref" href="../Configuration/System%20health%20endpoints%20configuration_1-0.html" data-raw-source="[Health endpoints configuration](xref:HealthEndpointsConfiguration1-0)" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="11" sourceendlinenumber="11">Health endpoints configuration</a>.</p>
<h2 id="omf-ingress" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="13">OMF ingress</h2>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="15" sourceendlinenumber="15">Complete the following steps when a custom application fails to write stream data to EDS:</p>
<ol sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="17" sourceendlinenumber="21">
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="17" sourceendlinenumber="19"><p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="17" sourceendlinenumber="17">Verify the custom application is sending OMF messages in the correct order: 1) OMF type, 2) OMF container, 3) OMF data.</p>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="19" sourceendlinenumber="19"><strong>Note:</strong> OMF messages must be sent in the correct order to be ingressed into Edge Data Store.</p>
</li>
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="21" sourceendlinenumber="21"><p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="21" sourceendlinenumber="21">Refer to logging of warnings, errors, and messages for help with diagnosing these issues.</p>
</li>
</ol>
<h3 id="omf-ingress-logging" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="23" sourceendlinenumber="23">OMF ingress logging</h3>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="25" sourceendlinenumber="25">Ingress logging messages provide a record of ingress events. Complete the following steps to capture the most information for troubleshooting:</p>
<ol sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="28">
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="27">Refer to <a class="xref" href="../Logging/SystemLogging_1-0.html" data-raw-source="[System-level logging configuration](xref:systemloggingConfiguration1-0)" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="27">System-level logging configuration</a> to set logging parameters.</li>
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="28" sourceendlinenumber="28">For maximum message logging information, set the log level to <strong>Trace</strong>.</li>
</ol>
<h3 id="omf-ingress-message-debugging" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="30" sourceendlinenumber="30">OMF ingress message debugging</h3>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="32" sourceendlinenumber="32">Use debugging information to troubleshoot problems between an OMF application and Edge Data Store. Complete the following steps to enable debugging:</p>
<ol sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="34" sourceendlinenumber="37">
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="34" sourceendlinenumber="34">Refer to <a class="xref" href="../Configuration/Storage%20runtime%20config_1-0.html" data-raw-source="[Storage runtime configuration](xref:storageruntime1-0)" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="34" sourceendlinenumber="34">Storage runtime configuration</a> to enable debugging.</li>
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="35" sourceendlinenumber="37"><p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="35" sourceendlinenumber="35">Set an appropriate time value for the <em>IngressDebugExpiration</em> property. </p>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="37" sourceendlinenumber="37"><strong>Note:</strong> You can also disable debugging by setting the expiration value to <em>null</em>.</p>
</li>
</ol>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="39" sourceendlinenumber="39">Examples of valid strings representing date and time:</p>
<pre sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="41" sourceendlinenumber="42"><code>UTC: “yyyy-mm-ddThh:mm:ssZ”
Local: “mm-dd-yyyy hh:mm:ss”
</code></pre><h2 id="periodic-egress" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="44" sourceendlinenumber="44">Periodic egress</h2>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="46" sourceendlinenumber="46">EDS periodic egress extracts data from SDS streams and sends the appropriate sequences of type, container, and data OMF messages on startup.  </p>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="48" sourceendlinenumber="48"><strong>Note:</strong> If unexpected data appears in an OCS or PI System, check if multiple devices are writing to the same SDS stream. </p>
<ol sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="50" sourceendlinenumber="54">
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="50" sourceendlinenumber="50"><p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="50" sourceendlinenumber="50">Check all egress configuration files in Edge Data Store to verify whether any endpoints are duplicated. A duplicate endpoint means that more than one device is egressing data to it, resulting in unexpected data.</p>
</li>
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="52" sourceendlinenumber="54"><p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="52" sourceendlinenumber="52">Assign stream prefixes in the periodic egress endpoint configuration to ensure that output data streams are logically separated in the systems of record. For instructions, see <a class="xref" href="../Egress/Configure%20data%20egress_1-0.html" data-raw-source="[Configure data egress](xref:configureEgress1-0)" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="52" sourceendlinenumber="52">Configure data egress</a>.</p>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="54" sourceendlinenumber="54"><strong>Note:</strong> Type prefixes may be helpful if you have changed a stream type definition on EDS. OMF types on both OCS and the PI System are immutable once created. If the type of the data stream changes, it is best to either delete the old type definition (if nothing is still using it) or add a type prefix to create a new unique type that will be used by new streams egressing from EDS to the systems of record.</p>
</li>
</ol>
<h3 id="periodic-egress-logging" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="56" sourceendlinenumber="56">Periodic egress logging</h3>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="58" sourceendlinenumber="58">Egress logging messages provide a record of egress events. Complete the following to capture maximum information for troubleshooting:</p>
<ol sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="60" sourceendlinenumber="61">
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="60" sourceendlinenumber="60">Refer to <a class="xref" href="../Logging/SystemLogging_1-0.html" data-raw-source="[System-level logging configuration](xref:systemloggingConfiguration1-0)" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="60" sourceendlinenumber="60">System-level logging configuration</a> to set logging parameters.</li>
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="61" sourceendlinenumber="61">For maximum message logging information, set the log level to <strong>Trace</strong>.</li>
</ol>
<h3 id="periodic-egress-debugging" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="63" sourceendlinenumber="63">Periodic egress debugging</h3>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="65" sourceendlinenumber="65">Use debugging information to troubleshoot problems between Edge Data Store and the egress destination. Complete the following steps to enable debugging:</p>
<ol sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="67" sourceendlinenumber="70">
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="67" sourceendlinenumber="67">Refer to <a class="xref" href="../Egress/Egress_1-0.html" data-raw-source="[Data egress configuration](xref:egress1-0)" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="67" sourceendlinenumber="67">Data egress configuration</a> to enable debugging.</li>
<li sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="68" sourceendlinenumber="70"><p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="68" sourceendlinenumber="68">Set an appropriate time value for the <em>DebugExpiration</em> property. </p>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="70" sourceendlinenumber="70"><strong>Note:</strong> Disable debugging by setting the expiration value to <em>null</em>.</p>
</li>
</ol>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="72" sourceendlinenumber="72">Examples of valid strings representing date and time:</p>
<pre sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="74" sourceendlinenumber="75"><code>UTC: “yyyy-mm-ddThh:mm:ssZ”
Local: “mm-dd-yyyy hh:mm:ss”
</code></pre><h3 id="debugging-folderfile-structure" sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="77" sourceendlinenumber="77">Debugging folder/file structure</h3>
<p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="79" sourceendlinenumber="79">Because the overall number and content length of each request/response pair captured by debugging can be quite large, debugging information is stored to disk in a separate location from other log messages. Debug folders and files are created under the Edge Data Store data folder as follows: </p>
<pre sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="81" sourceendlinenumber="83"><code>Windows: %programdata%\OSIsoft\EdgeDataStore\Storage\egressdump\{tenantId}\{namespaceId}\{egressId}\{omfType}\{Ticks}-{Guid}-{Req/Res}.txt

Linux: /usr/share/OSIsoft/EdgeDataStore/Storage/egressdump/{tenantId}/{namespaceId}/{egressId}/{omfType}/{Ticks}-{Guid}-{Req/Res}.txt
</code></pre><p sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="85" sourceendlinenumber="85">The OMF specific elements of the file structure are defined in the following table:</p>
<table sourcefile="V1/Troubleshooting/Troubleshooting_1-0.md" sourcestartlinenumber="87" sourceendlinenumber="92">
<thead>
<tr>
<th>Element</th>
<th>Represents</th>
</tr>
</thead>
<tbody>
<tr>
<td><em>omfType</em></td>
<td>The OMF message type: Type, Container, or Data.</td>
</tr>
<tr>
<td><em>Ticks</em></td>
<td>The time in milliseconds (tick count) for UTC DateTime when determined message would be written to disk.</td>
</tr>
<tr>
<td><em>Guid</em></td>
<td>The unique GUID for each request/response pair.</td>
</tr>
<tr>
<td><em>Req/Res</em></td>
<td>Whether the message was HTTP request or response.</td>
</tr>
</tbody>
</table>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/Edge-Data-Store-Docs/blob/master/V1/Troubleshooting/Troubleshooting_1-0.md/#L1" class="contribution-link">Improve this Doc</a>
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
            
            <span>© 2020 - OSIsoft, LLC.</span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../styles/main.js"></script>
  </body>
</html>