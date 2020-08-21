<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Storage logging configuration properties </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Storage logging configuration properties ">
    <meta name="generator" content="docfx 2.43.2.0">
    
    <link rel="shortcut icon" href="../../../favicon.ico">
    <link rel="stylesheet" href="../../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../../styles/docfx.css">
    <link rel="stylesheet" href="../../../styles/main.css">
    <meta property="docfx:navrel" content="../../../toc.html">
    <meta property="docfx:tocrel" content="../../toc.html">
    
    <meta property="docfx:rel" content="../../../">
    
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
              <a class="navbar-brand" href="../../../V1/index.html" width="46">
                <img id="logo" src="../../../V1/images/atlas_icon.png" height="46" width="46" alt="OSIsoft Edge Data Store"> 
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
            <article class="content wrap" id="_content" data-uid="Storage_Logging_schema">
<h1 id="storage-logging-configuration-properties" sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="5" sourceendlinenumber="5">Storage logging configuration properties</h1>

<table sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="7" sourceendlinenumber="11">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Required</th>
<th>Nullable</th>
<th>Defined by</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="#logfilecountlimit" data-raw-source="[LogFileCountLimit](#logfilecountlimit)" sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="9" sourceendlinenumber="9">LogFileCountLimit</a></td>
<td><code>integer</code></td>
<td>Optional</td>
<td>Yes</td>
<td>EdgeLoggerConfiguration (this schema)</td>
</tr>
<tr>
<td><a href="#logfilesizelimitbytes" data-raw-source="[LogFileSizeLimitBytes](#logfilesizelimitbytes)" sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="10" sourceendlinenumber="10">LogFileSizeLimitBytes</a></td>
<td><code>integer</code></td>
<td>Optional</td>
<td>Yes</td>
<td>EdgeLoggerConfiguration (this schema)</td>
</tr>
<tr>
<td><a href="#loglevel" data-raw-source="[LogLevel](#loglevel)" sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="11" sourceendlinenumber="11">LogLevel</a></td>
<td>reference</td>
<td>Optional</td>
<td>No</td>
<td>EdgeLoggerConfiguration (this schema)</td>
</tr>
</tbody>
</table>
<p sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="14" sourceendlinenumber="14"><strong>Note:</strong> All of the following <em>requirements</em> need to be fulfilled.</p>
<h2 id="requirement-1" sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="16" sourceendlinenumber="16">Requirement 1</h2>
<ul sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="18" sourceendlinenumber="18">
<li sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="18" sourceendlinenumber="18"><a href="" data-raw-source="[]()" sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="18" sourceendlinenumber="18"></a> – <code>#/definitions/EdgeConfigurationBase</code></li>
</ul>
<h2 id="requirement-2" sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="20" sourceendlinenumber="20">Requirement 2</h2>
<p sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="22" sourceendlinenumber="22"><code>object</code> with following properties:</p>
<table sourcefile="V1/Configuration/Schemas/Storage_Logging_schema.md" sourcestartlinenumber="24" sourceendlinenumber="28">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Required</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>LogFileCountLimit</code></td>
<td>integer</td>
<td>Optional</td>
</tr>
<tr>
<td><code>LogFileSizeLimitBytes</code></td>
<td>integer</td>
<td>Optional</td>
</tr>
<tr>
<td><code>LogLevel</code></td>
<td></td>
<td>Optional</td>
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
                    <a href="https://github.com/osisoft/Edge-Data-Store-Docs/blob/master/V1/Configuration/Schemas/Storage_Logging_schema.md/#L1" class="contribution-link">Improve this Doc</a>
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
    
    <script type="text/javascript" src="../../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../../styles/main.js"></script>
  </body>
</html>