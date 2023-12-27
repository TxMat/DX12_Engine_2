// #include <DirectXMath.h>
//
// // VS.hlsl
// struct VertexInput
// {
//     DirectX::XMFLOAT3 Position;
//     DirectX::XMFLOAT4 Color;
// };
//
// struct VertexOutput
// {
//     DirectX::XMFLOAT4 Position;
//     DirectX::XMFLOAT4 Color;
// };
//
// VertexOutput main(VertexInput input)
// {
//     VertexOutput output;
//     output.Position = DirectX::XMFLOAT4(input.Position.x, input.Position.y, input.Position.z, 1.0f);
//     output.Color = input.Color;
//     return output;
// }
