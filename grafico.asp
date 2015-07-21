


<style type="text/css">
  .background{
    fill: none;
      pointer-events: all;
  }
  .bar {
    fill: #622; /*#558EBD;CF261D;*/
    /*stroke:#000;*/
  }

  /*.bar:hover {
    fill: brown;
  }*/
  .bar.active {
    fill: #044 !important; /*669FCE*/
  }
/*  .bar.max {
    fill: #822; 
    #DF362D;
  }*/
  /*.bar.min {
    fill: #448;
    #55BD8E;
  }*/
  
  .tooltip {
    background-color: #FFF;
    padding: 2px 4px;
    border: solid 1px #CCC;
    border-radius: 3px;
    /*left: 0 !important;*/
  }

  .baseline {
    stroke: #000;
  }

  .axis {
    font: 12px sans-serif;
  }

  .axis path,
  .axis line {
    fill: none;
    stroke: #000;
    shape-rendering: crispEdges;
    stroke-width: 1px;
  }

  /* .x.axis path {
    display: none;
  } */

</style>



<div id="grafico1">Grafico</div>


<script src="/UAI/Scripts/jquery/jquery-1.9.1.js"></script>
<script src="/UAI/Scripts/D3/d3.v3.5.6.js" charset="utf-8"></script>
<script>
console.clear();
var data1 = 
  {
 "name": "flare",
 "children": [
  {
   "name": "analytics",
   "children": [
    {
     "name": "cluster",
     "children": [
      {"name": "AgglomerativeCluster", "size": 3938},
      {"name": "CommunityStructure", "size": 3812},
      {"name": "HierarchicalCluster", "size": 6714},
      {"name": "MergeEdge", "size": 743}
     ]
    },
    {
     "name": "graph",
     "children": [
      {"name": "BetweennessCentrality", "size": 3534},
      {"name": "LinkDistance", "size": 5731},
      {"name": "MaxFlowMinCut", "size": 7840},
      {"name": "ShortestPaths", "size": 5914},
      {"name": "SpanningTree", "size": 3416}
     ]
    },
    {
     "name": "optimization",
     "children": [
      {"name": "AspectRatioBanker", "size": 7074}
     ]
    }
   ]
  },
  {
   "name": "animate",
   "children": [
    {"name": "Easing", "size": 17010},
    {"name": "FunctionSequence", "size": 5842},
    {
     "name": "interpolate",
     "children": [
      {"name": "ArrayInterpolator", "size": 1983},
      {"name": "ColorInterpolator", "size": 2047},
      {"name": "DateInterpolator", "size": 1375},
      {"name": "Interpolator", "size": 8746},
      {"name": "MatrixInterpolator", "size": 2202},
      {"name": "NumberInterpolator", "size": 1382},
      {"name": "ObjectInterpolator", "size": 1629},
      {"name": "PointInterpolator", "size": 1675},
      {"name": "RectangleInterpolator", "size": 2042}
     ]
    },
    {"name": "ISchedulable", "size": 1041},
    {"name": "Parallel", "size": 5176},
    {"name": "Pause", "size": 449},
    {"name": "Scheduler", "size": 5593},
    {"name": "Sequence", "size": 5534},
    {"name": "Transition", "size": 9201},
    {"name": "Transitioner", "size": 19975},
    {"name": "TransitionEvent", "size": 1116},
    {"name": "Tween", "size": 6006}
   ]
  },
  {
   "name": "data",
   "children": [
    {
     "name": "converters",
     "children": [
      {"name": "Converters", "size": 721},
      {"name": "DelimitedTextConverter", "size": 4294},
      {"name": "GraphMLConverter", "size": 9800},
      {"name": "IDataConverter", "size": 1314},
      {"name": "JSONConverter", "size": 2220}
     ]
    },
    {"name": "DataField", "size": 1759},
    {"name": "DataSchema", "size": 2165},
    {"name": "DataSet", "size": 586},
    {"name": "DataSource", "size": 3331},
    {"name": "DataTable", "size": 772},
    {"name": "DataUtil", "size": 3322}
   ]
  },
  {
   "name": "display",
   "children": [
    {"name": "DirtySprite", "size": 8833},
    {"name": "LineSprite", "size": 1732},
    {"name": "RectSprite", "size": 3623},
    {"name": "TextSprite", "size": 10066}
   ]
  },
  {
   "name": "flex",
   "children": [
    {"name": "FlareVis", "size": 4116}
   ]
  },
  {
   "name": "physics",
   "children": [
    {"name": "DragForce", "size": 1082},
    {"name": "GravityForce", "size": 1336},
    {"name": "IForce", "size": 319},
    {"name": "NBodyForce", "size": 10498},
    {"name": "Particle", "size": 2822},
    {"name": "Simulation", "size": 9983},
    {"name": "Spring", "size": 2213},
    {"name": "SpringForce", "size": 1681}
   ]
  },
  {
   "name": "query",
   "children": [
    {"name": "AggregateExpression", "size": 1616},
    {"name": "And", "size": 1027},
    {"name": "Arithmetic", "size": 3891},
    {"name": "Average", "size": 891},
    {"name": "BinaryExpression", "size": 2893},
    {"name": "Comparison", "size": 5103},
    {"name": "CompositeExpression", "size": 3677},
    {"name": "Count", "size": 781},
    {"name": "DateUtil", "size": 4141},
    {"name": "Distinct", "size": 933},
    {"name": "Expression", "size": 5130},
    {"name": "ExpressionIterator", "size": 3617},
    {"name": "Fn", "size": 3240},
    {"name": "If", "size": 2732},
    {"name": "IsA", "size": 2039},
    {"name": "Literal", "size": 1214},
    {"name": "Match", "size": 3748},
    {"name": "Maximum", "size": 843},
    {
     "name": "methods",
     "children": [
      {"name": "add", "size": 593},
      {"name": "and", "size": 330},
      {"name": "average", "size": 287},
      {"name": "count", "size": 277},
      {"name": "distinct", "size": 292},
      {"name": "div", "size": 595},
      {"name": "eq", "size": 594},
      {"name": "fn", "size": 460},
      {"name": "gt", "size": 603},
      {"name": "gte", "size": 625},
      {"name": "iff", "size": 748},
      {"name": "isa", "size": 461},
      {"name": "lt", "size": 597},
      {"name": "lte", "size": 619},
      {"name": "max", "size": 283},
      {"name": "min", "size": 283},
      {"name": "mod", "size": 591},
      {"name": "mul", "size": 603},
      {"name": "neq", "size": 599},
      {"name": "not", "size": 386},
      {"name": "or", "size": 323},
      {"name": "orderby", "size": 307},
      {"name": "range", "size": 772},
      {"name": "select", "size": 296},
      {"name": "stddev", "size": 363},
      {"name": "sub", "size": 600},
      {"name": "sum", "size": 280},
      {"name": "update", "size": 307},
      {"name": "variance", "size": 335},
      {"name": "where", "size": 299},
      {"name": "xor", "size": 354},
      {"name": "_", "size": 264}
     ]
    },
    {"name": "Minimum", "size": 843},
    {"name": "Not", "size": 1554},
    {"name": "Or", "size": 970},
    {"name": "Query", "size": 13896},
    {"name": "Range", "size": 1594},
    {"name": "StringUtil", "size": 4130},
    {"name": "Sum", "size": 791},
    {"name": "Variable", "size": 1124},
    {"name": "Variance", "size": 1876},
    {"name": "Xor", "size": 1101}
   ]
  },
  {
   "name": "scale",
   "children": [
    {"name": "IScaleMap", "size": 2105},
    {"name": "LinearScale", "size": 1316},
    {"name": "LogScale", "size": 3151},
    {"name": "OrdinalScale", "size": 3770},
    {"name": "QuantileScale", "size": 2435},
    {"name": "QuantitativeScale", "size": 4839},
    {"name": "RootScale", "size": 1756},
    {"name": "Scale", "size": 4268},
    {"name": "ScaleType", "size": 1821},
    {"name": "TimeScale", "size": 5833}
   ]
  },
  {
   "name": "util",
   "children": [
    {"name": "Arrays", "size": 8258},
    {"name": "Colors", "size": 10001},
    {"name": "Dates", "size": 8217},
    {"name": "Displays", "size": 12555},
    {"name": "Filter", "size": 2324},
    {"name": "Geometry", "size": 10993},
    {
     "name": "heap",
     "children": [
      {"name": "FibonacciHeap", "size": 9354},
      {"name": "HeapNode", "size": 1233}
     ]
    },
    {"name": "IEvaluable", "size": 335},
    {"name": "IPredicate", "size": 383},
    {"name": "IValueProxy", "size": 874},
    {
     "name": "math",
     "children": [
      {"name": "DenseMatrix", "size": 3165},
      {"name": "IMatrix", "size": 2815},
      {"name": "SparseMatrix", "size": 3366}
     ]
    },
    {"name": "Maths", "size": 17705},
    {"name": "Orientation", "size": 1486},
    {
     "name": "palette",
     "children": [
      {"name": "ColorPalette", "size": 6367},
      {"name": "Palette", "size": 1229},
      {"name": "ShapePalette", "size": 2059},
      {"name": "SizePalette", "size": 2291}
     ]
    },
    {"name": "Property", "size": 5559},
    {"name": "Shapes", "size": 19118},
    {"name": "Sort", "size": 6887},
    {"name": "Stats", "size": 6557},
    {"name": "Strings", "size": 22026}
   ]
  },
  {
   "name": "vis",
   "children": [
    {
     "name": "axis",
     "children": [
      {"name": "Axes", "size": 1302},
      {"name": "Axis", "size": 24593},
      {"name": "AxisGridLine", "size": 652},
      {"name": "AxisLabel", "size": 636},
      {"name": "CartesianAxes", "size": 6703}
     ]
    },
    {
     "name": "controls",
     "children": [
      {"name": "AnchorControl", "size": 2138},
      {"name": "ClickControl", "size": 3824},
      {"name": "Control", "size": 1353},
      {"name": "ControlList", "size": 4665},
      {"name": "DragControl", "size": 2649},
      {"name": "ExpandControl", "size": 2832},
      {"name": "HoverControl", "size": 4896},
      {"name": "IControl", "size": 763},
      {"name": "PanZoomControl", "size": 5222},
      {"name": "SelectionControl", "size": 7862},
      {"name": "TooltipControl", "size": 8435}
     ]
    },
    {
     "name": "data",
     "children": [
      {"name": "Data", "size": 20544},
      {"name": "DataList", "size": 19788},
      {"name": "DataSprite", "size": 10349},
      {"name": "EdgeSprite", "size": 3301},
      {"name": "NodeSprite", "size": 19382},
      {
       "name": "render",
       "children": [
        {"name": "ArrowType", "size": 698},
        {"name": "EdgeRenderer", "size": 5569},
        {"name": "IRenderer", "size": 353},
        {"name": "ShapeRenderer", "size": 2247}
       ]
      },
      {"name": "ScaleBinding", "size": 11275},
      {"name": "Tree", "size": 7147},
      {"name": "TreeBuilder", "size": 9930}
     ]
    },
    {
     "name": "events",
     "children": [
      {"name": "DataEvent", "size": 2313},
      {"name": "SelectionEvent", "size": 1880},
      {"name": "TooltipEvent", "size": 1701},
      {"name": "VisualizationEvent", "size": 1117}
     ]
    },
    {
     "name": "legend",
     "children": [
      {"name": "Legend", "size": 20859},
      {"name": "LegendItem", "size": 4614},
      {"name": "LegendRange", "size": 10530}
     ]
    },
    {
     "name": "operator",
     "children": [
      {
       "name": "distortion",
       "children": [
        {"name": "BifocalDistortion", "size": 4461},
        {"name": "Distortion", "size": 6314},
        {"name": "FisheyeDistortion", "size": 3444}
       ]
      },
      {
       "name": "encoder",
       "children": [
        {"name": "ColorEncoder", "size": 3179},
        {"name": "Encoder", "size": 4060},
        {"name": "PropertyEncoder", "size": 4138},
        {"name": "ShapeEncoder", "size": 1690},
        {"name": "SizeEncoder", "size": 1830}
       ]
      },
      {
       "name": "filter",
       "children": [
        {"name": "FisheyeTreeFilter", "size": 5219},
        {"name": "GraphDistanceFilter", "size": 3165},
        {"name": "VisibilityFilter", "size": 3509}
       ]
      },
      {"name": "IOperator", "size": 1286},
      {
       "name": "label",
       "children": [
        {"name": "Labeler", "size": 9956},
        {"name": "RadialLabeler", "size": 3899},
        {"name": "StackedAreaLabeler", "size": 3202}
       ]
      },
      {
       "name": "layout",
       "children": [
        {"name": "AxisLayout", "size": 6725},
        {"name": "BundledEdgeRouter", "size": 3727},
        {"name": "CircleLayout", "size": 9317},
        {"name": "CirclePackingLayout", "size": 12003},
        {"name": "DendrogramLayout", "size": 4853},
        {"name": "ForceDirectedLayout", "size": 8411},
        {"name": "IcicleTreeLayout", "size": 4864},
        {"name": "IndentedTreeLayout", "size": 3174},
        {"name": "Layout", "size": 7881},
        {"name": "NodeLinkTreeLayout", "size": 12870},
        {"name": "PieLayout", "size": 2728},
        {"name": "RadialTreeLayout", "size": 12348},
        {"name": "RandomLayout", "size": 870},
        {"name": "StackedAreaLayout", "size": 9121},
        {"name": "TreeMapLayout", "size": 9191}
       ]
      },
      {"name": "Operator", "size": 2490},
      {"name": "OperatorList", "size": 5248},
      {"name": "OperatorSequence", "size": 4190},
      {"name": "OperatorSwitch", "size": 2581},
      {"name": "SortOperator", "size": 2023}
     ]
    },
    {"name": "Visualization", "size": 16540}
   ]
  }
 ]
}
var pt_BR = {
      "decimal": ",",
      "thousands": ".",
      "grouping": [3],
      "currency": ["R$", ""],
      "dateTime": "%a %b %e %X %Y",
      "date": "%d/%m/%Y",
      "time": "%H:%M:%S",
      "periods": ["AM", "PM"],
      "days": ["Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"],
      "shortDays": ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sab"],
      "months": ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"],
      "shortMonths": ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dec"]
    }
