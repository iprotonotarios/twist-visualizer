Table nodePositions;
String positionsFile = "../node_positions.csv";
PImage background;
String backgroundFile = "../background_image_twist.png";
Table trace;
String traceFile = "../trace.tsv";
Table average_listening;
String averageTraceFile = "../average_listening.tsv";
Table model;
String modelFile = "../model.csv";
Node[] nodes;

int count;
String nodeLabel;

void setup() {
  size(1744, 800);
  background = loadImage(backgroundFile);
  tint(255, 180);
  image(background, 0, 0);
  noTint();
   
  nodePositions = loadTable(positionsFile);
  nodes = new Node[nodePositions.getRowCount()];
  for (int rowIndex = 0; rowIndex < nodePositions.getRowCount(); rowIndex++) {
    TableRow row  = nodePositions.getRow(rowIndex);
    nodes[rowIndex] = new Node(row.getString(0), row.getFloat(2), row.getFloat(3), row.getFloat(4));
  }
   
  trace = loadTable(traceFile);
  average_listening = loadTable(averageTraceFile);
  model = loadTable(modelFile);
  count = 0;
  
  for (Node node : nodes) {
    node.draw();
  }
  frameRate(500);
}

void draw() {
  
  nodeLabel = trace.getString(count,0);
  for (Node node : nodes) {
    if (nodeLabel.equals(node.label)) {
      node.setR(trace.getFloat(count,4)*2.5);
      node.draw();
    }
  }  
  if (count<60000) {
//    count ++;
      count = count+1;
  } else noLoop();
  if (count%300 == 0) saveFrame("/home/ioannis/RELYonIT/twist_energy_ULANC/twist_visualizer/video/screen-#####.tif");
};


