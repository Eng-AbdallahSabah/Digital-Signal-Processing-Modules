module DSP_tb();

reg [17:0] A,B,D;
reg [47:0] C;
reg clk, rst_n;
wire [47:0] P;

DSP m1 (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .clk(clk),
    .rst_n(rst_n),
    .P(P)
);

initial 
begin
    clk=0;
    forever
        #1 clk=~clk;
end

initial
begin
 A=0;
 B=0;
 D=0;
 C=0;
 rst_n=0;
 @(negedge clk);
 rst_n=1;
 repeat(1000) begin
   A=$random;
   B=$random;
   D=$random;
   C=$random;
   @(negedge clk);
 end
 $stop;
end
endmodule