var BR = d3.locale(pt_BR);
d3.time.format = pt_BR.timeFormat;

//Configuracoes do grafico
var m = [40, 60, 40, 40], // margin: top, bottom, right, left
  h = 650 - m[1] - m[3], // height
  w = 540 - m[0] - m[2], // width
  //y range
  y = d3.scale.linear().range([h,0]),
  //x range 
  x = d3.scale.ordinal().domain(data1.children.map(function(d){return d.name;})).rangeRoundBands([0, w],.1);
  // bar color [has children, leaf]
  z = d3.scale.ordinal().range(["steelblue", "#aaa"]); 

//hierarchy based on value
var hierarchy = d3.layout.partition()
    .value(function(d) { return d.size; });

var tooltip = d3.select("#grafico1")
  .append("div")
  .style("position", "absolute")
  .style("z-index", "10")
  .style("visibility", "hidden")
  .classed('tooltip', true);

var yAxis = d3.svg.axis()
    .scale(y)
    .orient("left")
  .ticks(10)
  .tickFormat(BR.numberFormat("s"));

var svg = d3.select("#grafico1").append("svg")
    .attr("height", h + m[1] + m[3])
    .attr("width", w + m[0] + m[2])
  .append("g")
    .attr("transform", "translate(" + m[3] + "," + m[0] + ")");

