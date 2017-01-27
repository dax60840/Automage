// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9379,x:33177,y:33748,varname:node_9379,prsc:2|emission-6251-OUT,clip-3943-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5611,x:31168,y:33702,ptovrint:False,ptlb:PosterizeSteps,ptin:_PosterizeSteps,varname:node_5611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:6870,x:31764,y:33890,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_6870,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:6203,x:31491,y:33365,ptovrint:False,ptlb:ShadowMinValue,ptin:_ShadowMinValue,varname:node_6203,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_LightAttenuation,id:5110,x:30500,y:33882,varname:node_5110,prsc:2;n:type:ShaderForge.SFN_LightVector,id:1535,x:29784,y:33577,varname:node_1535,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9033,x:29784,y:33431,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:5237,x:30033,y:33525,varname:node_5237,prsc:2,dt:0|A-9033-OUT,B-1535-OUT;n:type:ShaderForge.SFN_Add,id:3817,x:30175,y:33766,varname:node_3817,prsc:2|A-5237-OUT,B-4630-RGB;n:type:ShaderForge.SFN_AmbientLight,id:4630,x:30500,y:34017,varname:node_4630,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6394,x:30500,y:33759,varname:node_6394,prsc:2|A-1436-OUT,B-5110-OUT;n:type:ShaderForge.SFN_LightColor,id:8566,x:31764,y:33583,varname:node_8566,prsc:2;n:type:ShaderForge.SFN_Posterize,id:6553,x:31168,y:33768,varname:node_6553,prsc:2|IN-801-OUT,STPS-5611-OUT;n:type:ShaderForge.SFN_Multiply,id:7663,x:31764,y:33731,varname:node_7663,prsc:2|A-8566-RGB,B-131-OUT,C-6870-RGB;n:type:ShaderForge.SFN_Desaturate,id:1436,x:30332,y:33759,varname:node_1436,prsc:2|COL-3817-OUT;n:type:ShaderForge.SFN_Add,id:9073,x:31337,y:33768,varname:node_9073,prsc:2|A-6553-OUT,B-4630-RGB;n:type:ShaderForge.SFN_Vector1,id:4545,x:30408,y:33668,varname:node_4545,prsc:2,v1:0;n:type:ShaderForge.SFN_Max,id:131,x:31521,y:33748,varname:node_131,prsc:2|A-6203-OUT,B-9073-OUT;n:type:ShaderForge.SFN_Fresnel,id:1119,x:31009,y:34255,varname:node_1119,prsc:2|EXP-2552-OUT;n:type:ShaderForge.SFN_Step,id:5026,x:31261,y:34251,varname:node_5026,prsc:2|A-1119-OUT,B-6980-OUT;n:type:ShaderForge.SFN_Vector1,id:6980,x:31009,y:34402,varname:node_6980,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:4809,x:31009,y:34456,varname:node_4809,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Vector1,id:9502,x:31009,y:34510,varname:node_9502,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Step,id:363,x:31261,y:34368,varname:node_363,prsc:2|A-1119-OUT,B-4809-OUT;n:type:ShaderForge.SFN_Step,id:3094,x:31261,y:34487,varname:node_3094,prsc:2|A-1119-OUT,B-4763-OUT;n:type:ShaderForge.SFN_Vector1,id:2552,x:30832,y:34274,varname:node_2552,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3858,x:30718,y:33765,varname:node_3858,prsc:2|A-6394-OUT,B-3094-OUT;n:type:ShaderForge.SFN_Multiply,id:162,x:31948,y:33731,varname:node_162,prsc:2|A-7663-OUT,B-5171-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5171,x:31948,y:33890,ptovrint:False,ptlb:LightnessMultiply,ptin:_LightnessMultiply,varname:node_5171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Slider,id:4763,x:30942,y:34598,ptovrint:False,ptlb:FresnelWidth,ptin:_FresnelWidth,varname:node_4763,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Add,id:801,x:30959,y:33748,varname:node_801,prsc:2|A-2611-OUT,B-3858-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9057,x:30931,y:33401,ptovrint:False,ptlb:posterizeBias,ptin:_posterizeBias,varname:node_9057,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:2611,x:30931,y:33451,varname:node_2611,prsc:2|A-9057-OUT,B-2302-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2551,x:30174,y:33094,varname:node_2551,prsc:2;n:type:ShaderForge.SFN_Append,id:1311,x:30356,y:33108,varname:node_1311,prsc:2|A-2551-X,B-2551-Z;n:type:ShaderForge.SFN_Divide,id:4979,x:30632,y:33100,varname:node_4979,prsc:2|A-1311-OUT,B-5238-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5238,x:30620,y:33048,ptovrint:False,ptlb:RandomScale,ptin:_RandomScale,varname:node_5238,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Floor,id:6339,x:30632,y:33226,varname:node_6339,prsc:2|IN-4979-OUT;n:type:ShaderForge.SFN_Noise,id:2302,x:30931,y:33186,varname:node_2302,prsc:2|XY-6339-OUT;n:type:ShaderForge.SFN_Multiply,id:3765,x:32304,y:33717,varname:node_3765,prsc:2|A-162-OUT,B-1206-RGB;n:type:ShaderForge.SFN_Tex2d,id:7394,x:32295,y:34221,ptovrint:False,ptlb:DissolveMask,ptin:_DissolveMask,varname:node_7394,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e80c3c84ea861404d8a427db8b7abf04,ntxv:0,isnm:False|UVIN-8554-OUT;n:type:ShaderForge.SFN_VertexColor,id:1206,x:32304,y:33885,varname:node_1206,prsc:2;n:type:ShaderForge.SFN_Add,id:7142,x:32495,y:34221,varname:node_7142,prsc:2|A-7394-R,B-6162-OUT;n:type:ShaderForge.SFN_Vector1,id:6162,x:32495,y:34344,varname:node_6162,prsc:2,v1:1;n:type:ShaderForge.SFN_Subtract,id:3943,x:32694,y:34221,varname:node_3943,prsc:2|A-7142-OUT,B-7825-OUT;n:type:ShaderForge.SFN_Multiply,id:7825,x:32551,y:34053,varname:node_7825,prsc:2|A-3281-OUT,B-3894-OUT;n:type:ShaderForge.SFN_Vector1,id:3281,x:32551,y:33992,varname:node_3281,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:3894,x:32587,y:33843,varname:node_3894,prsc:2|IN-1206-A;n:type:ShaderForge.SFN_TexCoord,id:8191,x:31931,y:34205,varname:node_8191,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:8554,x:32133,y:34205,varname:node_8554,prsc:2|A-8191-UVOUT,B-6537-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6537,x:32133,y:34365,ptovrint:False,ptlb:DissolveScale,ptin:_DissolveScale,varname:node_6537,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:6251,x:32587,y:33691,varname:node_6251,prsc:2|A-2470-RGB,B-3765-OUT;n:type:ShaderForge.SFN_Color,id:2470,x:32587,y:33527,ptovrint:False,ptlb:CycleColor,ptin:_CycleColor,varname:node_2470,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:6870-5611-6203-4763-5171-9057-5238-7394-6537;pass:END;sub:END;*/

