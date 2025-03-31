// //############################################################################
// //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// //
// //   ICLAB 2024 Spring
// //   Lab01 Exercise		: Design: Code Calculator
// //   Author     		    : Duc Huy Nguyen
// //   File Name         : CC.v
// //   Module Name       : CC
// //   Release version : V1.0 (Release Date: 2024-03-03)
// //
// //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// //############################################################################

module CC(
  // Input signals
    opt,
    in_n0, in_n1, in_n2, in_n3, in_n4,  
  // Output signals
    out_n
);

//================================================================
//   INPUT AND OUTPUT DECLARATION                         
//================================================================
input [3:0] in_n0, in_n1, in_n2, in_n3, in_n4;
input [2:0] opt;
output reg [9:0] out_n;         					

//================================================================
//    Wire & Registers 
//================================================================
// Declare the wire/reg you would use in your circuit
// remember 
// wire for port connection and cont. assignment
// reg for proc. assignment

reg [3:0] in_sorted [4:0];

reg [4:0] mean_norm;
reg signed [4:0] in_norm [4:0];
wire signed [4:0] avg;
reg signed [9:0] tmp_res;


//================================================================
//    DESIGN
//================================================================

// --------------------------------------------------
// write your design here
// --------------------------------------------------

// Sort
Sort sort1 (.mod(opt[1]), .in0(in_n0), .in1(in_n1), .in2(in_n2), .in3(in_n3), .in4(in_n4), .n0(in_sorted[0]), .n1(in_sorted[1]), .n2(in_sorted[2]), .n3(in_sorted[3]), .n4(in_sorted[4]));

//Normalize
// assign mean_norm = (in_sorted[0] + in_sorted[4])/2;
always@(*) begin
  case (opt[0])
    1'd1: begin
      mean_norm = (in_sorted[0] + in_sorted[4])/2;
      in_norm[0] = in_sorted[0] - mean_norm;
      in_norm[1] = in_sorted[1] - mean_norm;
      in_norm[2] = in_sorted[2] - mean_norm;
      in_norm[3] = in_sorted[3] - mean_norm;
      in_norm[4] = in_sorted[4] - mean_norm;
    end

    1'd0: begin
      in_norm[0] = in_sorted[0];
      in_norm[1] = in_sorted[1];
      in_norm[2] = in_sorted[2];
      in_norm[3] = in_sorted[3];
      in_norm[4] = in_sorted[4];
    end
  endcase
end

//Calculation
assign avg = (in_norm[0] + in_norm[1] + in_norm[2] + in_norm[3] + in_norm[4])/5;

always@(*) begin
  case (opt[2])
    1'd1: begin
      tmp_res = (in_norm[3]*3) - (in_norm[0]*in_norm[4]);
      out_n = (tmp_res < 0) ? -tmp_res : tmp_res;
    end

    1'd0: begin
      out_n = ((in_norm[0] + (in_norm[1] * in_norm[2]) + avg * in_norm[3])/3);
    end
  endcase
end

endmodule

module Compare (in1_cmp, in2_cmp, max, min);
  input [3:0] in1_cmp, in2_cmp;
  output reg [3:0] max, min;
  assign {max, min} = (in1_cmp > in2_cmp) ? {in1_cmp, in2_cmp} : {in2_cmp, in1_cmp} ;
endmodule

module Sort (mod, in0, in1, in2, in3, in4, n0, n1, n2, n3, n4);
  input [3:0] in0, in1, in2, in3, in4;
  input mod;
  output reg [3:0] n0, n1, n2, n3, n4;
  wire [3:0] a0, a1, a2, a3, a4;
  wire [3:0] b0, b1, b2, b3, b4;
  wire [3:0] c0, c1, c2, c3, c4;
  wire [3:0] d0, d1, d2, d3, d4;
  wire [3:0] e0, e1, e2, e3, e4;


  // Sort
  Compare cmp0(.in1_cmp(in0), .in2_cmp(in3), .max(a0), .min(a3));
  Compare cmp1(.in1_cmp(in1), .in2_cmp(in4), .max(a1), .min(a4));
  assign a2 = in2;

  Compare cmp2(.in1_cmp(a0), .in2_cmp(a2), .max(b0), .min(b2));
  Compare cmp3(.in1_cmp(a1), .in2_cmp(a3), .max(b1), .min(b3));
  assign b4 = a4;

  Compare cmp4(.in1_cmp(b0), .in2_cmp(b1), .max(c0), .min(c1));
  Compare cmp5(.in1_cmp(b2), .in2_cmp(b4), .max(c2), .min(c4));
  assign c3 = b3;

  Compare cmp6(.in1_cmp(c1), .in2_cmp(c2), .max(d1), .min(d2));
  Compare cmp7(.in1_cmp(c3), .in2_cmp(c4), .max(d3), .min(d4));
  assign d0 = c0;

  Compare cmp8(.in1_cmp(d2), .in2_cmp(d3), .max(e2), .min(e3));
  assign e0 = d0;
  assign e1 = d1;
  assign e4 = d4;


  always @(*) begin
    if (~mod) begin
      n0 = e4;
      n1 = e3;
      n2 = e2;
      n3 = e1;
      n4 = e0;
    end
    else begin
      n0 = e0;
      n1 = e1;
      n2 = e2;
      n3 = e3;
      n4 = e4;
    end
  end
endmodule