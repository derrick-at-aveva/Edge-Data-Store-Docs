<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>System components configuration </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="System components configuration ">
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
            <article class="content wrap" id="_content" data-uid="SystemComponentsConfiguration1-0">
<h1 id="system-components-configuration" sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="5" sourceendlinenumber="5">System components configuration</h1>

<p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="7" sourceendlinenumber="7">Edge Data Store components are Modbus TCP EDS adapter, OPC UA EDS adapter, and the Storage component. These components are only active if they are configured for the system to use them. EDS itself needs only a small amount of configuration - the list of components and the HTTP Port used for REST calls.</p>
<p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="9" sourceendlinenumber="9">The default <em>System_Components.json</em> file for the System component contains the following information. </p>
<pre sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="10" sourceendlinenumber="17"><code class="lang-json">[
  {
    &quot;ComponentId&quot;: &quot;Storage&quot;,
    &quot;ComponentType&quot;: &quot;EDS.Component&quot;
  }
]
</code></pre><p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="19" sourceendlinenumber="19">The Storage component is required for Edge Data Store to run and only one Storage component instance is supported. Each Modbus device needs a separate Modbus TCP EDS adapter component instance to connect to EDS, and each OPC UA device needs a separate OPC UA EDS adapter component instance to connect to EDS. Multiple Modbus TCP EDS adapter component instances and the OPC UA EDS adapter component instances are supported.  </p>
<h2 id="add-system-components" sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="21" sourceendlinenumber="21">Add system components</h2>
<ol sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="23" sourceendlinenumber="38">
<li sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="23" sourceendlinenumber="31"><p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="23" sourceendlinenumber="23">Using any text editor, create a JSON file with the ComponentId and ComponentType. The following example adds a Modbus TCP EDS adapter instance. </p>
<pre sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="25" sourceendlinenumber="30"><code class="lang-json">  {
    &quot;ComponentId&quot;: &quot;Modbus1&quot;,
    &quot;ComponentType&quot;: &quot;Modbus&quot;
  }
</code></pre><p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="31" sourceendlinenumber="31"><strong>Note:</strong> The ComponentId must be a unique value. This example uses the ComponentId Modbus1, since it is the first Modbus TCP EDS adapter.</p>
</li>
<li sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="33" sourceendlinenumber="33"><p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="33" sourceendlinenumber="33">Save the JSON file with the name <em>AddComponent.json</em>. </p>
</li>
<li sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="34" sourceendlinenumber="38"><p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="34" sourceendlinenumber="34">From the same directory where the file exists, run the following curl script:</p>
<pre sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="36" sourceendlinenumber="38"><code class="lang-bash">curl -i -d &quot;@AddComponent.json&quot; -H &quot;Content-Type: application/json&quot; http://localhost:5590/api/v1/configuration/system/components
</code></pre></li>
</ol>
<p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="40" sourceendlinenumber="40">After the curl command completes successfully, the new component is available for configuration and use.</p>
<h2 id="parameters-for-system-components" sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="42" sourceendlinenumber="42">Parameters for system components</h2>
<p sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="44" sourceendlinenumber="44">The following parameters are used to define system components.</p>
<table sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="46" sourceendlinenumber="49">
<thead>
<tr>
<th>Parameters</th>
<th>Required</th>
<th>Type</th>
<th>Nullable</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>ComponentId</td>
<td>Required</td>
<td><code>string</code></td>
<td>Yes</td>
<td>The unique ID of the component instance. It can be any alphanumeric string, for example Storage.</td>
</tr>
<tr>
<td>ComponentType</td>
<td>Required</td>
<td><code>string</code></td>
<td>Yes</td>
<td>The type of the component, for example EDS.Component. There are three types of components: Storage identified by <em>EDS.Component</em>, OPC UA EDS Adapter identified by <em>OpcUa</em>, and Modbus TCP EDS Adapter identified by <em>Modbus</em>.</td>
</tr>
</tbody>
</table>
<h2 id="system-components-example" sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="51" sourceendlinenumber="51">System components example</h2>
<pre sourcefile="V1/Configuration/System components configuration_1-0.md" sourcestartlinenumber="53" sourceendlinenumber="68"><code class="lang-json">[
  {
                &quot;componentId&quot;: &quot;OpcUa1&quot;,
                &quot;componentType&quot;: &quot;OpcUa&quot;
            },
            {
                &quot;componentId&quot;: &quot;Modbus1&quot;,
                &quot;componentType&quot;: &quot;Modbus&quot;
            },
            {
                &quot;componentId&quot;: &quot;Storage&quot;,
                &quot;componentType&quot;: &quot;EDS.Component&quot;
   }
]
</code></pre></article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/Edge-Data-Store-Docs/blob/master/V1/Configuration/System components configuration_1-0.md/#L1" class="contribution-link">Improve this Doc</a>
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