//Background configuration
svg.append("rect")
    .attr("class", "background")
    .attr("width", w)
    .attr("height", h)
    .on("click", up)
  .on("mouseover", function(d) {
    d3.select(this).select("rect").classed("active", true);
    var txt = d.parent ? "Clique para " + d.parent.name : "Total: " + d.value;
    tooltip.style("visibility", "visible").text(txt);
  })
  .on("mousemove", function(){
    return tooltip.style("top", (event.pageY-20)+"px").style("left",(event.pageX+10)+"px");
  })
  .on("mouseout",  function(d) {
    d3.select(this).select("rect").classed("active", false);
    tooltip.style("visibility", "hidden")
  });

svg.append("g")
    .attr("class", "y axis");

var xAxis = d3.svg.axis()
    .scale(x)
    // .orient("bottom").tickFormat("");
//  .tickFormat(BR.timeFormat("%x"))
  //;
svg.append("g")
    .attr("class", "x axis xaxis")
    .attr("transform", "translate(0," + h + ")")
    .call(xAxis);

svg.selectAll(".xaxis text")  // select all the text elements for the xaxis 
  .attr("transform", function(d) {
    return "translate(" + ((this.getBBox().height*-2)+0) + "," + 20 + ")rotate(-45)";
  });

svg.data(data1);
var root = data1;

