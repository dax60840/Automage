// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:33209,y:32712,varname:node_9361,prsc:2|emission-897-OUT,alpha-8820-A,voffset-4986-OUT;n:type:ShaderForge.SFN_Tex2d,id:8820,x:31199,y:32371,ptovrint:False,ptlb:T1,ptin:_T1,varname:node_8820,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:80ccbb4c777044b4785e941a7c0f9358,ntxv:0,isnm:False|UVIN-9319-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3210,x:30507,y:32283,varname:node_3210,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:9319,x:30956,y:32371,varname:node_9319,prsc:2,spu:0.3,spv:1|UVIN-8853-OUT,DIST-7005-OUT;n:type:ShaderForge.SFN_Slider,id:7005,x:30400,y:32776,ptovrint:False,ptlb:node_7005,ptin:_node_7005,varname:node_7005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8230513,max:1;n:type:ShaderForge.SFN_Multiply,id:8853,x:30779,y:32313,varname:node_8853,prsc:2|A-3210-UVOUT,B-7407-OUT;n:type:ShaderForge.SFN_Vector2,id:7407,x:30507,y:32428,varname:node_7407,prsc:2,v1:0.25,v2:1;n:type:ShaderForge.SFN_Tex2d,id:8475,x:31203,y:32100,ptovrint:False,ptlb:T2,ptin:_T2,varname:node_8475,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9286227ef2eb368459fd9e756852df82,ntxv:0,isnm:False|UVIN-5741-UVOUT;n:type:ShaderForge.SFN_Color,id:4641,x:31203,y:31930,ptovrint:False,ptlb:node_4641,ptin:_node_4641,varname:node_4641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6009,x:31524,y:32133,varname:node_6009,prsc:2|A-4641-RGB,B-8475-RGB;n:type:ShaderForge.SFN_NormalVector,id:7891,x:31265,y:32603,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:4986,x:31692,y:32584,varname:node_4986,prsc:2|A-8475-RGB,B-7891-OUT,C-743-OUT;n:type:ShaderForge.SFN_Vector1,id:743,x:31533,y:32688,varname:node_743,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:897,x:31745,y:32272,varname:node_897,prsc:2|A-6009-OUT,B-8139-OUT;n:type:ShaderForge.SFN_ComponentMask,id:564,x:30870,y:31701,varname:node_564,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3210-V;n:type:ShaderForge.SFN_Slider,id:3892,x:30383,y:31562,ptovrint:False,ptlb:node_3892,ptin:_node_3892,varname:node_3892,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.558311,max:1;n:type:ShaderForge.SFN_Multiply,id:8139,x:31737,y:32007,varname:node_8139,prsc:2|A-2872-OUT,B-8820-RGB;n:type:ShaderForge.SFN_Panner,id:5741,x:31005,y:32107,varname:node_5741,prsc:2,spu:0,spv:1|UVIN-8853-OUT,DIST-7005-OUT;n:type:ShaderForge.SFN_RemapRange,id:7127,x:30870,y:31535,varname:node_7127,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3892-OUT;n:type:ShaderForge.SFN_Add,id:2872,x:31337,y:31638,varname:node_2872,prsc:2|A-7127-OUT,B-564-OUT;n:type:ShaderForge.SFN_Tex2d,id:6827,x:32115,y:32954,ptovrint:False,ptlb:node_6827,ptin:_node_6827,varname:node_6827,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;proporder:8820-7005-8475-4641-3892;pass:END;sub:END;*/

Shader "Shader Forge/ruban" {
    Properties {
        _T1 ("T1", 2D) = "white" {}
        _node_7005 ("node_7005", Range(0, 1)) = 0.8230513
        _T2 ("T2", 2D) = "white" {}
        _node_4641 ("node_4641", Color) = (0,1,1,1)
        _node_3892 ("node_3892", Range(0, 1)) = 0.558311
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
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
            uniform sampler2D _T1; uniform float4 _T1_ST;
            uniform float _node_7005;
            uniform sampler2D _T2; uniform float4 _T2_ST;
            uniform float4 _node_4641;
            uniform float _node_3892;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_8853 = (o.uv0*float2(0.25,1));
                float2 node_5741 = (node_8853+_node_7005*float2(0,1));
                float4 _T2_var = tex2Dlod(_T2,float4(TRANSFORM_TEX(node_5741, _T2),0.0,0));
                v.vertex.xyz += (_T2_var.rgb*v.normal*0.1);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float2 node_8853 = (i.uv0*float2(0.25,1));
                float2 node_5741 = (node_8853+_node_7005*float2(0,1));
                float4 _T2_var = tex2D(_T2,TRANSFORM_TEX(node_5741, _T2));
                float2 node_9319 = (node_8853+_node_7005*float2(0.3,1));
                float4 _T1_var = tex2D(_T1,TRANSFORM_TEX(node_9319, _T1));
                float3 emissive = ((_node_4641.rgb*_T2_var.rgb)+(((_node_3892*2.0+-1.0)+i.uv0.g.r)*_T1_var.rgb));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,_T1_var.a);
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
            uniform float _node_7005;
            uniform sampler2D _T2; uniform float4 _T2_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_8853 = (o.uv0*float2(0.25,1));
                float2 node_5741 = (node_8853+_node_7005*float2(0,1));
                float4 _T2_var = tex2Dlod(_T2,float4(TRANSFORM_TEX(node_5741, _T2),0.0,0));
                v.vertex.xyz += (_T2_var.rgb*v.normal*0.1);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
