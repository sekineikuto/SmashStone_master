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
 -47.69658;24.11675;-98.93841;,
 -104.47279;24.11675;99.07835;,
 -47.69660;24.11675;99.07835;,
 -104.47279;24.11675;-98.93841;,
 -0.30895;0.02044;97.12486;,
 -0.30895;0.02044;-96.33376;,
 -0.30895;2.05044;-98.93841;,
 -0.30895;2.05044;99.07835;,
 -0.30895;2.05044;99.07835;,
 -0.30895;2.05044;-98.93841;,
 -4.62451;2.05044;-98.93841;,
 -4.62452;2.05044;99.07835;,
 -4.62451;4.05130;-98.93841;,
 -4.62452;4.05130;99.07835;,
 -8.94008;4.05130;-98.93841;,
 -8.94009;4.05130;99.07835;,
 -8.94008;6.05374;-98.93841;,
 -8.94009;6.05374;99.07835;,
 -13.25561;6.05374;-98.93841;,
 -13.25562;6.05374;99.07835;,
 -13.25561;8.04853;-98.93841;,
 -13.25562;8.04853;99.07835;,
 -17.57117;8.04853;-98.93841;,
 -17.57117;8.04853;99.07835;,
 -17.57117;10.05203;-98.93841;,
 -17.57117;10.05203;99.07835;,
 -21.88671;10.05203;-98.93841;,
 -21.88674;10.05203;99.07835;,
 -21.88671;12.05990;-98.93841;,
 -21.88674;12.05990;99.07835;,
 -26.11882;12.07729;-98.93841;,
 -26.20231;12.05990;99.07835;,
 -26.20231;12.05990;99.07835;,
 -26.11882;12.07729;-98.93841;,
 -26.11882;14.10729;-98.93841;,
 -26.11884;14.10729;99.07835;,
 -26.11884;14.10729;99.07835;,
 -26.11882;14.10729;-98.93841;,
 -30.43438;14.10729;-98.93841;,
 -30.43438;14.10729;99.07835;,
 -30.43438;16.10815;-98.93841;,
 -30.43438;16.10815;99.07835;,
 -34.74993;16.10815;-98.93841;,
 -34.74995;16.10815;99.07835;,
 -34.74993;18.11059;-98.93841;,
 -34.74995;18.11059;99.07835;,
 -39.06547;18.11059;-98.93841;,
 -39.06550;18.11059;99.07835;,
 -39.06547;20.10538;-98.93841;,
 -39.06550;20.10538;99.07835;,
 -43.38104;20.10538;-98.93841;,
 -43.38104;20.10538;99.07835;,
 -43.38104;22.10888;-98.93841;,
 -43.38104;22.10888;99.07835;,
 -47.69658;22.10888;-98.93841;,
 -47.69660;22.10888;99.07835;,
 -104.73025;2.48831;-98.88537;,
 -104.73025;2.48831;99.13140;;
 
 72;
 3;0,1,2;,
 3;1,0,3;,
 3;4,5,6;,
 3;4,6,7;,
 3;8,9,10;,
 3;8,10,11;,
 3;11,10,12;,
 3;11,12,13;,
 3;13,12,14;,
 3;13,14,15;,
 3;15,14,16;,
 3;15,16,17;,
 3;17,16,18;,
 3;17,18,19;,
 3;19,18,20;,
 3;19,20,21;,
 3;21,20,22;,
 3;21,22,23;,
 3;23,22,24;,
 3;23,24,25;,
 3;25,24,26;,
 3;25,26,27;,
 3;27,26,28;,
 3;27,28,29;,
 3;29,28,30;,
 3;29,30,31;,
 3;32,33,34;,
 3;32,34,35;,
 3;36,37,38;,
 3;36,38,39;,
 3;39,38,40;,
 3;39,40,41;,
 3;41,40,42;,
 3;41,42,43;,
 3;43,42,44;,
 3;43,44,45;,
 3;45,44,46;,
 3;45,46,47;,
 3;47,46,48;,
 3;47,48,49;,
 3;49,48,50;,
 3;49,50,51;,
 3;51,50,52;,
 3;51,52,53;,
 3;53,52,54;,
 3;53,54,55;,
 3;7,6,5;,
 3;7,5,4;,
 3;13,12,10;,
 3;13,10,11;,
 3;17,16,14;,
 3;17,14,15;,
 3;21,20,18;,
 3;21,18,19;,
 3;25,24,22;,
 3;25,22,23;,
 3;29,28,26;,
 3;29,26,27;,
 3;35,34,33;,
 3;35,33,32;,
 3;41,40,38;,
 3;41,38,39;,
 3;45,44,42;,
 3;45,42,43;,
 3;49,48,46;,
 3;49,46,47;,
 3;53,52,50;,
 3;53,50,51;,
 3;54,0,2;,
 3;54,2,55;,
 3;56,57,1;,
 3;56,1,3;;
 
 MeshMaterialList {
  1;
  72;
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
   0.385600;0.385600;0.385600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  31;
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.002055;0.999998;0.000044;,
  0.000000;1.000000;0.000088;,
  0.999170;-0.040736;0.000000;,
  0.999792;-0.020372;0.000211;,
  0.000000;1.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  -0.999929;0.011903;0.000000;,
  -0.999929;0.011903;0.000000;,
  0.004109;0.999992;0.000000;,
  1.000000;0.000000;0.000422;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;-0.000000;,
  -1.000000;0.000000;-0.000000;,
  -1.000000;0.000000;-0.000000;,
  -1.000000;0.000000;-0.000000;,
  -0.999792;0.020372;-0.000209;,
  -1.000000;0.000000;-0.000000;,
  -0.999170;0.040736;-0.000418;,
  -1.000000;0.000000;-0.000000;,
  -1.000000;0.000000;-0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;;
  72;
  3;2,2,2;,
  3;2,2,2;,
  3;1,1,1;,
  3;1,1,0;,
  3;2,2,2;,
  3;2,2,2;,
  3;3,3,3;,
  3;3,3,3;,
  3;2,2,2;,
  3;2,2,2;,
  3;4,4,4;,
  3;4,4,4;,
  3;2,2,2;,
  3;2,2,2;,
  3;5,5,5;,
  3;5,5,5;,
  3;2,2,2;,
  3;2,2,2;,
  3;1,1,1;,
  3;1,1,1;,
  3;2,2,2;,
  3;2,2,2;,
  3;6,6,6;,
  3;6,6,6;,
  3;7,16,7;,
  3;7,7,8;,
  3;10,17,10;,
  3;10,10,9;,
  3;2,11,2;,
  3;2,2,11;,
  3;1,1,1;,
  3;1,1,1;,
  3;2,2,2;,
  3;2,2,2;,
  3;12,12,12;,
  3;12,12,12;,
  3;2,2,2;,
  3;2,2,2;,
  3;13,13,13;,
  3;13,13,13;,
  3;2,2,2;,
  3;2,2,2;,
  3;1,1,1;,
  3;1,1,1;,
  3;2,2,2;,
  3;2,2,11;,
  3;18,19,18;,
  3;18,18,18;,
  3;20,20,20;,
  3;20,20,20;,
  3;21,21,21;,
  3;21,21,21;,
  3;22,22,22;,
  3;22,22,22;,
  3;18,18,18;,
  3;18,18,18;,
  3;23,23,23;,
  3;23,23,23;,
  3;24,25,24;,
  3;24,24,26;,
  3;18,18,18;,
  3;18,18,18;,
  3;27,27,27;,
  3;27,27,27;,
  3;28,28,28;,
  3;28,28,28;,
  3;18,18,18;,
  3;18,18,18;,
  3;29,30,29;,
  3;29,29,30;,
  3;15,14,15;,
  3;15,15,14;;
 }
 MeshTextureCoords {
  58;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.888890;,
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
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.888890;,
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
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}