hierarchy.nodes(root);
  y.domain([0,root.value]).nice();

  down(root);


function down(d) {
  if (!d.children || this.__transition__) return;
  var duration = d3.event && d3.event.altKey ? 7500 : 1200,
      delay = duration / d.children.length;

  // Mark any currently-displayed bars as exiting.
  var exit = svg.selectAll(".enter").attr("class", "exit");

  // Entering nodes immediately obscure the clicked-on bar, so hide it.
  exit.selectAll("rect").filter(function(p) { return p === d; })
      .style("fill-opacity", 1e-6);

      var x0 = x(d.name) ? x(d.name) : 0; // posicao da origem da animacao

  // Enter the new bars for the clicked-on data.
  // Per above, entering bars are immediately visible.
  var enter = bar(d)
      .attr("transform", stack(x0))
      .style("opacity", 1);

  // Have the text fade-in, even though the bars are visible.
  // Color the bars as parents; they will fade to children if appropriate. 
  enter.select("text").style("fill-opacity", 1e-6);
  enter.select("rect").style("fill", z(true));

  // Update the axis scales domain.
  y.domain([0,d3.max(d.children, function(d) { return d.value; })]).nice();
  x.domain(d.children.map(function(d){return d.name;}));

  // Update the axis.
  svg.selectAll(".y.axis").transition()
      .duration(duration)
      .call(yAxis);
  svg.selectAll(".x.axis")      // .transition().duration(duration)
      .call(xAxis);
  svg.selectAll(".xaxis text")  // select all the text elements for the xaxis 
    .attr("transform", function(d) {
      return "translate(" + ((this.getBBox().height*-2)+0) + "," + 20 + ")rotate(-45)";
    });


  // Transition entering bars to their new position.
  var enterTransition = enter.transition()
      .duration(duration)
      .delay(function(d, i) { return i * delay; })
      .attr("transform", function(d, i) { 
      return "translate("  + x(d.name) + "," +y(d.value)+ ")"; 
    });
  // Transition entering text.
  enterTransition.select("text").style("fill-opacity", 1);

  // Transition entering rects to the new x-scale.
  enterTransition.select("rect")
      .attr("class","bar")
      .attr("height", function(d) { return (h-y(d.value)); })
      .style("fill", function(d) { return z(!!d.children); })
      .attr("width", x.rangeBand());

  // Transition exiting bars to fade out.
  exit.selectAll("g").attr("transform", function (d){ return "translate("+d3.transform(d3.select(this).attr("transform")).translate[0]+",0)";});
  exit.selectAll("rect").attr("y",h).attr("height",0);
  var exitTransition = exit
      .transition()
      .duration(duration)
      .style("opacity", 1e-6)
      .remove()
      ;

  exitTransition
      .selectAll("rect")
      .attr("height", function(d) {return h-y(d.value);})
      .attr("y",function(d){return y(d.value);})

  // Rebind the current node to the background.
  svg.select(".background").data([d]).transition().duration(duration * 2);
}

