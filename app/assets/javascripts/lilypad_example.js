function drawLilypad(data) {
  var svgContainer = d3.select("svg#energy_nodes");
  var svgEl = $("svg#energy_nodes");

  var originX = svgEl.width()/2;
  var originY = svgEl.height()/2;
  var innerCircleRadius = 85;
  var outerCircleRadius = 185;
  var chairOriginX = originX + ((outerCircleRadius) * Math.sin(0));
  var chairOriginY = originY - ((outerCircleRadius) * Math.cos(0));


  // draw lines
  var numberOfLines = 7;
  var rotateDegree = Math.round(360/numberOfLines);
  var degrees = rotateDegree;
  var lineColor = '#214f49'

  for(var i=0; i < numberOfLines; i++){
    var line = svgContainer.append("line")
                .style("stroke", lineColor)
                .style("stroke-width", 20)
                .attr("x1", originX)
                .attr("y1", originY)
                .attr("x2", chairOriginX)
                .attr("y2", chairOriginY);
    line.attr("transform", "rotate(" + degrees + "," + originX + "," + originY + ")");
    degrees += rotateDegree;
  }

  // draw nodes
  var numberOfCircles = 7;
  var rotateDegree = Math.round(360/numberOfCircles);
  var degrees = rotateDegree;
  var outterCicleColor = '#7DB883'

  for(var i=0; i < numberOfLines; i++){
    var circle = svgContainer.append("circle")
                             .attr('cx', chairOriginX)
                             .attr('cy', chairOriginY)
                             .attr('r', 60)
                             .attr('fill', outterCicleColor)
                             .attr('class', 'node')
    circle.attr("transform", "rotate(" + degrees + "," + originX + "," + originY + ")");
    degrees += rotateDegree;
  }

  svgContainer.selectAll("circle.node")
      .on("mouseover", handleMouseOver)
      .on("mouseout", handleMouseOut)

  // draw center lilypad
  svgContainer.append("circle")
      .attr('cx', originX)
      .attr('cy', originY)
      .attr('r', innerCircleRadius)
      .attr('fill', '#2e6c64')
      .attr('stroke', 'black');


  function handleMouseOver() {
    d3.select(this).attr('fill', "#e2b43d");
  }

  function handleMouseOut() {
    d3.select(this).attr('fill', outterCicleColor);
  }
}
