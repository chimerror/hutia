﻿Shader "Super Text Mesh/UI/Outline" { 
	Properties {
		_MainTex ("Font Texture", 2D) = "white" {}
		_MaskTex ("Mask Texture", 2D) = "white" {}
        _OutlineColor ("Outline Color", Color) = (0,0,0,1)
        _OutlineWidth ("Outline Width", Range(0,1)) = 0.05
	}
    
	SubShader {
    Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
        Lighting Off Cull Off ZWrite Off Fog { Mode Off }
		Blend SrcAlpha OneMinusSrcAlpha
//outline
        CGPROGRAM
        #pragma surface surf Lambert alpha vertex:vert

        sampler2D _MainTex;
        sampler2D _MaskTex;
        float4 _OutlineColor;
        float _OutlineWidth;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
        };

        void vert (inout appdata_full v) { //modify vertex data
            const float MAGIC = 3.14159 / 180;
            v.vertex.x += sin(0 * MAGIC) * _OutlineWidth;
            v.vertex.y += cos(0 * MAGIC) * _OutlineWidth;
        }

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * _OutlineColor.rgb;
            surface.Alpha = text.a * mask.a * _OutlineColor.a;
        }
        ENDCG

        CGPROGRAM
        #pragma surface surf Lambert alpha vertex:vert

        sampler2D _MainTex;
        sampler2D _MaskTex;
        float4 _OutlineColor;
        float _OutlineWidth;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
        };

        void vert (inout appdata_full v) { //modify vertex data
            const float MAGIC = 3.14159 / 180;
            v.vertex.x += sin(90 * MAGIC) * _OutlineWidth;
            v.vertex.y += cos(90 * MAGIC) * _OutlineWidth;
        }

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * _OutlineColor.rgb;
            surface.Alpha = text.a * mask.a * _OutlineColor.a;
        }
        ENDCG

        CGPROGRAM
        #pragma surface surf Lambert alpha vertex:vert

        sampler2D _MainTex;
        sampler2D _MaskTex;
        float4 _OutlineColor;
        float _OutlineWidth;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
        };

        void vert (inout appdata_full v) { //modify vertex data
            const float MAGIC = 3.14159 / 180;
            v.vertex.x += sin(180 * MAGIC) * _OutlineWidth;
            v.vertex.y += cos(180 * MAGIC) * _OutlineWidth;
        }

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * _OutlineColor.rgb;
            surface.Alpha = text.a * mask.a * _OutlineColor.a;
        }
        ENDCG

        CGPROGRAM
        #pragma surface surf Lambert alpha vertex:vert

        sampler2D _MainTex;
        sampler2D _MaskTex;
        float4 _OutlineColor;
        float _OutlineWidth;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
        };

        void vert (inout appdata_full v) { //modify vertex data
            const float MAGIC = 3.14159 / 180;
            v.vertex.x += sin(270 * MAGIC) * _OutlineWidth;
            v.vertex.y += cos(270 * MAGIC) * _OutlineWidth;
        }

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * _OutlineColor.rgb;
            surface.Alpha = text.a * mask.a * _OutlineColor.a;
        }
        ENDCG

        CGPROGRAM
        #pragma surface surf Lambert alpha vertex:vert

        sampler2D _MainTex;
        sampler2D _MaskTex;
        float4 _OutlineColor;
        float _OutlineWidth;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
        };

        void vert (inout appdata_full v) { //modify vertex data
            const float MAGIC = 3.14159 / 180;
            v.vertex.x += sin(45 * MAGIC) * _OutlineWidth;
            v.vertex.y += cos(45 * MAGIC) * _OutlineWidth;
        }

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * _OutlineColor.rgb;
            surface.Alpha = text.a * mask.a * _OutlineColor.a;
        }
        ENDCG

        CGPROGRAM
        #pragma surface surf Lambert alpha vertex:vert

        sampler2D _MainTex;
        sampler2D _MaskTex;
        float4 _OutlineColor;
        float _OutlineWidth;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
        };

        void vert (inout appdata_full v) { //modify vertex data
            const float MAGIC = 3.14159 / 180;
            v.vertex.x += sin(135 * MAGIC) * _OutlineWidth;
            v.vertex.y += cos(135 * MAGIC) * _OutlineWidth;
        }

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * _OutlineColor.rgb;
            surface.Alpha = text.a * mask.a * _OutlineColor.a;
        }
        ENDCG

        CGPROGRAM
        #pragma surface surf Lambert alpha vertex:vert

        sampler2D _MainTex;
        sampler2D _MaskTex;
        float4 _OutlineColor;
        float _OutlineWidth;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
        };

        void vert (inout appdata_full v) { //modify vertex data
            const float MAGIC = 3.14159 / 180;
            v.vertex.x += sin(225 * MAGIC) * _OutlineWidth;
            v.vertex.y += cos(225 * MAGIC) * _OutlineWidth;
        }

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * _OutlineColor.rgb;
            surface.Alpha = text.a * mask.a * _OutlineColor.a;
        }
        ENDCG

        CGPROGRAM
        #pragma surface surf Lambert alpha vertex:vert

        sampler2D _MainTex;
        sampler2D _MaskTex;
        float4 _OutlineColor;
        float _OutlineWidth;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
        };

        void vert (inout appdata_full v) { //modify vertex data
            const float MAGIC = 3.14159 / 180;
            v.vertex.x += sin(315 * MAGIC) * _OutlineWidth;
            v.vertex.y += cos(315 * MAGIC) * _OutlineWidth;
        }

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * _OutlineColor.rgb;
            surface.Alpha = text.a * mask.a * _OutlineColor.a;
        }
        ENDCG
//normal text
        CGPROGRAM
        #pragma surface surf Lambert alpha

        sampler2D _MainTex;
        sampler2D _MaskTex;

        struct Input {
            float2 uv_MainTex : TEXCOORD0;
            float2 uv2_MaskTex : TEXCOORD1;
            float4 color : COLOR;
        };

        void surf (Input IN, inout SurfaceOutput surface) {
            half4 text = tex2D (_MainTex, IN.uv_MainTex.xy);
            half4 mask = tex2D (_MaskTex, IN.uv2_MaskTex.xy);
            surface.Emission = mask.rgb * IN.color.rgb;
            surface.Alpha = text.a * mask.a * IN.color.a;
        }
        ENDCG
	}
}