function up(d) {
  if (!d.parent || this.__transition__) return;
  var duration = d3.event && d3.event.altKey ? 7500 :750,
      delay = duration / d.children.length;

  // Mark any currently-displayed bars as exiting.
  var exit = svg.selectAll(".enter").attr("class", "exit");


  // Update the axis scales domain.
  x.domain(d.parent.children.map(function(d){return d.name;}));
    
  //get x position of parent to exit animation 
  var x0 = x(d.name) ? x(d.name) : 0;

  // Enter the new bars for the clicked-on data's parent.
  var enter = bar(d.parent)
      .attr("transform", function(d) { return "translate(" + x(d.name) + ", "+(y(d.value))+" )";})
      .style("opacity", 1e-6);

  // Color the bars as appropriate.
  // Exiting nodes will obscure the parent bar, so hide it.
  enter.select("rect")
      .style("fill", function(d) { return z(!!d.children); })
    .filter(function(p) { return p === d; })
      .style("fill-opacity", 1e-6);

  y.domain([0,d3.max(d.parent.children, function(d) { return d.value; })]).nice();
  // Transition entering bars to fade in over the full duration.
  var enterTransition = enter.transition()
      .duration(duration * 2)

      //
      .attr("transform", function(d) { return "translate(" + x(d.name) + ", "+(y(d.value))+" )";})

      .style("opacity", 1);

  // Transition entering rects to the new x-scale.
  // When the entering parent rect is done, make it visible!
  enterTransition.selectAll("rect")
      .attr("class","bar")
      .attr("height", function(d) { return (h-y(d.value)); })
      .attr("width", x.rangeBand())
      .each("end", function(p) { if (p === d) d3.select(this).style("fill-opacity", null); });

  // Transition exiting bars to the parent's position.
  var exitTransition = exit.selectAll("g").transition()
      .duration(duration)
      .delay(function(d, i) { return i * delay; })
       .attr("transform", stack(x0)); //stack(d.index)

  // Transition exiting text to fade out.
  exitTransition.select("text")
      .style("fill-opacity", 1e-6);

  // Transition exiting rects to the new scale and fade to parent color.
  exitTransition.select("rect")
      .attr("width", x.rangeBand())
      .attr("height", function(d) { return h-y(d.value); })
      .style("fill", z(true));

  // Update the x-axis.
  svg.selectAll(".y.axis").transition()
      .duration(duration * 2)
      .call(yAxis);
  svg.selectAll(".x.axis").transition()
      .duration(duration)
      .call(xAxis);
  svg.selectAll(".xaxis text")  // select all the text elements for the xaxis 
    .attr("transform", function(d) {
      return "translate(" + ((this.getBBox().height*-2)+0) + "," + 20 + ")rotate(-45)";
    });
  // Remove exiting nodes when the last child has finished transitioning.
  exit.transition().duration(duration * 2).remove();

  // Rebind the current parent to the background.
  svg.select(".background").data([d.parent]).transition().duration(duration * 2);
}

