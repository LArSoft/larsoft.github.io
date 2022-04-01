# LArQL algorithm

Experimental data shows that both ionization charge and scintillation light in LAr depend on the deposited energy density (dE/dx) and electric field (xi) and that free ionization charge and scintillation light are anti-correlated, complementary at a given (dE/dx, xi) pair.  
LArQL is a phenomenological model that provides the anti-correlation between light and charge and also its dependency with the deposited energy and with the applied electric field. It aims to cover the range of interest for LArTPC neutrino experiments: 2 MeV/cm \< dE/dx \< 40 MeV/cm and 0.25 kV/cm \< xi \< 0.5 kV/cm (extending it to 0 \< xi \< 0.75 kV/cm) by the construction of a charge - light master equation. LArQL modifies the Birks (or Box) charge model correcting for escaping and additional electrons at lower electric field range and later uses this value to obtain the corresponding light generated.  
By modifying the Birks model in order to include escaping electrons at zero electric field and correct for charges freed at low xi,

QY_LArQL = QY_Birks + QY_ee  
= (A_B/W_ion) / (1 + k_B/rho_LAr 1/xi dE/dx) + chi_0 f_corr QY_infinity,

where QY_LArQL is the corrected charge yield, QY_Birks is the Birks model estimate, chi_0 is the fraction of scaping electrons, and f_corr is a correcting factor for the xi dependence.

The charge-light master equation is, therefore given by:

LY = N_i - QY_LArQL + N_ex,

as for each recombined electron a scintillation photon is assumed to be emitted.  
Therefore the emitted light density is obtained as:

dL/dx = 1/W_ion dE/dx \[ 1 + N_ex/N_i - chi_0 f_corr - A_B/ (1 + k_B/rho_LAr 1/xi dE/dx) \].

Using experimental data, a preliminary fit of the chi_0 function to obtain its dependence on the energy deposited, as well as a fit to f_corr to obtain its dependence on the electric field was performed, resulting in the following parameterization:

f_corr (xi, dE/dx) = exp{ - xi / \[alpha ln(dE/dx) + beta\] },

chi_0 (dE/dx)= A / \[ B + exp(C + D dE/dx) \]

where alpha=0.0372 cm/kV, beta=0.0124 cm/kV, A=0.003384224, B=–6.57037, C=1.88418, and D=0.000129379 cm/MeV.

More details can be found in the attached file.
