"""Gera as texturas do visual do Lodestar 3 (specs/lodestar-3): cantos arredondados e sombra suave.

Branco com alfa (o jogo tinge com SetVertexColor), TGA 32 bits sem compressão, origem no topo — o mesmo formato
das outras texturas de Media/. Cada uma é usada como 9-slice (SetTextureSliceMargins): a margem é o raio.

    python3 tools/gen_media.py
"""
import math
import os
import struct

HERE = os.path.dirname(os.path.abspath(__file__))
MEDIA = os.path.join(HERE, "..", "Media")


def tga(path, size, alpha):
    """alpha(x, y) -> 0..1, para cada pixel do quadrado size x size."""
    head = struct.pack("<BBBHHBHHHHBB", 0, 0, 2, 0, 0, 0, 0, 0, size, size, 32, 0x28)
    body = bytearray()
    for y in range(size):
        for x in range(size):
            a = max(0.0, min(1.0, alpha(x + 0.5, y + 0.5)))
            body += bytes((255, 255, 255, int(round(a * 255))))
    with open(path, "wb") as f:
        f.write(head + body)


def rounded(size, r):
    """Retângulo de cantos com raio r ocupando o quadrado todo, borda suavizada em 1 px."""
    def alpha(x, y):
        cx = min(max(x, r), size - r)
        cy = min(max(y, r), size - r)
        d = math.hypot(x - cx, y - cy)
        return r + 0.5 - d
    return alpha


def ring(size, r, width):
    """Só o contorno do retângulo arredondado (borda de `width` px)."""
    fill = rounded(size, r)
    inner = rounded(size - 2 * width, max(1, r - width))

    def alpha(x, y):
        a = fill(x, y)
        if width <= x < size - width and width <= y < size - width:
            a = min(a, 1 - inner(x - width, y - width))
        return a
    return alpha


def shadow(size, r, blur):
    """Sombra: retângulo arredondado recuado `blur` px, com a borda caindo em gaussiana."""
    inset = blur

    def alpha(x, y):
        cx = min(max(x, inset + r), size - inset - r)
        cy = min(max(y, inset + r), size - inset - r)
        d = math.hypot(x - cx, y - cy) - r
        if d <= 0:
            return 1.0
        return math.exp(-(d * d) / (2 * (blur / 2.2) ** 2))
    return alpha


def main():
    tga(os.path.join(MEDIA, "round-12.tga"), 64, rounded(64, 12))
    tga(os.path.join(MEDIA, "round-6.tga"), 32, rounded(32, 6))
    tga(os.path.join(MEDIA, "pill.tga"), 32, rounded(32, 16))
    tga(os.path.join(MEDIA, "round-12-line.tga"), 64, ring(64, 12, 1))
    tga(os.path.join(MEDIA, "round-6-line.tga"), 32, ring(32, 6, 1))
    tga(os.path.join(MEDIA, "shadow.tga"), 128, shadow(128, 12, 20))
    print("ok")


if __name__ == "__main__":
    main()