Shader "Unlit/s_CelShadingCutoutDarkMagic" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _PosterizeSteps ("PosterizeSteps", Float ) = 2
        _ShadowMinValue ("ShadowMinValue", Float ) = 0
        _FresnelWidth ("FresnelWidth", Range(0, 1)) = 0.5
        _LightnessMultiply ("LightnessMultiply", Float ) = 1
        _posterizeBias ("posterizeBias", Float ) = 0
        _RandomScale ("RandomScale", Float ) = 10
        _DissolveMask ("DissolveMask", 2D) = "white" {}
        _DissolveScale ("DissolveScale", Float ) = 0.2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
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
            uniform float _LightnessMultiply;
            uniform float _FresnelWidth;
            uniform float _posterizeBias;
            uniform float _RandomScale;
            uniform sampler2D _DissolveMask; uniform float4 _DissolveMask_ST;
            uniform float _DissolveScale;
            uniform float4 _CycleColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 node_8554 = (i.uv0*_DissolveScale);
                float4 _DissolveMask_var = tex2D(_DissolveMask,TRANSFORM_TEX(node_8554, _DissolveMask));
                clip(((_DissolveMask_var.r+1.0)-(2.0*(1.0 - i.vertexColor.a))) - 0.5);
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
                float3 emissive = (_CycleColor.rgb*(((_LightColor0.rgb*max(_ShadowMinValue,(floor(((_posterizeBias*node_2302)+((dot((dot(i.normalDir,lightDirection)+UNITY_LIGHTMODEL_AMBIENT.rgb),float3(0.3,0.59,0.11))*attenuation)*step(node_1119,_FresnelWidth))) * _PosterizeSteps) / (_PosterizeSteps - 1)+UNITY_LIGHTMODEL_AMBIENT.rgb))*_Diffuse_var.rgb)*_LightnessMultiply)*i.vertexColor.rgb));
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
            Cull Off
            
            
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
            uniform float _LightnessMultiply;
            uniform float _FresnelWidth;
            uniform float _posterizeBias;
            uniform float _RandomScale;
            uniform sampler2D _DissolveMask; uniform float4 _DissolveMask_ST;
            uniform float _DissolveScale;
            uniform float4 _CycleColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 node_8554 = (i.uv0*_DissolveScale);
                float4 _DissolveMask_var = tex2D(_DissolveMask,TRANSFORM_TEX(node_8554, _DissolveMask));
                clip(((_DissolveMask_var.r+1.0)-(2.0*(1.0 - i.vertexColor.a))) - 0.5);
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
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _DissolveMask; uniform float4 _DissolveMask_ST;
            uniform float _DissolveScale;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 node_8554 = (i.uv0*_DissolveScale);
                float4 _DissolveMask_var = tex2D(_DissolveMask,TRANSFORM_TEX(node_8554, _DissolveMask));
                clip(((_DissolveMask_var.r+1.0)-(2.0*(1.0 - i.vertexColor.a))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
