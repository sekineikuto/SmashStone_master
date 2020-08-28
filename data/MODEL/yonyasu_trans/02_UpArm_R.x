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
 153;
 -1.05016;-6.15617;1.26856;,
 -1.17541;-6.73320;1.32754;,
 -1.08966;-6.62767;0.29960;,
 -2.15463;-5.99961;1.66928;,
 -2.58804;-6.42003;0.97506;,
 -2.22237;-6.59731;1.65003;,
 -1.49418;-5.83664;1.64076;,
 -1.64118;-6.91282;1.69826;,
 -1.17541;-6.73320;1.32754;,
 -1.05016;-6.15617;1.26856;,
 -2.22237;-6.59731;1.65003;,
 -1.64118;-6.91282;1.69826;,
 -1.49418;-5.83664;1.64076;,
 -0.73474;-4.91883;0.84981;,
 -1.05016;-6.15617;1.26856;,
 -0.85907;-4.88409;-0.15779;,
 -1.30810;-5.17711;-0.50104;,
 -1.50845;-6.69610;-0.24179;,
 -2.09047;-6.67001;-0.25039;,
 -2.16339;-5.08784;-0.16347;,
 -0.85907;-4.88409;-0.15779;,
 -1.08966;-6.62767;0.29960;,
 -1.50845;-6.69610;-0.24179;,
 -1.30810;-5.17711;-0.50104;,
 -1.31808;-4.94347;1.54342;,
 -1.49418;-5.83664;1.64076;,
 -1.05016;-6.15617;1.26856;,
 -0.73474;-4.91883;0.84981;,
 -2.16339;-5.08784;-0.16347;,
 -2.09047;-6.67001;-0.25039;,
 -2.62673;-6.52711;0.19969;,
 -2.68606;-4.91518;0.42057;,
 -2.68606;-4.91518;0.42057;,
 -2.62673;-6.52711;0.19969;,
 -2.58804;-6.42003;0.97506;,
 -2.48156;-4.69733;1.32171;,
 -2.08818;-4.65140;1.70169;,
 -2.15463;-5.99961;1.66928;,
 -1.49418;-5.83664;1.64076;,
 -1.31808;-4.94347;1.54342;,
 -2.48156;-4.69733;1.32171;,
 -2.15463;-5.99961;1.66928;,
 -2.08818;-4.65140;1.70169;,
 -0.99421;-0.74792;1.58422;,
 -1.49628;1.01598;0.87687;,
 -1.95348;-1.31832;1.39978;,
 -1.58879;-1.83534;1.68842;,
 -0.62866;-1.69969;1.04341;,
 -0.99421;-0.74792;1.58422;,
 -1.58879;-1.83534;1.68842;,
 -0.82263;-2.58815;1.16746;,
 -1.49628;1.01598;0.87687;,
 -1.19531;1.56523;0.26252;,
 -1.86440;0.96760;0.29880;,
 -1.95348;-1.31832;1.39978;,
 -1.19531;1.56523;0.26252;,
 -1.15150;1.25589;-0.49885;,
 -1.83266;0.29939;-0.31464;,
 -1.86440;0.96760;0.29880;,
 -0.31618;-1.94771;0.34514;,
 -0.62866;-1.69969;1.04341;,
 -0.82263;-2.58815;1.16746;,
 -0.39446;-2.79070;0.32955;,
 -0.69630;-0.82861;-0.85138;,
 -0.40904;-1.50898;-0.58508;,
 -0.52856;-2.45722;-0.50461;,
 -1.20966;-1.95650;-0.76807;,
 -1.15150;1.25589;-0.49885;,
 -0.69630;-0.82861;-0.85138;,
 -1.20966;-1.95650;-0.76807;,
 -1.83266;0.29939;-0.31464;,
 -0.40904;-1.50898;-0.58508;,
 -0.31618;-1.94771;0.34514;,
 -0.39446;-2.79070;0.32955;,
 -0.52856;-2.45722;-0.50461;,
 -0.39446;-2.79070;0.32955;,
 -0.48712;-3.52734;0.55288;,
 -0.72801;-3.38527;-0.45395;,
 -0.48712;-3.52734;0.55288;,
 -0.73474;-4.91883;0.84981;,
 -0.85907;-4.88409;-0.15779;,
 -0.72801;-3.38527;-0.45395;,
 -1.20966;-1.95650;-0.76807;,
 -1.15230;-3.17766;-0.67665;,
 -2.20054;-2.81341;-0.29288;,
 -1.15230;-3.17766;-0.67665;,
 -1.30810;-5.17711;-0.50104;,
 -2.16339;-5.08784;-0.16347;,
 -2.20054;-2.81341;-0.29288;,
 -0.52856;-2.45722;-0.50461;,
 -0.72801;-3.38527;-0.45395;,
 -1.15230;-3.17766;-0.67665;,
 -0.72801;-3.38527;-0.45395;,
 -0.85907;-4.88409;-0.15779;,
 -1.30810;-5.17711;-0.50104;,
 -1.15230;-3.17766;-0.67665;,
 -0.82263;-2.58815;1.16746;,
 -0.98768;-3.17915;1.25824;,
 -0.48712;-3.52734;0.55288;,
 -0.98768;-3.17915;1.25824;,
 -1.31808;-4.94347;1.54342;,
 -0.73474;-4.91883;0.84981;,
 -0.48712;-3.52734;0.55288;,
 -1.83266;0.29939;-0.31464;,
 -2.20054;-2.81341;-0.29288;,
 -2.64382;-2.17697;0.60925;,
 -2.20054;-2.81341;-0.29288;,
 -2.16339;-5.08784;-0.16347;,
 -2.68606;-4.91518;0.42057;,
 -2.64382;-2.17697;0.60925;,
 -1.86440;0.96760;0.29880;,
 -2.64382;-2.17697;0.60925;,
 -2.39302;-2.39530;1.25130;,
 -2.64382;-2.17697;0.60925;,
 -2.68606;-4.91518;0.42057;,
 -2.48156;-4.69733;1.32171;,
 -2.39302;-2.39530;1.25130;,
 -1.58879;-1.83534;1.68842;,
 -1.75172;-2.65899;1.66497;,
 -0.98768;-3.17915;1.25824;,
 -1.75172;-2.65899;1.66497;,
 -2.08818;-4.65140;1.70169;,
 -1.31808;-4.94347;1.54342;,
 -0.98768;-3.17915;1.25824;,
 -1.95348;-1.31832;1.39978;,
 -2.39302;-2.39530;1.25130;,
 -1.75172;-2.65899;1.66497;,
 -2.39302;-2.39530;1.25130;,
 -2.48156;-4.69733;1.32171;,
 -2.08818;-4.65140;1.70169;,
 -1.75172;-2.65899;1.66497;,
 -1.73425;-7.06321;0.92138;,
 -1.64118;-6.91282;1.69826;,
 -1.17541;-6.73320;1.32754;,
 -1.08966;-6.62767;0.29960;,
 -1.50845;-6.69610;-0.24179;,
 -2.09047;-6.67001;-0.25039;,
 -2.62673;-6.52711;0.19969;,
 -2.22237;-6.59731;1.65003;,
 -2.58804;-6.42003;0.97506;,
 0.10827;1.22406;-1.02110;,
 0.01374;1.80644;0.08783;,
 0.07208;-0.27245;-1.48012;,
 0.10827;1.22406;-1.02110;,
 0.09471;1.28794;1.07648;,
 0.07101;1.67182;0.08783;,
 0.12939;-0.28588;1.65559;,
 0.07208;-0.27245;-1.48012;,
 -0.08248;-1.42932;-1.01206;,
 0.03255;-1.35436;1.19639;,
 0.12939;-0.28588;1.65559;,
 -0.14414;-1.94629;-0.10948;,
 0.03255;-1.35436;1.19639;;
 
 55;
 3;0,1,2;,
 3;3,4,5;,
 4;6,7,8,9;,
 4;3,10,11,12;,
 4;13,14,2,15;,
 4;16,17,18,19;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,29,30,31;,
 4;32,33,34,35;,
 4;36,37,38,39;,
 4;40,4,41,42;,
 4;43,44,45,46;,
 4;47,48,49,50;,
 4;51,52,53,54;,
 4;55,56,57,58;,
 4;59,60,61,62;,
 4;63,64,65,66;,
 4;67,68,69,70;,
 4;71,72,73,74;,
 4;75,76,77,74;,
 4;78,79,80,81;,
 4;82,83,84,70;,
 4;85,86,87,88;,
 4;89,90,91,66;,
 4;92,93,94,95;,
 4;96,97,98,62;,
 4;99,100,101,102;,
 4;103,104,105,58;,
 4;106,107,108,109;,
 4;110,111,112,54;,
 4;113,114,115,116;,
 4;117,118,119,50;,
 4;120,121,122,123;,
 4;124,125,126,46;,
 4;127,128,129,130;,
 3;131,132,10;,
 3;131,133,7;,
 3;131,134,1;,
 3;131,135,21;,
 3;131,136,17;,
 3;131,137,29;,
 3;131,138,4;,
 3;131,139,33;,
 4;140,56,55,141;,
 4;142,68,67,143;,
 4;51,144,145,52;,
 4;43,146,144,44;,
 4;64,68,147,148;,
 4;149,150,48,47;,
 4;59,151,152,47;,
 4;151,59,64,148;,
 4;152,151,148,142;,
 4;142,144,146,149;,
 4;142,140,141,144;;
 
 MeshMaterialList {
  19;
  55;
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  7,
  2,
  7,
  2,
  7,
  2,
  7,
  2,
  7,
  2,
  7,
  2,
  7,
  2,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   0.800000;0.053600;0.000000;1.000000;;
   29.000000;
   0.310000;0.310000;0.310000;;
   0.230000;0.015410;0.000000;;
  }
  Material {
   0.800000;0.091200;0.615200;0.700000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.592800;0.470400;0.257600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.160000;0.160000;0.160000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.222400;0.664800;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.172800;0.624000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.636800;0.000000;1.000000;;
   24.000000;
   0.200000;0.200000;0.200000;;
   0.170000;0.135320;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.184800;0.078400;0.024800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.084800;0.780000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.213600;0.213600;0.213600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.062400;0.775200;0.800000;0.320000;;
   29.000000;
   0.250000;0.250000;0.250000;;
   0.016380;0.203490;0.210000;;
  }
  Material {
   0.552000;0.398400;0.078400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.012800;0.012800;0.012800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.341600;0.448800;0.800000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.304000;0.235200;0.213600;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  68;
  -0.867037;0.082439;0.491376;,
  0.332292;-0.020444;0.942955;,
  0.760938;-0.589490;0.271063;,
  -0.103170;-0.994455;-0.020398;,
  0.001789;-0.103010;-0.994679;,
  0.871168;-0.202933;-0.447084;,
  0.945603;-0.109692;0.306271;,
  -0.541521;-0.022950;-0.840374;,
  -0.970023;0.011242;-0.242752;,
  0.516744;0.001978;0.856137;,
  -0.260428;0.032260;0.964954;,
  -0.874536;0.018410;0.484610;,
  -0.869071;-0.352643;0.346928;,
  -0.944005;0.014206;-0.329625;,
  -0.455272;-0.015530;-0.890217;,
  -0.182610;-0.068966;-0.980764;,
  0.821947;-0.536739;-0.190565;,
  0.899621;-0.125458;0.418262;,
  0.387070;-0.007533;0.922020;,
  -0.821780;0.030493;0.568988;,
  0.053251;0.051773;0.997238;,
  0.717174;-0.088048;0.691309;,
  0.980415;-0.128898;0.148899;,
  0.600260;-0.174240;-0.780595;,
  -0.027074;-0.053613;-0.998195;,
  -0.653825;0.217069;-0.724840;,
  -0.904721;0.425530;0.020129;,
  -0.649998;0.301929;0.697382;,
  -0.377663;0.539950;0.752213;,
  -0.529976;0.847746;0.021251;,
  -0.493379;0.468835;-0.732647;,
  -0.310158;-0.092281;-0.946196;,
  -0.323846;-0.511319;-0.796038;,
  0.891833;-0.384649;0.238073;,
  0.570415;-0.413360;0.709761;,
  0.035992;0.009856;0.999304;,
  -0.990480;0.123308;-0.061198;,
  0.781132;-0.172843;-0.599965;,
  -0.669939;0.020481;-0.742134;,
  -0.092939;0.042361;0.994770;,
  0.639236;-0.029099;0.768460;,
  0.037533;-0.091373;-0.995109;,
  0.973444;-0.124399;0.192177;,
  -0.774249;0.122642;0.620885;,
  -0.203367;0.882446;-0.424183;,
  -0.506694;0.140474;-0.850605;,
  -0.160854;0.637358;0.753592;,
  -0.119549;0.866496;0.484657;,
  -0.181805;0.327570;0.927170;,
  -0.572367;-0.392244;-0.720098;,
  -0.584314;-0.585005;-0.562447;,
  0.077469;-0.440749;0.894281;,
  0.825439;-0.538465;0.169429;,
  0.069358;0.014475;0.997487;,
  0.001199;0.011038;0.999938;,
  0.423836;-0.794169;-0.435498;,
  0.740040;-0.236145;-0.629743;,
  0.977776;-0.112123;-0.177149;,
  -0.022872;-0.981002;0.192645;,
  -0.538252;-0.825961;0.167549;,
  -0.219769;-0.943069;-0.249647;,
  -0.501570;-0.864833;-0.022164;,
  -0.559945;-0.741405;-0.369837;,
  0.983944;-0.172610;-0.045391;,
  0.998695;-0.047050;-0.019883;,
  0.999846;0.016104;-0.006988;,
  0.999268;-0.033541;-0.018407;,
  0.997829;0.065708;0.004449;;
  55;
  3;17,2,16;,
  3;19,12,0;,
  4;18,1,2,17;,
  4;53,54,1,18;,
  4;6,17,16,5;,
  4;4,15,14,7;,
  4;5,16,55,56;,
  4;9,18,17,6;,
  4;7,14,13,8;,
  4;8,13,12,11;,
  4;10,53,18,9;,
  4;11,12,19,10;,
  4;35,28,27,20;,
  4;34,35,20,21;,
  4;28,29,26,27;,
  4;29,30,25,26;,
  4;33,34,21,22;,
  4;31,32,23,24;,
  4;30,31,24,25;,
  4;57,33,22,57;,
  4;22,42,37,23;,
  4;42,6,5,37;,
  4;24,41,38,25;,
  4;41,4,7,38;,
  4;23,37,41,24;,
  4;37,5,4,41;,
  4;21,40,42,22;,
  4;40,9,6,42;,
  4;25,38,36,26;,
  4;38,7,8,36;,
  4;26,36,43,27;,
  4;36,8,11,43;,
  4;20,39,40,21;,
  4;39,10,9,40;,
  4;27,43,39,20;,
  4;43,11,10,39;,
  3;3,58,59;,
  3;3,2,58;,
  3;3,16,2;,
  3;3,55,16;,
  3;3,60,55;,
  3;3,61,60;,
  3;3,59,12;,
  3;3,12,61;,
  4;44,30,29,44;,
  4;45,31,30,45;,
  4;28,46,47,29;,
  4;35,48,46,28;,
  4;32,31,49,50;,
  4;51,51,35,34;,
  4;33,52,52,34;,
  4;62,62,32,50;,
  4;52,52,63,64;,
  4;64,65,66,66;,
  4;64,67,67,65;;
 }
 MeshTextureCoords {
  153;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.500000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}