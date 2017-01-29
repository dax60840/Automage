// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2677,x:33197,y:32733,varname:node_2677,prsc:2|emission-6634-OUT;n:type:ShaderForge.SFN_Cubemap,id:8948,x:31912,y:32777,ptovrint:False,ptlb:CubemapDay,ptin:_CubemapDay,varname:node_8948,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:6fc7c84f18038374aba622198eba915e,pvfc:0;n:type:ShaderForge.SFN_Cubemap,id:8425,x:31912,y:32936,ptovrint:False,ptlb:CubemapNight,ptin:_CubemapNight,varname:node_8425,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:7be95a7913bd12242b000925e53c31c2,pvfc:0;n:type:ShaderForge.SFN_Lerp,id:5951,x:32450,y:32838,varname:node_5951,prsc:2|A-3264-OUT,B-6373-OUT,T-9323-OUT;n:type:ShaderForge.SFN_Slider,id:9323,x:31983,y:33215,ptovrint:False,ptlb:Cycle Day/Night ,ptin:_CycleDayNight,varname:node_9323,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3264,x:32183,y:32783,varname:node_3264,prsc:2|A-7976-OUT,B-8948-RGB;n:type:ShaderForge.SFN_ValueProperty,id:7976,x:32183,y:32703,ptovrint:False,ptlb:DayExponant,ptin:_DayExponant,varname:node_7976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6634,x:32883,y:32839,varname:node_6634,prsc:2|A-5951-OUT,B-6563-RGB,C-90-RGB;n:type:ShaderForge.SFN_Color,id:6563,x:32644,y:32955,ptovrint:False,ptlb:CycleColor,ptin:_CycleColor,varname:node_6563,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6373,x:32183,y:32924,varname:node_6373,prsc:2|A-8425-RGB,B-6290-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6290,x:32183,y:33058,ptovrint:False,ptlb:NightExponant,ptin:_NightExponant,varname:node_6290,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:90,x:32644,y:33121,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_90,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:8948-7976-8425-9323-6290-90;pass:END;sub:END;*/

Shader "Unlit/m_SkyboxCM" {
    Properties {
        _CubemapDay ("CubemapDay", Cube) = "_Skybox" {}
        _DayExponant ("DayExponant", Float ) = 1
        _CubemapNight ("CubemapNight", Cube) = "_Skybox" {}
        _CycleDayNight ("Cycle Day/Night ", Range(0, 1)) = 0
        _NightExponant ("NightExponant", Float ) = 1
        _Tint ("Tint", Color) = (0.5,0.5,0.5,1)
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform samplerCUBE _CubemapDay;
            uniform samplerCUBE _CubemapNight;
            uniform float _CycleDayNight;
            uniform float _DayExponant;
            uniform float4 _CycleColor;
            uniform float _NightExponant;
            uniform float4 _Tint;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float3 emissive = (lerp((_DayExponant*texCUBE(_CubemapDay,viewReflectDirection).rgb),(texCUBE(_CubemapNight,viewReflectDirection).rgb*_NightExponant),_CycleDayNight)*_CycleColor.rgb*_Tint.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
