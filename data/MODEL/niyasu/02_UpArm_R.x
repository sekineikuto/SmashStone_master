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
 221;
 -1.45795;-4.75699;1.42171;,
 -1.77207;-5.28865;1.60018;,
 -1.74528;-5.13823;0.24597;,
 -0.72204;-3.78330;0.92102;,
 -1.45795;-4.75699;1.42171;,
 -0.89559;-3.84026;-0.47852;,
 -1.57308;-3.61628;-1.25386;,
 -2.25126;-5.02615;-0.41827;,
 -2.91345;-4.75766;-0.42881;,
 -2.60811;-3.21708;-0.95487;,
 -0.89559;-3.84026;-0.47852;,
 -1.74528;-5.13823;0.24597;,
 -2.25126;-5.02615;-0.41827;,
 -1.57308;-3.61628;-1.25386;,
 -1.33425;-3.32685;2.03780;,
 -1.94627;-4.28501;2.00273;,
 -1.45795;-4.75699;1.42171;,
 -0.72204;-3.78330;0.92102;,
 0.48858;-1.86589;0.03894;,
 0.33703;-1.16419;1.40584;,
 -0.02224;-1.54416;1.44271;,
 0.24947;-1.96630;-0.10547;,
 0.12564;0.14089;-1.89416;,
 0.33703;-1.16419;-1.32797;,
 0.08515;-1.51750;-1.32994;,
 -0.40529;-0.68754;-1.83715;,
 0.33703;-1.16419;-1.32797;,
 0.48858;-1.86589;0.03894;,
 0.24947;-1.96630;-0.10547;,
 0.08515;-1.51750;-1.32994;,
 0.24947;-1.96630;-0.10547;,
 0.11476;-2.56682;0.58469;,
 -0.09835;-2.54986;-0.81664;,
 0.11476;-2.56682;0.58469;,
 -0.72204;-3.78330;0.92102;,
 -0.89559;-3.84026;-0.47852;,
 -0.09835;-2.54986;-0.81664;,
 -0.40529;-0.68754;-1.83715;,
 -0.83757;-1.97969;-1.57021;,
 -1.94935;-1.05308;-1.23102;,
 -1.38918;0.72706;-1.32994;,
 -0.83757;-1.97969;-1.57021;,
 -1.57308;-3.61628;-1.25386;,
 -2.60811;-3.21708;-0.95487;,
 -1.94935;-1.05308;-1.23102;,
 0.08515;-1.51750;-1.32994;,
 -0.09835;-2.54986;-0.81664;,
 -0.83757;-1.97969;-1.57021;,
 -0.09835;-2.54986;-0.81664;,
 -0.89559;-3.84026;-0.47852;,
 -1.57308;-3.61628;-1.25386;,
 -0.83757;-1.97969;-1.57021;,
 -0.02224;-1.54416;1.44271;,
 -0.50589;-1.75629;1.73444;,
 0.11476;-2.56682;0.58469;,
 -0.50589;-1.75629;1.73444;,
 -1.33425;-3.32685;2.03780;,
 -0.72204;-3.78330;0.92102;,
 0.11476;-2.56682;0.58469;,
 -2.63592;-5.27297;1.00883;,
 -2.39287;-5.21209;2.09857;,
 -3.13197;-4.59795;2.09835;,
 -1.74528;-5.13823;0.24597;,
 -2.25126;-5.02615;-0.41827;,
 -2.91345;-4.75766;-0.42881;,
 -3.48331;-4.39969;0.12339;,
 -2.91345;-4.75766;-0.42881;,
 -3.13197;-4.59795;2.09835;,
 -1.81054;-5.09446;1.07469;,
 -1.81054;-5.09446;1.07469;,
 -3.48331;-4.39969;0.12339;,
 -1.68904;-5.85954;1.64614;,
 -4.60415;-4.93984;1.87341;,
 -4.31214;-4.27692;1.24870;,
 -1.81054;-5.09446;1.07469;,
 -2.65040;-3.33486;2.10300;,
 -2.83527;-2.71820;1.51678;,
 -0.86981;-7.08742;2.52525;,
 -3.68706;-6.05793;2.72492;,
 0.06713;-5.75375;-2.68374;,
 0.22262;-3.77973;-2.67051;,
 -2.43864;-2.61219;-0.49049;,
 -2.59299;-4.60263;-0.50608;,
 1.30119;-9.09758;-3.34245;,
 -0.94214;-5.36592;-2.76246;,
 1.56070;-6.48741;-3.39128;,
 2.21687;-4.93518;-3.83753;,
 3.42882;-3.53153;-3.81344;,
 1.30786;-0.05181;-2.84967;,
 0.86707;-1.23927;-2.90052;,
 1.56070;-6.48741;-3.39128;,
 2.21687;-4.93518;-3.83753;,
 0.86707;-1.23927;-2.90052;,
 0.22262;-3.77973;-2.67051;,
 -0.47072;-4.62217;2.25174;,
 0.74781;-7.74809;2.16830;,
 0.08033;-3.10743;2.69270;,
 0.62731;-6.91881;2.37190;,
 2.49057;-4.14776;2.15511;,
 1.91431;-4.56563;2.05376;,
 1.27350;-0.28468;2.40089;,
 1.62642;-0.63712;2.40552;,
 0.65978;-1.10690;2.42830;,
 -1.89489;-0.97637;1.85545;,
 -1.22360;-0.19723;1.86819;,
 1.37731;-5.17806;2.00510;,
 0.65978;-1.10690;2.42830;,
 0.08033;-3.10743;2.69270;,
 -2.65040;-3.33486;2.10300;,
 -1.89489;-0.97637;1.85545;,
 1.37731;-5.17806;2.00510;,
 0.62731;-6.91881;2.37190;,
 -5.04010;-1.98433;-0.01242;,
 -6.18137;-3.70576;0.18336;,
 -6.13644;-3.61711;1.32416;,
 -5.17449;-1.94755;1.55924;,
 -4.61879;1.86371;0.85856;,
 -4.70730;0.69956;-0.02306;,
 -4.48490;0.72619;1.52709;,
 -4.18094;2.06501;2.14843;,
 -4.70730;0.69956;-0.02306;,
 -5.04010;-1.98433;-0.01242;,
 -5.17449;-1.94755;1.55924;,
 -4.48490;0.72619;1.52709;,
 -4.23219;-2.23255;-0.67442;,
 -5.04622;-3.87541;-0.60683;,
 -3.89100;1.96208;0.01936;,
 -4.09027;1.00230;-0.65042;,
 -4.09027;1.00230;-0.65042;,
 -4.23219;-2.23255;-0.67442;,
 -3.59052;-2.02207;-1.92115;,
 -4.01404;-4.42981;-1.89243;,
 -0.95420;-2.84139;-3.03500;,
 -1.06675;-5.35618;-3.05474;,
 -2.39866;2.12082;-1.36932;,
 -2.79064;1.09011;-2.00271;,
 -2.79064;1.09011;-2.00271;,
 -3.59052;-2.02207;-1.92115;,
 -0.32286;-0.08694;-3.23399;,
 -0.95420;-2.84139;-3.03500;,
 -5.42410;-4.65404;1.81684;,
 -4.83076;-3.08149;2.37632;,
 -4.06378;1.11329;2.86535;,
 -0.19466;2.66944;1.76942;,
 -1.00279;2.75915;1.21847;,
 -4.45871;-0.19579;2.41702;,
 -4.83076;-3.08149;2.37632;,
 -4.45871;-0.19579;2.41702;,
 -3.18990;-6.25177;2.85810;,
 -3.58670;-3.43728;3.17046;,
 -0.92325;-7.11828;2.82875;,
 -1.56827;-3.64166;3.12750;,
 -2.96332;0.08828;3.54526;,
 0.03848;2.07382;2.59110;,
 -0.07244;-0.77173;2.84819;,
 0.66211;0.35234;2.90565;,
 -3.18616;-0.58814;3.18681;,
 -0.74823;-1.29219;2.87787;,
 -3.58670;-3.43728;3.17046;,
 -3.18616;-0.58814;3.18681;,
 -1.56827;-3.64166;3.12750;,
 -0.74823;-1.29219;2.87787;,
 1.42708;-6.47885;-3.67975;,
 1.16768;-9.08940;-3.63098;,
 3.31077;-3.48399;-4.10489;,
 2.09165;-4.90563;-4.12751;,
 -0.32286;-0.08694;-3.23399;,
 0.19157;1.12946;-2.74754;,
 2.09165;-4.90563;-4.12751;,
 1.42708;-6.47885;-3.67975;,
 0.56531;-6.89500;2.67099;,
 0.62331;-7.78174;2.45900;,
 2.42256;-4.12369;2.46485;,
 1.86018;-4.53645;2.36543;,
 0.66994;0.39533;2.60389;,
 1.35743;-5.12028;2.31563;,
 1.35743;-5.12028;2.31563;,
 0.56531;-6.89500;2.67099;,
 -7.30978;-5.97647;0.37798;,
 -7.29122;-5.79255;1.03399;,
 -7.05511;-6.04750;0.48469;,
 -7.00063;-5.86886;0.95120;,
 -6.11493;-5.67169;-0.62919;,
 -5.91252;-5.70562;-0.38668;,
 -4.58876;-6.45953;-1.97861;,
 -4.43742;-6.46687;-1.70966;,
 -2.14254;-8.34463;-2.53441;,
 -2.01792;-8.35438;-2.24214;,
 -3.85726;-4.44622;-1.62039;,
 -7.05291;-6.49303;1.28853;,
 -6.78088;-6.43982;1.21064;,
 -4.85680;-9.30112;2.65221;,
 -4.88247;-9.06581;2.40856;,
 -1.41154;-10.57074;2.74426;,
 -1.35808;-10.53986;2.44076;,
 1.36379;-12.03988;-2.22635;,
 1.49729;-12.04805;-1.93781;,
 2.04439;-10.63455;2.35893;,
 2.16889;-10.60091;2.06822;,
 -6.78088;-6.43982;1.21064;,
 -4.60415;-4.93984;1.87341;,
 -3.68706;-6.05793;2.72492;,
 -4.88247;-9.06581;2.40856;,
 2.41475;-1.94509;2.96537;,
 1.04982;-2.14974;3.23478;,
 0.46704;-0.94767;3.41208;,
 1.89087;-0.59435;3.21893;,
 2.94733;-6.69819;-4.43852;,
 2.89190;-9.03268;-4.42748;,
 3.02541;-9.04086;-4.13896;,
 3.08094;-6.70676;-4.15005;,
 4.08509;-4.52053;-4.89959;,
 3.33050;-5.61925;-4.85846;,
 4.20314;-4.56807;-4.60814;,
 3.45574;-5.64880;-4.56848;,
 3.33050;-5.61925;-4.85846;,
 2.94733;-6.69819;-4.43852;,
 3.08094;-6.70676;-4.15005;,
 3.45574;-5.64880;-4.56848;,
 4.21985;-12.55546;-2.54496;,
 4.35337;-12.56362;-2.25642;;
 
 119;
 3;0,1,2;,
 4;3,4,2,5;,
 4;6,7,8,9;,
 4;10,11,12,13;,
 4;14,15,16,17;,
 4;18,19,20,21;,
 4;22,23,24,25;,
 4;26,27,28,29;,
 4;30,31,32,29;,
 4;33,34,35,36;,
 4;37,38,39,40;,
 4;41,42,43,44;,
 4;45,46,47,25;,
 4;48,49,50,51;,
 4;52,53,54,21;,
 4;55,56,57,58;,
 3;59,60,61;,
 3;59,62,1;,
 3;59,63,11;,
 3;59,64,7;,
 3;59,65,66;,
 3;59,67,68;,
 3;59,69,70;,
 4;71,72,73,74;,
 4;75,71,74,76;,
 4;77,78,72,71;,
 4;79,80,81,82;,
 4;83,79,82,84;,
 4;83,85,80,79;,
 4;86,87,88,89;,
 4;90,91,92,93;,
 4;94,95,77,71;,
 4;96,94,71,75;,
 4;97,95,94,96;,
 4;98,99,100,101;,
 4;100,102,103,104;,
 4;99,105,102,100;,
 4;106,107,108,109;,
 4;110,111,107,106;,
 4;112,113,114,115;,
 4;116,117,118,119;,
 4;120,121,122,123;,
 4;124,125,113,112;,
 4;126,127,117,116;,
 4;128,129,121,120;,
 4;130,131,125,124;,
 4;131,130,132,133;,
 4;134,135,127,126;,
 4;136,137,129,128;,
 4;137,136,138,139;,
 4;140,141,115,114;,
 4;142,143,144,119;,
 4;145,142,119,118;,
 4;146,147,123,122;,
 4;148,149,141,140;,
 4;149,148,150,151;,
 4;152,153,143,142;,
 4;153,152,154,155;,
 4;156,152,142,145;,
 4;152,156,157,154;,
 4;158,159,147,146;,
 4;159,158,160,161;,
 4;162,163,133,132;,
 4;164,165,166,167;,
 4;168,169,139,138;,
 4;170,171,95,97;,
 4;171,170,151,150;,
 4;172,173,99,98;,
 4;155,172,98,174;,
 4;173,172,155,154;,
 4;173,175,105,99;,
 4;175,173,154,157;,
 4;176,177,111,110;,
 4;177,176,161,160;,
 4;178,179,114,113;,
 4;179,178,180,181;,
 4;182,178,113,125;,
 4;178,182,183,180;,
 4;184,182,125,131;,
 4;182,184,185,183;,
 4;186,184,131,133;,
 4;185,187,84,188;,
 4;184,186,187,185;,
 4;179,189,140,114;,
 4;189,179,181,190;,
 4;189,191,148,140;,
 4;191,189,190,192;,
 4;191,193,150,148;,
 4;194,192,78,77;,
 4;193,191,192,194;,
 4;195,186,133,163;,
 4;187,196,83,84;,
 4;186,195,196,187;,
 4;193,197,171,150;,
 4;198,194,77,95;,
 4;197,198,95,171;,
 4;197,193,194,198;,
 4;199,200,201,202;,
 4;203,204,205,206;,
 4;167,166,135,134;,
 4;144,126,116,119;,
 3;144,134,126;,
 4;134,144,143,167;,
 4;143,153,164,167;,
 3;153,98,164;,
 4;207,208,163,162;,
 4;209,210,85,83;,
 4;208,207,210,209;,
 4;211,212,165,164;,
 4;213,211,164,87;,
 4;214,213,87,86;,
 4;212,211,213,214;,
 4;215,216,169,168;,
 4;217,218,91,90;,
 4;216,215,218,217;,
 4;219,220,196,195;,
 4;208,219,195,163;,
 4;220,209,83,196;,
 4;220,219,208,209;;
 
 MeshMaterialList {
  14;
  119;
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.512000;0.512000;0.512000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.605600;0.009600;0.000000;1.000000;;
   17.000000;
   0.130000;0.130000;0.130000;;
   0.068130;0.001080;0.000000;;
  }
  Material {
   0.179200;0.439200;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.040800;0.040800;0.040800;1.000000;;
   7.000000;
   0.110000;0.110000;0.110000;;
   0.002550;0.002550;0.002550;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.596000;0.160000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.248000;0.097600;0.044000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.084800;0.279200;0.460800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.432800;0.295200;0.021600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.668000;0.555200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.659200;0.000000;1.000000;;
   28.000000;
   0.150000;0.150000;0.150000;;
   0.180000;0.148320;0.000000;;
  }
  Material {
   0.501600;0.501600;0.501600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.238400;0.200800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.019200;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  165;
  -0.628403;-0.756200;0.182402;,
  0.514490;-0.853313;-0.084604;,
  -0.331641;-0.937337;-0.106837;,
  0.141983;-0.417966;-0.897299;,
  0.712157;-0.591225;-0.378529;,
  0.820568;-0.488151;0.297281;,
  -0.286308;-0.193911;-0.938310;,
  0.709020;-0.328962;0.623758;,
  0.924083;0.345173;0.164088;,
  -0.131188;0.814878;-0.564592;,
  -0.627470;-0.763549;-0.152557;,
  -0.462751;-0.742788;-0.483868;,
  -0.026919;-0.833127;-0.552427;,
  0.505995;-0.836775;-0.209230;,
  0.830125;-0.517449;0.207698;,
  0.666956;-0.342702;0.661607;,
  0.704259;-0.567061;0.427155;,
  0.819434;-0.568969;0.069290;,
  0.653913;-0.447587;-0.609971;,
  0.162161;-0.251051;-0.954294;,
  -0.364525;-0.004293;-0.931184;,
  0.401465;-0.299398;-0.865556;,
  0.569533;-0.496876;-0.654788;,
  0.621073;-0.783714;-0.007838;,
  0.471506;-0.806616;0.356445;,
  0.730645;-0.467982;-0.497142;,
  -0.334299;-0.021644;-0.942218;,
  0.805077;-0.288934;0.518042;,
  0.078212;-0.247879;-0.965629;,
  0.898061;-0.392474;0.198622;,
  -0.249806;-0.604043;-0.756788;,
  0.618447;-0.054033;0.783967;,
  0.128059;-0.202188;0.970938;,
  0.297442;-0.031837;0.954209;,
  -0.041494;-0.339967;-0.939521;,
  0.203533;-0.172063;-0.963830;,
  0.208644;-0.175622;-0.962094;,
  -0.031258;-0.543490;-0.838833;,
  -0.068753;-0.202449;-0.976876;,
  0.926305;0.355401;0.125099;,
  0.059986;-0.304392;-0.950656;,
  0.514278;-0.031449;0.857047;,
  0.520574;-0.043117;0.852727;,
  0.208254;-0.152057;0.966183;,
  0.360167;-0.081357;0.929333;,
  0.465093;0.010129;0.885204;,
  -0.324795;-0.720985;0.612119;,
  0.302839;-0.226025;0.925851;,
  0.410152;-0.092002;0.907365;,
  0.129984;0.072597;-0.988855;,
  0.310364;0.101745;-0.945157;,
  0.079649;0.001638;-0.996822;,
  0.106866;0.096439;-0.989585;,
  -0.029321;-0.067966;-0.997257;,
  0.035986;0.123682;-0.991669;,
  0.194185;0.028966;-0.980537;,
  0.016052;0.088823;-0.995918;,
  -0.270070;0.046769;-0.961704;,
  -0.852573;0.286725;-0.436931;,
  -0.913194;0.273775;0.301867;,
  -0.821621;0.359454;0.442415;,
  -0.787339;0.418850;-0.452397;,
  -0.966343;0.083407;0.243363;,
  -0.074627;0.996489;0.037953;,
  -0.936910;0.207458;-0.281356;,
  -0.964274;0.133672;0.228710;,
  -0.717045;0.163928;-0.677477;,
  -0.641400;0.270161;-0.718066;,
  -0.723706;0.307534;-0.617796;,
  -0.342730;0.014937;-0.939315;,
  -0.317576;-0.039201;-0.947422;,
  0.002668;0.617354;-0.786681;,
  -0.257438;0.193390;-0.946745;,
  -0.619394;0.111955;-0.777057;,
  -0.540592;0.155445;-0.826800;,
  -0.224685;0.827617;-0.514360;,
  -0.544257;0.325469;-0.773210;,
  -0.674815;0.060286;0.735520;,
  -0.511516;0.061731;0.857053;,
  -0.082696;0.710320;0.699004;,
  -0.788087;0.060710;0.612563;,
  0.122039;-0.046766;0.991423;,
  0.064975;-0.075299;0.995042;,
  0.080199;-0.129303;0.988357;,
  0.082738;-0.043968;0.995601;,
  0.131222;-0.093202;0.986962;,
  -0.254799;-0.036928;0.966289;,
  -0.243206;-0.040631;0.969123;,
  -0.126157;0.059038;0.990252;,
  0.036383;0.368532;0.928903;,
  -0.252684;-0.106261;0.961696;,
  -0.387522;-0.027252;-0.921458;,
  -0.334101;-0.174619;-0.926221;,
  -0.209487;0.268449;-0.940240;,
  -0.330567;0.100884;-0.938375;,
  0.954618;-0.173725;0.241917;,
  0.908452;0.216170;0.357750;,
  0.651653;-0.736749;0.180414;,
  0.558984;-0.809560;0.179299;,
  0.837037;-0.517281;0.178297;,
  -0.249929;-0.914840;0.317181;,
  -0.127414;-0.991845;0.002858;,
  -0.171120;-0.981991;-0.080068;,
  0.328591;0.104241;0.938702;,
  -0.451804;-0.867843;0.206690;,
  -0.045903;-0.441110;-0.896278;,
  -0.077919;0.043054;-0.996030;,
  -0.058968;-0.455620;-0.888219;,
  0.318896;0.357311;0.877858;,
  -0.150443;0.017013;-0.988472;,
  -0.890028;0.453223;-0.049394;,
  -0.803156;0.405019;-0.436921;,
  -0.601032;0.293010;-0.743576;,
  -0.330448;-0.104314;-0.938042;,
  -0.470482;0.167388;-0.866388;,
  -0.417160;0.123583;0.900391;,
  0.069697;-0.028735;0.997154;,
  -0.205208;0.034675;0.978104;,
  -0.318914;-0.357318;-0.877849;,
  0.565951;0.218359;0.794997;,
  -0.946642;0.279070;-0.161210;,
  -0.479642;0.805190;-0.348731;,
  -0.179563;0.087110;-0.979882;,
  0.470845;0.040231;0.881298;,
  0.368546;0.235430;0.899303;,
  0.716671;0.673677;-0.180396;,
  0.459180;-0.102429;0.882418;,
  -0.470328;-0.038541;-0.881650;,
  -0.368544;-0.235428;-0.899305;,
  -0.394096;0.294633;-0.870563;,
  -0.459221;0.103200;-0.882307;,
  -0.171826;-0.983772;0.051668;,
  -0.191851;0.600732;0.776089;,
  0.379218;0.169464;0.909657;,
  0.212139;0.026576;-0.976878;,
  -0.159150;0.938228;0.307246;,
  -0.827037;-0.004045;0.562132;,
  0.143627;-0.080175;0.986379;,
  0.205717;-0.055310;0.977047;,
  0.924463;0.353970;0.141680;,
  0.032685;-0.108782;0.993528;,
  -0.007086;-0.118824;0.992890;,
  0.179095;-0.032749;0.983287;,
  -0.634802;-0.722598;0.273641;,
  -0.453502;0.138320;0.880456;,
  -0.289953;-0.520318;-0.803241;,
  -0.256095;-0.442908;-0.859213;,
  -0.330260;-0.736069;-0.590873;,
  -0.182597;-0.944176;-0.274207;,
  -0.465842;-0.865666;0.183341;,
  0.825988;0.397429;0.399742;,
  -0.030443;-0.992648;-0.117150;,
  -0.232133;0.969418;-0.079639;,
  0.595317;0.782240;-0.183568;,
  0.896511;0.438343;0.064213;,
  0.850322;0.525951;-0.018085;,
  0.855523;0.516844;-0.030879;,
  0.906983;0.047756;-0.418451;,
  0.878157;-0.237342;-0.415343;,
  0.392566;-0.296367;0.870665;,
  0.781847;-0.487354;-0.388846;,
  0.752924;-0.533190;-0.385763;,
  -0.279408;-0.470613;-0.836931;,
  0.279408;0.470618;0.836929;,
  0.902392;0.118819;-0.414210;;
  119;
  3;14,1,13;,
  4;5,14,13,4;,
  4;3,12,11,6;,
  4;4,13,12,3;,
  4;7,15,14,5;,
  4;23,24,16,17;,
  4;21,22,18,19;,
  4;22,23,17,18;,
  4;17,29,25,18;,
  4;29,5,4,25;,
  4;19,28,26,20;,
  4;28,3,6,26;,
  4;18,25,28,19;,
  4;25,4,3,28;,
  4;16,27,29,17;,
  4;27,7,5,29;,
  3;2,0,0;,
  3;2,13,1;,
  3;2,12,13;,
  3;2,11,12;,
  3;2,10,11;,
  3;9,9,9;,
  3;132,132,132;,
  4;34,37,30,30;,
  4;8,8,8,8;,
  4;38,40,37,34;,
  4;42,41,31,31;,
  4;46,46,46,32;,
  4;133,45,41,42;,
  4;48,47,43,44;,
  4;45,48,44,41;,
  4;50,55,38,34;,
  4;49,50,34,134;,
  4;54,55,50,49;,
  4;52,56,51,52;,
  4;51,53,36,35;,
  4;56,57,53,51;,
  4;53,49,134,36;,
  4;57,54,49,53;,
  4;58,61,60,59;,
  4;120,64,65,62;,
  4;64,58,59,65;,
  4;66,67,61,58;,
  4;121,68,64,120;,
  4;68,66,58,64;,
  4;73,74,67,66;,
  4;74,73,69,70;,
  4;75,76,68,121;,
  4;76,73,66,68;,
  4;73,76,72,69;,
  4;78,77,59,60;,
  4;79,79,63,135;,
  4;80,136,62,65;,
  4;77,80,65,59;,
  4;87,86,77,78;,
  4;86,87,82,81;,
  4;88,89,79,79;,
  4;89,88,83,84;,
  4;90,88,136,80;,
  4;88,90,85,83;,
  4;86,90,80,77;,
  4;90,86,81,85;,
  4;91,92,70,69;,
  4;93,94,72,71;,
  4;94,91,69,72;,
  4;95,96,96,95;,
  4;137,138,81,82;,
  4;98,97,97,98;,
  4;39,39,139,39;,
  4;140,141,84,83;,
  4;97,99,99,97;,
  4;142,140,83,85;,
  4;99,95,95,99;,
  4;138,142,85,81;,
  4;111,110,60,61;,
  4;100,101,101,100;,
  4;112,111,61,67;,
  4;101,102,102,101;,
  4;114,112,67,74;,
  4;102,104,104,102;,
  4;113,114,74,70;,
  4;33,103,32,33;,
  4;104,143,143,104;,
  4;144,115,78,60;,
  4;145,146,146,105;,
  4;115,117,87,78;,
  4;147,145,105,107;,
  4;117,116,82,87;,
  4;106,107,40,38;,
  4;148,147,107,148;,
  4;118,113,70,92;,
  4;103,108,133,32;,
  4;143,149,149,143;,
  4;116,119,137,82;,
  4;109,106,38,55;,
  4;119,150,96,96;,
  4;151,148,148,151;,
  4;105,37,40,107;,
  4;122,122,122,122;,
  4;71,72,76,75;,
  4;63,121,152,135;,
  3;63,75,121;,
  4;75,63,153,71;,
  4;153,154,155,156;,
  3;154,139,155;,
  4;127,128,92,91;,
  4;124,123,45,133;,
  4;157,158,158,157;,
  4;129,130,94,93;,
  4;125,125,155,125;,
  4;126,159,47,48;,
  4;160,161,161,160;,
  4;130,127,91,94;,
  4;123,126,48,45;,
  4;158,160,160,158;,
  4;131,131,149,149;,
  4;128,162,118,92;,
  4;163,124,133,108;,
  4;164,164,157,157;;
 }
 MeshTextureCoords {
  221;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
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
  1.000000;0.000000;,
  1.000000;1.000000;,
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
  0.500000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
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
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;;
 }
}