// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9379,x:32312,y:33685,varname:node_9379,prsc:2|normal-5523-RGB,emission-162-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5611,x:31168,y:33702,ptovrint:False,ptlb:PosterizeSteps,ptin:_PosterizeSteps,varname:node_5611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:6870,x:31764,y:33890,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_6870,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:6203,x:31491,y:33365,ptovrint:False,ptlb:ShadowMinValue,ptin:_ShadowMinValue,varname:node_6203,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_LightAttenuation,id:5110,x:30500,y:33882,varname:node_5110,prsc:2;n:type:ShaderForge.SFN_LightVector,id:1535,x:29784,y:33577,varname:node_1535,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9033,x:29784,y:33431,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:5237,x:30033,y:33525,varname:node_5237,prsc:2,dt:0|A-9033-OUT,B-1535-OUT;n:type:ShaderForge.SFN_Add,id:3817,x:30175,y:33766,varname:node_3817,prsc:2|A-5237-OUT,B-4630-RGB;n:type:ShaderForge.SFN_AmbientLight,id:4630,x:30500,y:34017,varname:node_4630,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6394,x:30500,y:33759,varname:node_6394,prsc:2|A-1436-OUT,B-5110-OUT;n:type:ShaderForge.SFN_LightColor,id:8566,x:31764,y:33583,varname:node_8566,prsc:2;n:type:ShaderForge.SFN_Posterize,id:6553,x:31168,y:33768,varname:node_6553,prsc:2|IN-801-OUT,STPS-5611-OUT;n:type:ShaderForge.SFN_Multiply,id:7663,x:31764,y:33731,varname:node_7663,prsc:2|A-8566-RGB,B-131-OUT,C-6870-RGB;n:type:ShaderForge.SFN_Desaturate,id:1436,x:30332,y:33759,varname:node_1436,prsc:2|COL-3817-OUT;n:type:ShaderForge.SFN_Add,id:9073,x:31337,y:33768,varname:node_9073,prsc:2|A-6553-OUT,B-4630-RGB;n:type:ShaderForge.SFN_Vector1,id:4545,x:30408,y:33668,varname:node_4545,prsc:2,v1:0;n:type:ShaderForge.SFN_Max,id:131,x:31521,y:33748,varname:node_131,prsc:2|A-6203-OUT,B-9073-OUT;n:type:ShaderForge.SFN_Fresnel,id:1119,x:31009,y:34255,varname:node_1119,prsc:2|EXP-2552-OUT;n:type:ShaderForge.SFN_Step,id:5026,x:31261,y:34251,varname:node_5026,prsc:2|A-1119-OUT,B-6980-OUT;n:type:ShaderForge.SFN_Vector1,id:6980,x:31009,y:34402,varname:node_6980,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:4809,x:31009,y:34456,varname:node_4809,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Vector1,id:9502,x:31009,y:34510,varname:node_9502,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Step,id:363,x:31261,y:34368,varname:node_363,prsc:2|A-1119-OUT,B-4809-OUT;n:type:ShaderForge.SFN_Step,id:3094,x:31261,y:34487,varname:node_3094,prsc:2|A-1119-OUT,B-4763-OUT;n:type:ShaderForge.SFN_Vector1,id:2552,x:30832,y:34274,varname:node_2552,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3858,x:30718,y:33765,varname:node_3858,prsc:2|A-6394-OUT,B-3094-OUT;n:type:ShaderForge.SFN_Tex2d,id:5523,x:31948,y:33487,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_5523,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:162,x:31948,y:33731,varname:node_162,prsc:2|A-7663-OUT,B-5171-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5171,x:31948,y:33890,ptovrint:False,ptlb:LightnessMultiply,ptin:_LightnessMultiply,varname:node_5171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Slider,id:4763,x:30942,y:34598,ptovrint:False,ptlb:FresnelWidth,ptin:_FresnelWidth,varname:node_4763,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Add,id:801,x:30959,y:33748,varname:node_801,prsc:2|A-2611-OUT,B-3858-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9057,x:30931,y:33401,ptovrint:False,ptlb:posterizeBias,ptin:_posterizeBias,varname:node_9057,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:2611,x:30931,y:33451,varname:node_2611,prsc:2|A-9057-OUT,B-2302-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2551,x:30174,y:33094,varname:node_2551,prsc:2;n:type:ShaderForge.SFN_Append,id:1311,x:30356,y:33108,varname:node_1311,prsc:2|A-2551-X,B-2551-Z;n:type:ShaderForge.SFN_Divide,id:4979,x:30632,y:33100,varname:node_4979,prsc:2|A-1311-OUT,B-5238-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5238,x:30620,y:33048,ptovrint:False,ptlb:RandomScale,ptin:_RandomScale,varname:node_5238,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Floor,id:6339,x:30632,y:33226,varname:node_6339,prsc:2|IN-4979-OUT;n:type:ShaderForge.SFN_Noise,id:2302,x:30931,y:33186,varname:node_2302,prsc:2|XY-6339-OUT;proporder:6870-5523-5611-6203-4763-5171-9057-5238;pass:END;sub:END;*/

Shader "Unlit/s_CelShading" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normal ("Normal", 2D) = "white" {}
        _PosterizeSteps ("PosterizeSteps", Float ) = 2
        _ShadowMinValue ("ShadowMinValue", Float ) = 0
        _FresnelWidth ("FresnelWidth", Range(0, 1)) = 0.5
        _LightnessMultiply ("LightnessMultiply", Float ) = 1
        _posterizeBias ("posterizeBias", Float ) = 0
        _RandomScale ("RandomScale", Float ) = 10
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
            uniform float _posterizeBias;
            uniform float _RandomScale;
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
////// Emissive:
                float2 node_6339 = floor((float2(i.posWorld.r,i.posWorld.b)/_RandomScale));
                float2 node_2302_skew = node_6339 + 0.2127+node_6339.x*0.3713*node_6339.y;
                float2 node_2302_rnd = 4.789*sin(489.123*(node_2302_skew));
                float node_2302 = frac(node_2302_rnd.x*node_2302_rnd.y*(1+node_2302_skew.x));
                float node_1119 = pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 emissive = ((_LightColor0.rgb*max(_ShadowMinValue,(floor(((_posterizeBias*node_2302)+((dot((dot(i.normalDir,lightDirection)+UNITY_LIGHTMODEL_AMBIENT.rgb),float3(0.3,0.59,0.11))*attenuation)*step(node_1119,_FresnelWidth))) * _PosterizeSteps) / (_PosterizeSteps - 1)+UNITY_LIGHTMODEL_AMBIENT.rgb))*_Diffuse_var.rgb)*_LightnessMultiply);
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
            uniform float _posterizeBias;
            uniform float _RandomScale;
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
