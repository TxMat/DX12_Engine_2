
cbuffer cbPerObject : register(b0)
{
    float4x4 gWorldViewProj;
};

cbuffer cbPerPass : register(b1)
{
    float4x4 gWorldViewProj2;
};

struct VertexIn
{
    float3 Pos : POSITION;
    float4 Color : COLOR;
};

struct VertexOut
{
    float4 Pos : SV_POSITION;
    float4 Color : COLOR;
};

VertexOut VS(VertexIn vin)
{
    VertexOut vout;
	
	// Transform to homogeneous clip space.
    vout.Pos = mul(float4(vin.Pos, 1.0f), gWorldViewProj);
    vout.Color = vin.Color;
    
    return vout;
}