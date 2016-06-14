function [y2m_,t_m_,sol_m_] = solidity(a1m_,alpha2_,cx_s_)
y1m_ = a1m_;
sol_m_ = 1.0;
for i = 1:15
y2m_ = (y1m_+8*sqrt(sol_m_)*alpha2_)/(8*sqrt(sol_m_)-1);
t_m_ = (y2m_ - y1m_)*0.5;
sol_m_ = cx_s_/cos(t_m_);
end
