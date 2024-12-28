function u2 = fresnel_prop(u1, z, lambda, N, max_freq)

    % INPUTS:
    % u1 = input wavefield
    % z = propagation distance
    % lambda = wavelength
    % N = total number of grid points
    % max_freq = maximum frequency for transfer function

    % OUTPUT:
    % u2 = output wavefield

    % wavenumber in vacuum
    k0 = 2*pi/lambda;

    % create an array of spatial frequency
    kx=[-max_freq:2*max_freq/N:max_freq-2*max_freq/N]';
    ky=kx;

    [KX,KY] = meshgrid(kx,ky);  % create 2D frequency grid
    KK = (KX.^2 + KY.^2);       % for transfer function equation
    F0 = fftshift(fft2(u1));     % Fourier transform of the object
    TF = exp(1i*KK*z/(2*k0)).*F0;      % Create the transfer function

    u2 = ifft2(fftshift(TF));
end