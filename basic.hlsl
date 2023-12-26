
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
};

struct VertexOut
{
    float4 Pos : SV_POSITION;
};

VertexOut VS(VertexIn vin)
{
    VertexOut vout;
	
	// Transform to homogeneous clip space.
    vout.Pos = mul(float4(vin.Pos, 1.0f), gWorldViewProj);
    
    return vout;
}