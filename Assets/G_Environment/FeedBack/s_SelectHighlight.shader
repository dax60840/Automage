// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:7099,x:32816,y:32710,varname:node_7099,prsc:2|emission-7247-OUT,voffset-3754-OUT;n:type:ShaderForge.SFN_Color,id:9832,x:31462,y:32666,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_9832,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2741133,c2:0.8430378,c3:0.9558824,c4:1;n:type:ShaderForge.SFN_Multiply,id:1081,x:31696,y:32753,varname:node_1081,prsc:2|A-9832-RGB,B-8647-OUT;n:type:ShaderForge.SFN_Slider,id:8647,x:31180,y:32857,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_8647,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_NormalVector,id:1680,x:31708,y:33284,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:3754,x:32063,y:33330,varname:node_3754,prsc:2|A-1680-OUT,B-5290-OUT,C-7807-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5290,x:31708,y:33461,ptovrint:False,ptlb:NormalOffset,ptin:_NormalOffset,varname:node_5290,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Fresnel,id:833,x:31316,y:32958,varname:node_833,prsc:2|EXP-8139-OUT;n:type:ShaderForge.SFN_Vector1,id:8139,x:31142,y:32992,varname:node_8139,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:1453,x:31532,y:32969,varname:node_1453,prsc:2|IN-833-OUT;n:type:ShaderForge.SFN_Time,id:4270,x:31686,y:33592,varname:node_4270,prsc:2;n:type:ShaderForge.SFN_Sin,id:6333,x:31868,y:33605,varname:node_6333,prsc:2|IN-4270-TTR;n:type:ShaderForge.SFN_Abs,id:5876,x:32054,y:33584,varname:node_5876,prsc:2|IN-6333-OUT;n:type:ShaderForge.SFN_Sin,id:8330,x:31881,y:33746,varname:node_8330,prsc:2|IN-4270-T;n:type:ShaderForge.SFN_Abs,id:476,x:32054,y:33746,varname:node_476,prsc:2|IN-8330-OUT;n:type:ShaderForge.SFN_Multiply,id:7807,x:32235,y:33634,varname:node_7807,prsc:2|A-5876-OUT,B-476-OUT;n:type:ShaderForge.SFN_Add,id:3401,x:32049,y:32760,varname:node_3401,prsc:2|A-9832-RGB,B-4061-OUT;n:type:ShaderForge.SFN_Multiply,id:7247,x:32495,y:32767,varname:node_7247,prsc:2|A-3401-OUT,B-833-OUT,C-8647-OUT;n:type:ShaderForge.SFN_Multiply,id:4061,x:32610,y:33646,varname:node_4061,prsc:2|A-1119-OUT,B-7807-OUT;n:type:ShaderForge.SFN_Vector1,id:1119,x:32610,y:33585,varname:node_1119,prsc:2,v1:0.5;proporder:9832-8647-5290;pass:END;sub:END;*/

Shader "Unlit/s_SelectHighLight" {
    Properties {
        _Color ("Color", Color) = (0.2741133,0.8430378,0.9558824,1)
        _Opacity ("Opacity", Range(0, 1)) = 1
        _NormalOffset ("NormalOffset", Float ) = 0.1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _Opacity;
            uniform float _NormalOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4270 = _Time + _TimeEditor;
                float node_7807 = (abs(sin(node_4270.a))*abs(sin(node_4270.g)));
                v.vertex.xyz += (v.normal*_NormalOffset*node_7807);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_4270 = _Time + _TimeEditor;
                float node_7807 = (abs(sin(node_4270.a))*abs(sin(node_4270.g)));
                float node_833 = pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0);
                float3 emissive = ((_Color.rgb+(0.5*node_7807))*node_833*_Opacity);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            uniform float4 _TimeEditor;
            uniform float _NormalOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4270 = _Time + _TimeEditor;
                float node_7807 = (abs(sin(node_4270.a))*abs(sin(node_4270.g)));
                v.vertex.xyz += (v.normal*_NormalOffset*node_7807);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
