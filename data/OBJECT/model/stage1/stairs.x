xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 58;
 -31.38751;42.49186;-30.51465;,
 -31.38751;42.49186;35.02549;,
 0.17644;42.49186;35.02549;,
 0.17644;42.49186;-30.51465;,
 -118.03555;2.14376;-30.51465;,
 -118.03555;-1.56806;-30.51465;,
 -118.03555;-1.56806;35.02551;,
 -118.03555;2.14376;35.02551;,
 -110.14461;2.14376;-30.51465;,
 -118.03555;2.14376;-30.51465;,
 -118.03555;2.14376;35.02551;,
 -110.14458;2.14376;35.02551;,
 -110.14461;5.80233;-30.51465;,
 -110.14458;5.80233;35.02551;,
 -102.25359;5.80233;-30.51465;,
 -102.25359;5.80233;35.02551;,
 -102.25359;9.46377;-30.51465;,
 -102.25359;9.46377;35.02551;,
 -94.36260;9.46377;-30.51465;,
 -94.36260;9.46377;35.02549;,
 -94.36260;13.11124;-30.51465;,
 -94.36260;13.11124;35.02549;,
 -86.47167;13.11124;-30.51465;,
 -86.47167;13.11124;35.02549;,
 -86.47167;16.77462;-30.51465;,
 -86.47167;16.77462;35.02549;,
 -78.58076;16.77462;-30.51465;,
 -78.58073;16.77462;35.02549;,
 -78.58076;20.44600;-30.51465;,
 -78.58073;20.44600;35.02549;,
 -70.84240;20.47780;-30.51465;,
 -70.68978;20.44600;35.02549;,
 -70.84240;24.18964;-30.51465;,
 -70.84240;20.47780;-30.51465;,
 -70.68978;20.44600;35.02549;,
 -70.84240;24.18964;35.02549;,
 -62.95142;24.18964;-30.51465;,
 -70.84240;24.18964;-30.51465;,
 -70.84240;24.18964;35.02549;,
 -62.95142;24.18964;35.02549;,
 -62.95142;27.84821;-30.51465;,
 -62.95142;27.84821;35.02549;,
 -55.06046;27.84821;-30.51465;,
 -55.06046;27.84821;35.02549;,
 -55.06046;31.50965;-30.51465;,
 -55.06046;31.50965;35.02549;,
 -47.16947;31.50965;-30.51465;,
 -47.16945;31.50965;35.02549;,
 -47.16947;35.15712;-30.51465;,
 -47.16945;35.15712;35.02549;,
 -39.27849;35.15712;-30.51465;,
 -39.27849;35.15712;35.02549;,
 -39.27849;38.82051;-30.51465;,
 -39.27849;38.82051;35.02549;,
 -31.38751;38.82051;-30.51465;,
 -31.38751;38.82051;35.02549;,
 -31.38751;42.49186;-30.51465;,
 -31.38751;42.49186;35.02549;;
 
 48;
 3;0,1,2;,
 3;2,3,0;,
 3;4,5,6;,
 3;4,6,7;,
 3;8,9,10;,
 3;8,10,11;,
 3;12,8,11;,
 3;12,11,13;,
 3;14,12,13;,
 3;14,13,15;,
 3;16,14,15;,
 3;16,15,17;,
 3;18,16,17;,
 3;18,17,19;,
 3;20,18,19;,
 3;20,19,21;,
 3;22,20,21;,
 3;22,21,23;,
 3;24,22,23;,
 3;24,23,25;,
 3;26,24,25;,
 3;26,25,27;,
 3;28,26,27;,
 3;28,27,29;,
 3;30,28,29;,
 3;30,29,31;,
 3;32,33,34;,
 3;32,34,35;,
 3;36,37,38;,
 3;36,38,39;,
 3;40,36,39;,
 3;40,39,41;,
 3;42,40,41;,
 3;42,41,43;,
 3;44,42,43;,
 3;44,43,45;,
 3;46,44,45;,
 3;46,45,47;,
 3;48,46,47;,
 3;48,47,49;,
 3;50,48,49;,
 3;50,49,51;,
 3;52,50,51;,
 3;52,51,53;,
 3;54,52,53;,
 3;54,53,55;,
 3;56,54,55;,
 3;56,55,57;;
 
 MeshMaterialList {
  1;
  48;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.357600;0.357600;0.357600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  12;
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.002055;0.999998;0.000243;,
  0.000000;1.000000;0.000485;,
  -0.999170;-0.040734;0.000000;,
  -0.999792;-0.020371;0.001165;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.004109;0.999992;0.000000;,
  -0.999997;0.000000;0.002329;;
  48;
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;2,2,2;,
  3;2,2,2;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;3,3,3;,
  3;3,3,3;,
  3;4,10,4;,
  3;4,4,5;,
  3;7,11,7;,
  3;7,7,6;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,8,0;,
  3;0,0,8;,
  3;1,1,1;,
  3;1,1,1;,
  3;9,9,9;,
  3;9,9,9;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;;
 }
 MeshTextureCoords {
  58;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.888890;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.888890;,
  1.000000;0.888890;,
  0.000000;0.888890;,
  1.000000;0.777780;,
  0.000000;0.777780;,
  1.000000;0.777780;,
  0.000000;0.777780;,
  1.000000;0.666670;,
  0.000000;0.666670;,
  1.000000;0.666670;,
  0.000000;0.666670;,
  1.000000;0.555560;,
  0.000000;0.555560;,
  1.000000;0.555560;,
  0.000000;0.555560;,
  1.000000;0.444440;,
  0.000000;0.444440;,
  1.000000;0.444440;,
  0.000000;0.444440;,
  1.000000;0.333330;,
  0.000000;0.333330;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.888890;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.888890;,
  1.000000;0.888890;,
  0.000000;0.888890;,
  1.000000;0.777780;,
  0.000000;0.777780;,
  1.000000;0.777780;,
  0.000000;0.777780;,
  1.000000;0.666670;,
  0.000000;0.666670;,
  1.000000;0.666670;,
  0.000000;0.666670;,
  1.000000;0.555560;,
  0.000000;0.555560;,
  1.000000;0.555560;,
  0.000000;0.555560;,
  1.000000;0.444440;,
  0.000000;0.444440;,
  1.000000;0.444440;,
  0.000000;0.444440;;
 }
}
