% good tutorial about octave in wsl2: https://discourse.ubuntu.com/t/install-ubuntu-on-wsl2-and-get-started-with-graphical-applications/26296
% some extra config to octave formatter: https://github.com/tusindfryd/octave-formatter-vscode/issues/2#issuecomment-886191952
#{

Inspired by the work of Bruno Girin ([Geek Thoughts:Fractals with Octave:Classic Mandelbrot and Julia](http: // brunogirin.blogspot.com / 2008/12 / fractals - with - octave - classic - mandelbrot.html))

Calculate a Julia set

zmin:Minimum value of c

zmax:Maximum value of c

hpx:Number of horizontal pixels

niter:Number of iterations

c:A complex number

#}

function M = julia(zmin, zmax, hpx, niter, c)

    %% Number of vertical pixels
    vpx = round(hpx * abs(imag(zmax - zmin) / real(zmax - zmin)));

    %% Prepare the complex plane
    [zRe, zIm] = meshgrid(linspace(real(zmin), real(zmax), hpx),
    linspace(imag(zmin), imag(zmax), vpx));
    z = zRe + i * zIm;
    M = zeros(vpx, hpx);

    %% Generate Julia
    for s = 1:niter
        mask = abs(z) < 2;
        M(mask) = M(mask) + 1;
        z(mask) = z(mask).^2 + c;
    end

    M(mask) = 0;

end

% Jc1=julia(-1.6+1.2i, 1.6-1.2i, 640, 128, -0.75+0.2i);
% imagesc(Jc1)
% axis off
% colormap('default');
