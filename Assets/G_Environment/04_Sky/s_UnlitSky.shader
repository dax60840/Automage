// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1738,x:33736,y:32703,varname:node_1738,prsc:2|emission-2001-OUT,clip-3045-OUT,voffset-2844-OUT;n:type:ShaderForge.SFN_Tex2d,id:405,x:32532,y:32800,ptovrint:False,ptlb:Nuage,ptin:_Nuage,varname:node_405,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7175-OUT;n:type:ShaderForge.SFN_TexCoord,id:962,x:28601,y:32810,varname:node_962,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:870,x:28898,y:32801,varname:node_870,prsc:2|A-962-UVOUT,B-5563-OUT;n:type:ShaderForge.SFN_Append,id:5563,x:28802,y:33006,varname:node_5563,prsc:2|A-7413-OUT,B-7387-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7413,x:28601,y:32992,ptovrint:False,ptlb:UScale,ptin:_UScale,varname:node_7413,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:7387,x:28525,y:33355,ptovrint:False,ptlb:VScale,ptin:_VScale,varname:node_7387,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Append,id:1613,x:30961,y:32964,varname:node_1613,prsc:2|A-6839-R,B-9574-OUT;n:type:ShaderForge.SFN_Floor,id:425,x:29843,y:33006,varname:node_425,prsc:2|IN-6839-R;n:type:ShaderForge.SFN_Noise,id:8723,x:30274,y:33006,varname:node_8723,prsc:2|XY-2083-OUT;n:type:ShaderForge.SFN_Add,id:9574,x:30463,y:33005,varname:node_9574,prsc:2|A-8723-OUT,B-6839-G;n:type:ShaderForge.SFN_ComponentMask,id:6839,x:29067,y:32992,varname:node_6839,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-870-OUT;n:type:ShaderForge.SFN_Append,id:4722,x:30019,y:33006,varname:node_4722,prsc:2|A-425-OUT,B-425-OUT;n:type:ShaderForge.SFN_Color,id:2623,x:32468,y:32580,ptovrint:False,ptlb:Color Correction,ptin:_ColorCorrection,varname:node_2623,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:2001,x:32800,y:32642,varname:node_2001,prsc:2|A-405-RGB,B-2623-RGB,T-9857-OUT;n:type:ShaderForge.SFN_Vector1,id:9857,x:32800,y:32770,varname:node_9857,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Frac,id:5242,x:31249,y:33092,varname:node_5242,prsc:2|IN-1613-OUT;n:type:ShaderForge.SFN_Frac,id:4684,x:30662,y:33151,varname:node_4684,prsc:2|IN-9574-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7265,x:31860,y:33015,varname:node_7265,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1613-OUT;n:type:ShaderForge.SFN_If,id:7381,x:32217,y:33147,varname:node_7381,prsc:2|A-7265-G,B-4348-OUT,GT-4520-OUT,EQ-7265-G,LT-7265-G;n:type:ShaderForge.SFN_If,id:9948,x:32217,y:33352,varname:node_9948,prsc:2|A-7381-OUT,B-3245-OUT,GT-7381-OUT,EQ-7381-OUT,LT-4520-OUT;n:type:ShaderForge.SFN_Vector1,id:3245,x:31884,y:33353,varname:node_3245,prsc:2,v1:1;n:type:ShaderForge.SFN_Subtract,id:4348,x:31894,y:33451,varname:node_4348,prsc:2|A-7055-OUT,B-3245-OUT;n:type:ShaderForge.SFN_Append,id:7175,x:32511,y:33006,varname:node_7175,prsc:2|A-7265-R,B-9948-OUT;n:type:ShaderForge.SFN_Multiply,id:2083,x:30149,y:33095,varname:node_2083,prsc:2|A-4722-OUT,B-2962-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2962,x:30149,y:33245,ptovrint:False,ptlb:NoiseImpact,ptin:_NoiseImpact,varname:node_2962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Frac,id:5831,x:32596,y:33170,varname:node_5831,prsc:2|IN-7175-OUT;n:type:ShaderForge.SFN_Vector1,id:4520,x:31860,y:33235,varname:node_4520,prsc:2,v1:0;n:type:ShaderForge.SFN_Step,id:1415,x:32620,y:33360,varname:node_1415,prsc:2|A-9948-OUT,B-4520-OUT;n:type:ShaderForge.SFN_Multiply,id:3045,x:32876,y:32967,varname:node_3045,prsc:2|A-405-A,B-9811-OUT;n:type:ShaderForge.SFN_OneMinus,id:9811,x:32851,y:33304,varname:node_9811,prsc:2|IN-1415-OUT;n:type:ShaderForge.SFN_Ceil,id:7055,x:28774,y:33393,varname:node_7055,prsc:2|IN-7387-OUT;n:type:ShaderForge.SFN_TexCoord,id:5471,x:33189,y:33130,varname:node_5471,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2844,x:33604,y:33202,varname:node_2844,prsc:2|A-2377-OUT,B-7628-OUT,C-1945-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2377,x:33401,y:33171,ptovrint:False,ptlb:Offset Invert,ptin:_OffsetInvert,varname:node_2377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5471-V,B-9047-OUT;n:type:ShaderForge.SFN_OneMinus,id:9047,x:33234,y:33294,varname:node_9047,prsc:2|IN-5471-V;n:type:ShaderForge.SFN_ValueProperty,id:7628,x:33234,y:33453,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_7628,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_NormalVector,id:1945,x:33234,y:33532,prsc:2,pt:False;proporder:405-7413-7387-2623-2962-2377-7628;pass:END;sub:END;*/

