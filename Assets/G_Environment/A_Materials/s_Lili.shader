// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9379,x:32312,y:33685,varname:node_9379,prsc:2|normal-5523-RGB,emission-162-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5611,x:31168,y:33702,ptovrint:False,ptlb:PosterizeSteps,ptin:_PosterizeSteps,varname:node_5611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:6870,x:31203,y:33451,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_6870,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:6203,x:31491,y:33365,ptovrint:False,ptlb:ShadowMinValue,ptin:_ShadowMinValue,varname:node_6203,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_LightAttenuation,id:5110,x:30500,y:33882,varname:node_5110,prsc:2;n:type:ShaderForge.SFN_LightVector,id:1535,x:29784,y:33577,varname:node_1535,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9033,x:29784,y:33431,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:5237,x:30033,y:33525,varname:node_5237,prsc:2,dt:0|A-9033-OUT,B-1535-OUT;n:type:ShaderForge.SFN_Add,id:3817,x:30175,y:33766,varname:node_3817,prsc:2|A-5237-OUT,B-4630-RGB;n:type:ShaderForge.SFN_AmbientLight,id:4630,x:30500,y:34017,varname:node_4630,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6394,x:30500,y:33759,varname:node_6394,prsc:2|A-1436-OUT,B-5110-OUT;n:type:ShaderForge.SFN_LightColor,id:8566,x:31764,y:33583,varname:node_8566,prsc:2;n:type:ShaderForge.SFN_Posterize,id:6553,x:31168,y:33768,varname:node_6553,prsc:2|IN-801-OUT,STPS-5611-OUT;n:type:ShaderForge.SFN_Multiply,id:7663,x:31764,y:33731,varname:node_7663,prsc:2|A-8566-RGB,B-131-OUT,C-6870-RGB;n:type:ShaderForge.SFN_Desaturate,id:1436,x:30332,y:33759,varname:node_1436,prsc:2|COL-3817-OUT;n:type:ShaderForge.SFN_Add,id:9073,x:31337,y:33768,varname:node_9073,prsc:2|A-6553-OUT,B-4630-RGB;n:type:ShaderForge.SFN_Vector1,id:4545,x:30408,y:33668,varname:node_4545,prsc:2,v1:0;n:type:ShaderForge.SFN_Max,id:131,x:31521,y:33748,varname:node_131,prsc:2|A-6203-OUT,B-9073-OUT;n:type:ShaderForge.SFN_Fresnel,id:1119,x:31009,y:34255,varname:node_1119,prsc:2|EXP-2552-OUT;n:type:ShaderForge.SFN_Step,id:5026,x:31261,y:34251,varname:node_5026,prsc:2|A-1119-OUT,B-6980-OUT;n:type:ShaderForge.SFN_Vector1,id:6980,x:31009,y:34402,varname:node_6980,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:4809,x:31009,y:34456,varname:node_4809,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Vector1,id:9502,x:31009,y:34510,varname:node_9502,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Step,id:363,x:31261,y:34368,varname:node_363,prsc:2|A-1119-OUT,B-4809-OUT;n:type:ShaderForge.SFN_Step,id:3094,x:31261,y:34487,varname:node_3094,prsc:2|A-1119-OUT,B-4763-OUT;n:type:ShaderForge.SFN_Vector1,id:2552,x:30832,y:34274,varname:node_2552,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3858,x:30718,y:33765,varname:node_3858,prsc:2|A-6394-OUT,B-3094-OUT;n:type:ShaderForge.SFN_TexCoord,id:118,x:32132,y:35832,varname:node_118,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2067,x:32334,y:35852,varname:node_2067,prsc:2|A-118-UVOUT,B-7650-OUT;n:type:ShaderForge.SFN_Append,id:7650,x:32163,y:36059,varname:node_7650,prsc:2|A-287-OUT,B-287-OUT;n:type:ShaderForge.SFN_ValueProperty,id:287,x:31869,y:35965,ptovrint:False,ptlb:Nbr Triangles,ptin:_NbrTriangles,varname:node_287,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ScreenParameters,id:2122,x:31622,y:36125,varname:node_2122,prsc:2;n:type:ShaderForge.SFN_Divide,id:9162,x:31840,y:36125,varname:node_9162,prsc:2|A-2122-PXH,B-2122-PXW;n:type:ShaderForge.SFN_Multiply,id:3374,x:31996,y:36078,varname:node_3374,prsc:2|A-287-OUT,B-9162-OUT;n:type:ShaderForge.SFN_Tex2d,id:9818,x:32539,y:35825,ptovrint:False,ptlb:node_9818,ptin:_node_9818,varname:node_9818,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b43f1dd41f92f5c4ea2548cc42ebeb36,ntxv:0,isnm:False|UVIN-2067-OUT;n:type:ShaderForge.SFN_Floor,id:7524,x:32959,y:36132,varname:node_7524,prsc:2|IN-2331-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8958,x:32583,y:36158,varname:node_8958,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2067-OUT;n:type:ShaderForge.SFN_Vector1,id:895,x:33533,y:36236,varname:node_895,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:8768,x:33523,y:36318,varname:node_8768,prsc:2;n:type:ShaderForge.SFN_Frac,id:6400,x:33750,y:36276,varname:node_6400,prsc:2|IN-8768-T;n:type:ShaderForge.SFN_Add,id:2331,x:32786,y:36132,varname:node_2331,prsc:2|A-9818-A,B-8958-OUT;n:type:ShaderForge.SFN_Divide,id:8160,x:33296,y:36099,varname:node_8160,prsc:2|A-7524-OUT,B-2531-OUT;n:type:ShaderForge.SFN_Subtract,id:8125,x:33523,y:36099,varname:node_8125,prsc:2|A-8160-OUT,B-895-OUT;n:type:ShaderForge.SFN_Add,id:3229,x:33759,y:36097,varname:node_3229,prsc:2|A-8125-OUT,B-6400-OUT;n:type:ShaderForge.SFN_Clamp01,id:1135,x:34000,y:36098,varname:node_1135,prsc:2|IN-3229-OUT;n:type:ShaderForge.SFN_Vector1,id:9501,x:32932,y:36263,varname:node_9501,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1764,x:33702,y:36480,varname:node_1764,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Lerp,id:4646,x:34048,y:35888,varname:node_4646,prsc:2|A-3667-RGB,B-5224-RGB,T-1135-OUT;n:type:ShaderForge.SFN_Tex2d,id:3667,x:33578,y:35683,ptovrint:False,ptlb:node_3667,ptin:_node_3667,varname:node_3667,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:17da6d53ec93a0444bd0f751b1d02477,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5224,x:33578,y:35851,ptovrint:False,ptlb:node_5224,ptin:_node_5224,varname:node_5224,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e08c295755c0885479ad19f518286ff2,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Add,id:2531,x:33128,y:36177,varname:node_2531,prsc:2|A-287-OUT,B-9501-OUT;n:type:ShaderForge.SFN_Tex2d,id:5523,x:31948,y:33487,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_5523,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:162,x:31948,y:33731,varname:node_162,prsc:2|A-7663-OUT,B-5171-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5171,x:31948,y:33890,ptovrint:False,ptlb:LightnessMultiply,ptin:_LightnessMultiply,varname:node_5171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Slider,id:4763,x:30942,y:34598,ptovrint:False,ptlb:FresnelWidth,ptin:_FresnelWidth,varname:node_4763,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Add,id:801,x:30959,y:33748,varname:node_801,prsc:2|A-9057-OUT,B-3858-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9057,x:30959,y:33678,ptovrint:False,ptlb:node_9057,ptin:_node_9057,varname:node_9057,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:6870-5523-5611-6203-4763-5171-287-9818-3667-5224-9057;pass:END;sub:END;*/

