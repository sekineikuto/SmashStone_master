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
 60;
 96.72932;24.11675;-46.62162;,
 -96.72932;24.11675;-105.37687;,
 -96.72932;24.11675;-46.62162;,
 96.72932;24.11675;-105.37687;,
 -96.72932;0.02044;0.76602;,
 96.72932;0.02044;0.76602;,
 96.72932;2.05044;0.76602;,
 -96.72932;2.05044;0.76602;,
 -96.72932;2.05044;0.76602;,
 96.72932;2.05044;0.76602;,
 96.72932;2.05044;-3.54954;,
 -96.72932;2.05044;-3.54954;,
 96.72932;4.05130;-3.54954;,
 -96.72932;4.05130;-3.54954;,
 96.72932;4.05130;-7.86511;,
 -96.72932;4.05130;-7.86511;,
 96.72932;6.05374;-7.86511;,
 -96.72932;6.05374;-7.86511;,
 96.72932;6.05374;-12.18065;,
 -96.72932;6.05374;-12.18065;,
 96.72932;8.04853;-12.18065;,
 -96.72932;8.04853;-12.18065;,
 96.72932;8.04853;-16.49620;,
 -96.72932;8.04853;-16.49620;,
 96.72932;10.05203;-16.49620;,
 -96.72932;10.05203;-16.49620;,
 96.72932;10.05203;-20.81176;,
 -96.72932;10.05203;-20.81176;,
 96.72932;12.05990;-20.81176;,
 -96.72932;12.05990;-20.81176;,
 96.72932;12.07729;-25.04386;,
 -96.72932;12.05990;-25.12733;,
 -96.72932;12.05990;-25.12733;,
 96.72932;12.07729;-25.04386;,
 96.72932;14.10729;-25.04386;,
 -96.72932;14.10729;-25.04386;,
 -96.72932;14.10729;-25.04386;,
 96.72932;14.10729;-25.04386;,
 96.72932;14.10729;-29.35941;,
 -96.72932;14.10729;-29.35941;,
 96.72932;16.10815;-29.35941;,
 -96.72932;16.10815;-29.35941;,
 96.72932;16.10815;-33.67496;,
 -96.72932;16.10815;-33.67496;,
 96.72932;18.11059;-33.67496;,
 -96.72932;18.11059;-33.67496;,
 96.72932;18.11059;-37.99051;,
 -96.72932;18.11059;-37.99051;,
 96.72932;20.10538;-37.99051;,
 -96.72932;20.10538;-37.99051;,
 96.72932;20.10538;-42.30606;,
 -96.72932;20.10538;-42.30606;,
 96.72932;22.10888;-42.30606;,
 -96.72932;22.10888;-42.30606;,
 96.72932;22.10888;-46.62162;,
 -96.72932;22.10888;-46.62162;,
 96.72932;24.11675;-46.62162;,
 -96.72932;24.11675;-46.62162;,
 97.02822;-0.71678;-104.94357;,
 -96.43043;-0.71678;-104.94357;;
 
 74;
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
 3;55,54,56;,
 3;55,56,57;,
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
 3;57,56,54;,
 3;57,54,55;,
 3;58,59,1;,
 3;58,1,3;;
 
 MeshMaterialList {
  1;
  74;
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
  14;
  0.000000;-0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-0.000000;1.000000;,
  -0.000045;0.999998;0.002055;,
  -0.000090;1.000000;0.000000;,
  0.000000;-0.040735;0.999170;,
  -0.000216;-0.020372;0.999792;,
  0.000000;-0.017446;-0.999848;,
  0.000000;0.999992;0.004109;,
  -0.000431;0.000000;1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000214;0.020372;-0.999792;,
  0.000427;0.040735;-0.999170;;
  74;
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
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,2,0;,
  3;0,0,2;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;3,8,3;,
  3;3,3,4;,
  3;6,9,6;,
  3;6,6,5;,
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
  3;0,2,0;,
  3;0,0,2;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,11,10;,
  3;10,10,11;,
  3;10,10,10;,
  3;10,10,10;,
  3;12,10,12;,
  3;12,12,13;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,10,10;,
  3;10,11,10;,
  3;10,10,11;,
  3;10,10,10;,
  3;10,10,10;,
  3;7,7,7;,
  3;7,7,7;;
 }
 MeshTextureCoords {
  60;
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
  1.000000;0.444440;,
  0.000000;0.444440;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}