Shader "Unlit/s_UnlitSky" {
    Properties {
        _Nuage ("Nuage", 2D) = "white" {}
        _UScale ("UScale", Float ) = 2
        _VScale ("VScale", Float ) = 5
        _ColorCorrection ("Color Correction", Color) = (1,1,1,1)
        _NoiseImpact ("NoiseImpact", Float ) = 1
        [MaterialToggle] _OffsetInvert ("Offset Invert", Float ) = 0
        _Offset ("Offset", Float ) = 0
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Nuage; uniform float4 _Nuage_ST;
            uniform float _UScale;
            uniform float _VScale;
            uniform float4 _ColorCorrection;
            uniform float _NoiseImpact;
            uniform fixed _OffsetInvert;
            uniform float _Offset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (lerp( o.uv0.g, (1.0 - o.uv0.g), _OffsetInvert )*_Offset*v.normal);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 node_6839 = (i.uv0*float2(_UScale,_VScale)).rg;
                float node_425 = floor(node_6839.r);
                float2 node_2083 = (float2(node_425,node_425)*_NoiseImpact);
                float2 node_8723_skew = node_2083 + 0.2127+node_2083.x*0.3713*node_2083.y;
                float2 node_8723_rnd = 4.789*sin(489.123*(node_8723_skew));
                float node_8723 = frac(node_8723_rnd.x*node_8723_rnd.y*(1+node_8723_skew.x));
                float node_9574 = (node_8723+node_6839.g);
                float2 node_1613 = float2(node_6839.r,node_9574);
                float2 node_7265 = node_1613.rg;
                float node_3245 = 1.0;
                float node_7381_if_leA = step(node_7265.g,(ceil(_VScale)-node_3245));
                float node_7381_if_leB = step((ceil(_VScale)-node_3245),node_7265.g);
                float node_4520 = 0.0;
                float node_7381 = lerp((node_7381_if_leA*node_7265.g)+(node_7381_if_leB*node_4520),node_7265.g,node_7381_if_leA*node_7381_if_leB);
                float node_9948_if_leA = step(node_7381,node_3245);
                float node_9948_if_leB = step(node_3245,node_7381);
                float node_9948 = lerp((node_9948_if_leA*node_4520)+(node_9948_if_leB*node_7381),node_7381,node_9948_if_leA*node_9948_if_leB);
                float2 node_7175 = float2(node_7265.r,node_9948);
                float4 _Nuage_var = tex2D(_Nuage,TRANSFORM_TEX(node_7175, _Nuage));
                clip((_Nuage_var.a*(1.0 - step(node_9948,node_4520))) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_Nuage_var.rgb,_ColorCorrection.rgb,0.5);
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
            uniform sampler2D _Nuage; uniform float4 _Nuage_ST;
            uniform float _UScale;
            uniform float _VScale;
            uniform float _NoiseImpact;
            uniform fixed _OffsetInvert;
            uniform float _Offset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (lerp( o.uv0.g, (1.0 - o.uv0.g), _OffsetInvert )*_Offset*v.normal);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 node_6839 = (i.uv0*float2(_UScale,_VScale)).rg;
                float node_425 = floor(node_6839.r);
                float2 node_2083 = (float2(node_425,node_425)*_NoiseImpact);
                float2 node_8723_skew = node_2083 + 0.2127+node_2083.x*0.3713*node_2083.y;
                float2 node_8723_rnd = 4.789*sin(489.123*(node_8723_skew));
                float node_8723 = frac(node_8723_rnd.x*node_8723_rnd.y*(1+node_8723_skew.x));
                float node_9574 = (node_8723+node_6839.g);
                float2 node_1613 = float2(node_6839.r,node_9574);
                float2 node_7265 = node_1613.rg;
                float node_3245 = 1.0;
                float node_7381_if_leA = step(node_7265.g,(ceil(_VScale)-node_3245));
                float node_7381_if_leB = step((ceil(_VScale)-node_3245),node_7265.g);
                float node_4520 = 0.0;
                float node_7381 = lerp((node_7381_if_leA*node_7265.g)+(node_7381_if_leB*node_4520),node_7265.g,node_7381_if_leA*node_7381_if_leB);
                float node_9948_if_leA = step(node_7381,node_3245);
                float node_9948_if_leB = step(node_3245,node_7381);
                float node_9948 = lerp((node_9948_if_leA*node_4520)+(node_9948_if_leB*node_7381),node_7381,node_9948_if_leA*node_9948_if_leB);
                float2 node_7175 = float2(node_7265.r,node_9948);
                float4 _Nuage_var = tex2D(_Nuage,TRANSFORM_TEX(node_7175, _Nuage));
                clip((_Nuage_var.a*(1.0 - step(node_9948,node_4520))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
