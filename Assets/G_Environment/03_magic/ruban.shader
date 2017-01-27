// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:33209,y:32712,varname:node_9361,prsc:2|emission-1829-OUT,voffset-4986-OUT;n:type:ShaderForge.SFN_TexCoord,id:3210,x:30617,y:31665,varname:node_3210,prsc:2,uv:0;n:type:ShaderForge.SFN_Color,id:4641,x:31247,y:31798,ptovrint:False,ptlb:MagicColor,ptin:_MagicColor,varname:node_4641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2196079,c2:0.2196079,c3:0.2196079,c4:1;n:type:ShaderForge.SFN_Multiply,id:6009,x:31550,y:32047,varname:node_6009,prsc:2|A-4641-RGB,B-9109-R;n:type:ShaderForge.SFN_NormalVector,id:7891,x:31326,y:32959,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:4986,x:31753,y:32940,varname:node_4986,prsc:2|A-9109-R,B-7891-OUT,C-743-OUT;n:type:ShaderForge.SFN_Vector1,id:743,x:31594,y:33044,varname:node_743,prsc:2,v1:0.1;n:type:ShaderForge.SFN_ComponentMask,id:564,x:30870,y:31701,varname:node_564,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3210-V;n:type:ShaderForge.SFN_Slider,id:3892,x:30383,y:31562,ptovrint:False,ptlb:Wut is diz?,ptin:_Wutisdiz,varname:node_3892,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8737125,max:1;n:type:ShaderForge.SFN_Multiply,id:8139,x:31804,y:31839,varname:node_8139,prsc:2|A-2872-OUT,B-382-OUT;n:type:ShaderForge.SFN_RemapRange,id:7127,x:30870,y:31535,varname:node_7127,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3892-OUT;n:type:ShaderForge.SFN_Add,id:2872,x:31460,y:31567,varname:node_2872,prsc:2|A-7127-OUT,B-564-OUT;n:type:ShaderForge.SFN_Tex2d,id:9109,x:30984,y:32383,varname:node_9109,prsc:2,tex:def5cc435ed178643991ce2be247b83f,ntxv:0,isnm:False|UVIN-6730-OUT,TEX-6722-TEX;n:type:ShaderForge.SFN_TexCoord,id:260,x:30244,y:32370,varname:node_260,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:6730,x:30597,y:32383,varname:node_6730,prsc:2|A-260-U,B-1942-OUT;n:type:ShaderForge.SFN_Slider,id:2226,x:30349,y:32592,ptovrint:False,ptlb:Avancement,ptin:_Avancement,varname:node_2226,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.6,cur:-0.6,max:0.6;n:type:ShaderForge.SFN_Subtract,id:1942,x:30427,y:32424,varname:node_1942,prsc:2|A-260-V,B-2226-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6722,x:30597,y:32213,ptovrint:False,ptlb:Masks,ptin:_Masks,varname:node_6722,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:def5cc435ed178643991ce2be247b83f,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3279,x:30984,y:32193,varname:node_3279,prsc:2,tex:def5cc435ed178643991ce2be247b83f,ntxv:0,isnm:False|UVIN-635-OUT,TEX-6722-TEX;n:type:ShaderForge.SFN_Add,id:382,x:31550,y:32180,varname:node_382,prsc:2|A-3971-G,B-3279-B;n:type:ShaderForge.SFN_Multiply,id:7727,x:31561,y:32376,varname:node_7727,prsc:2|A-9109-R,B-382-OUT;n:type:ShaderForge.SFN_Clamp01,id:9636,x:31980,y:32372,varname:node_9636,prsc:2|IN-7727-OUT;n:type:ShaderForge.SFN_Multiply,id:1829,x:32309,y:32362,varname:node_1829,prsc:2|A-6009-OUT,B-9636-OUT,C-8139-OUT;n:type:ShaderForge.SFN_Add,id:127,x:32456,y:32242,varname:node_127,prsc:2|A-9558-OUT,B-1829-OUT;n:type:ShaderForge.SFN_Step,id:9558,x:32257,y:32170,varname:node_9558,prsc:2|A-5110-OUT,B-9636-OUT;n:type:ShaderForge.SFN_Vector1,id:5110,x:32267,y:32088,varname:node_5110,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Tex2d,id:3971,x:30984,y:32053,varname:node_3971,prsc:2,tex:def5cc435ed178643991ce2be247b83f,ntxv:0,isnm:False|UVIN-635-OUT,TEX-6722-TEX;n:type:ShaderForge.SFN_TexCoord,id:7364,x:30095,y:32025,varname:node_7364,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:2409,x:30511,y:32036,varname:node_2409,prsc:2|A-7364-U,B-9343-OUT;n:type:ShaderForge.SFN_Multiply,id:9343,x:30332,y:32061,varname:node_9343,prsc:2|A-7364-V,B-867-OUT;n:type:ShaderForge.SFN_Vector1,id:867,x:30158,y:32161,varname:node_867,prsc:2,v1:5;n:type:ShaderForge.SFN_Frac,id:635,x:30684,y:32036,varname:node_635,prsc:2|IN-2409-OUT;proporder:6722-2226-4641-3892;pass:END;sub:END;*/

Shader "Shader Forge/ruban" {
    Properties {
        _Masks ("Masks", 2D) = "black" {}
        _Avancement ("Avancement", Range(-0.6, 0.6)) = -0.6
        _MagicColor ("MagicColor", Color) = (0.2196079,0.2196079,0.2196079,1)
        _Wutisdiz ("Wut is diz?", Range(0, 1)) = 0.8737125
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
            Blend One One
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
            uniform float4 _MagicColor;
            uniform float _Wutisdiz;
            uniform float _Avancement;
            uniform sampler2D _Masks; uniform float4 _Masks_ST;
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
                float2 node_6730 = float2(o.uv0.r,(o.uv0.g-_Avancement));
                float4 node_9109 = tex2Dlod(_Masks,float4(TRANSFORM_TEX(node_6730, _Masks),0.0,0));
                v.vertex.xyz += (node_9109.r*v.normal*0.1);
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
                float2 node_6730 = float2(i.uv0.r,(i.uv0.g-_Avancement));
                float4 node_9109 = tex2D(_Masks,TRANSFORM_TEX(node_6730, _Masks));
                float2 node_635 = frac(float2(i.uv0.r,(i.uv0.g*5.0)));
                float4 node_3971 = tex2D(_Masks,TRANSFORM_TEX(node_635, _Masks));
                float4 node_3279 = tex2D(_Masks,TRANSFORM_TEX(node_635, _Masks));
                float node_382 = (node_3971.g+node_3279.b);
                float node_9636 = saturate((node_9109.r*node_382));
                float3 node_1829 = ((_MagicColor.rgb*node_9109.r)*node_9636*(((_Wutisdiz*2.0+-1.0)+i.uv0.g.r)*node_382));
                float3 emissive = node_1829;
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
            uniform float _Avancement;
            uniform sampler2D _Masks; uniform float4 _Masks_ST;
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
                float2 node_6730 = float2(o.uv0.r,(o.uv0.g-_Avancement));
                float4 node_9109 = tex2Dlod(_Masks,float4(TRANSFORM_TEX(node_6730, _Masks),0.0,0));
                v.vertex.xyz += (node_9109.r*v.normal*0.1);
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