// Creates a set of bars for the given data node, at the specified index.
function bar(d) {
  var bar = svg.insert("svg:g", ".x.axis")
      .attr("class", "enter")
      .attr("transform", "translate(0,0)")  
    .selectAll("g")
      .data(d.children)
    .enter().append("g")
      .style("cursor", function(d) { return !d.children ? null : "pointer"; })
      .on("click", down);

  bar.append("rect")
      .attr("class", "bar")
      .attr("height", function(d) { return (h-y(d.value)); })
      .attr("width", x.rangeBand());
//texto com nome da coluna
/*  bar.append("svg:text")
//       .attr("x", x.rangeBand())
      .attr("y", h)
      .attr("dx", ".35em")
      .attr("text-anchor", "end")
      .attr("transform", function(d) {
     return "translate(" + (this.getBBox().width+x.rangeBand()/2) + "," + ((this.getBBox().height*-2)) + ")" + "rotate(-45)";
  })
      .text(function(d) { return d.name; });
*/
//Tooltip
  bar.on("mouseover", function(d) {
    d3.select(this).select("rect").classed("active", true);
    tooltip.style("visibility", "visible").text(d.value + " senhas");
  })
  .on("mousemove", function(){
    return tooltip.style("top", (event.pageY-20)+"px").style("left",(event.pageX+10)+"px");
  })
  .on("mouseout",  function(d) {
    d3.select(this).select("rect").classed("active", false);
    tooltip.style("visibility", "hidden")
  });
  return bar;
}

// A stateful closure for stacking bars horizontally.
//stack de quando quando upa
function stack(x0) {
  var y0 = 0;
  return function(d) {
    //Posicao atual menos altura da coluna anterior 
    var ty = "translate("+ x0 + ","  + ( y(d.value)- y0 ) + ")"; 
    y0 = h-(y(d.value)- y0);
    return ty;
  };
}
/*
function stack(i) {
  var x0 = 0;
  return function(d) {
    var tx = "translate(" + x0 + "," + y * i * 1.2 + ")";
    x0 += x(d.value);
    return tx;
  };
}
*/

    </script>