Shader "Unlit/s_lili" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normal ("Normal", 2D) = "white" {}
        _PosterizeSteps ("PosterizeSteps", Float ) = 2
        _ShadowMinValue ("ShadowMinValue", Float ) = 0
        _FresnelWidth ("FresnelWidth", Range(0, 1)) = 0.5
        _LightnessMultiply ("LightnessMultiply", Float ) = 1
        _NbrTriangles ("Nbr Triangles", Float ) = 10
        _node_9818 ("node_9818", 2D) = "white" {}
        _node_3667 ("node_3667", 2D) = "white" {}
        _node_5224 ("node_5224", 2D) = "bump" {}
        _node_9057 ("node_9057", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _PosterizeSteps;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _ShadowMinValue;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _LightnessMultiply;
            uniform float _FresnelWidth;
            uniform float _node_9057;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
////// Emissive:
                float node_1119 = pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 emissive = ((_LightColor0.rgb*max(_ShadowMinValue,(floor((_node_9057+((dot((dot(i.normalDir,lightDirection)+UNITY_LIGHTMODEL_AMBIENT.rgb),float3(0.3,0.59,0.11))*attenuation)*step(node_1119,_FresnelWidth))) * _PosterizeSteps) / (_PosterizeSteps - 1)+UNITY_LIGHTMODEL_AMBIENT.rgb))*_Diffuse_var.rgb)*_LightnessMultiply);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _PosterizeSteps;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _ShadowMinValue;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _LightnessMultiply;
            uniform float _FresnelWidth;
            uniform float _node_9057;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
