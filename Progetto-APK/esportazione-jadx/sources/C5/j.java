package C5;

import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;
import org.videolan.libvlc.MediaPlayer;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j implements p130q5.k {
    public static float f(int[] iArr, int[] iArr2, float f8) {
        int length = iArr.length;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            i8 += iArr[i10];
            i9 += iArr2[i10];
        }
        if (i8 < i9) {
            return Float.POSITIVE_INFINITY;
        }
        float f9 = i8;
        float f10 = f9 / i9;
        float f11 = f8 * f10;
        float f12 = 0.0f;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = iArr[i11];
            float f13 = iArr2[i11] * f10;
            float f14 = i12;
            float f15 = f14 > f13 ? f14 - f13 : f13 - f14;
            if (f15 > f11) {
                return Float.POSITIVE_INFINITY;
            }
            f12 += f15;
        }
        return f12 / f9;
    }

    public static void g(int i8, p176w5.a aVar, int[] iArr) throws p130q5.i {
        int length = iArr.length;
        int i9 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int i10 = aVar.f31090H;
        if (i8 >= i10) {
            throw p130q5.i.f29623I;
        }
        boolean z7 = !aVar.d(i8);
        while (i8 < i10) {
            if (aVar.d(i8) == z7) {
                i9++;
                if (i9 == length) {
                    break;
                }
                iArr[i9] = 1;
                z7 = !z7;
            } else {
                iArr[i9] = iArr[i9] + 1;
            }
            i8++;
        }
        if (i9 != length) {
            if (i9 != length - 1 || i8 != i10) {
                throw p130q5.i.f29623I;
            }
        }
    }

    public static void h(int i8, p176w5.a aVar, int[] iArr) throws p130q5.i {
        int length = iArr.length;
        boolean zD = aVar.d(i8);
        while (i8 > 0 && length >= 0) {
            i8--;
            if (aVar.d(i8) != zD) {
                length--;
                zD = !zD;
            }
        }
        if (length >= 0) {
            throw p130q5.i.f29623I;
        }
        g(i8 + 1, aVar, iArr);
    }

    @Override // p130q5.k
    public p130q5.m b(p096m2.l lVar) {
        return c(lVar, null);
    }

    @Override // p130q5.k
    public p130q5.m c(p096m2.l lVar, Map map) throws p130q5.i {
        try {
            return e(lVar, map);
        } catch (p130q5.i e8) {
            if (map == null || !map.containsKey(p130q5.c.f29599J) || !((p130q5.g) ((p018c1.d) lVar.f27231H).f10616G).c()) {
                throw e8;
            }
            p096m2.l lVar2 = new p096m2.l(((p018c1.d) lVar.f27231H).f(((p130q5.g) ((p018c1.d) lVar.f27231H).f10616G).d()));
            p130q5.m mVarE = e(lVar2, map);
            Map map2 = mVarE.f29633e;
            p130q5.n nVar = p130q5.n.f29634G;
            int iIntValue = MediaPlayer.Event.PausableChanged;
            if (map2 != null && map2.containsKey(nVar)) {
                iIntValue = (((Integer) map2.get(nVar)).intValue() + MediaPlayer.Event.PausableChanged) % 360;
            }
            mVarE.b(nVar, Integer.valueOf(iIntValue));
            o[] oVarArr = mVarE.f29631c;
            if (oVarArr != null) {
                int i8 = ((p130q5.g) ((p018c1.d) lVar2.f27231H).f10616G).f29619b;
                for (int i9 = 0; i9 < oVarArr.length; i9++) {
                    o oVar = oVarArr[i9];
                    oVarArr[i9] = new o((i8 - oVar.f29646b) - 1.0f, oVar.f29645a);
                }
            }
            return mVarE;
        }
    }

    public abstract p130q5.m d(int i8, p176w5.a aVar, Map map);

    /* JADX WARN: Code duplicated, block: B:34:0x007f  */
    public final p130q5.m e(p096m2.l lVar, Map map) throws p130q5.i {
        Map map2;
        p096m2.l lVar2 = lVar;
        Map map3 = map;
        Object obj = lVar2.f27231H;
        int i8 = ((p130q5.g) ((p018c1.d) obj).f10616G).f29618a;
        int i9 = ((p130q5.g) ((p018c1.d) obj).f10616G).f29619b;
        p176w5.a aVar = new p176w5.a(i8);
        int i10 = 1;
        char c8 = 0;
        boolean z7 = map3 != null && map3.containsKey(p130q5.c.f29599J);
        int iMax = Math.max(1, i9 >> (z7 ? 8 : 5));
        int i11 = z7 ? i9 : 15;
        int i12 = i9 / 2;
        int i13 = 0;
        while (i13 < i11) {
            int i14 = i13 + 1;
            int i15 = i14 / 2;
            if ((i13 & 1) != 0) {
                i15 = -i15;
            }
            int i16 = (i15 * iMax) + i12;
            if (i16 < 0 || i16 >= i9) {
                break;
            }
            try {
                aVar = ((p018c1.d) lVar2.f27231H).h(i16, aVar);
                int i17 = 0;
                while (i17 < 2) {
                    if (i17 == i10) {
                        aVar.i();
                        if (map3 != null) {
                            Object obj2 = p130q5.c.f29605P;
                            if (map3.containsKey(obj2)) {
                                EnumMap enumMap = new EnumMap(p130q5.c.class);
                                enumMap.putAll(map3);
                                enumMap.remove(obj2);
                                map3 = enumMap;
                            }
                        }
                    }
                    try {
                        p130q5.m mVarD = d(i16, aVar, map3);
                        if (i17 == i10) {
                            mVarD.b(p130q5.n.f29634G, 180);
                            o[] oVarArr = mVarD.f29631c;
                            if (oVarArr != null) {
                                float f8 = i8;
                                map2 = map3;
                                try {
                                    o oVar = oVarArr[c8];
                                    oVarArr[0] = new o((f8 - oVar.f29645a) - 1.0f, oVar.f29646b);
                                    o oVar2 = oVarArr[1];
                                    try {
                                        oVarArr[1] = new o((f8 - oVar2.f29645a) - 1.0f, oVar2.f29646b);
                                    } catch (p130q5.l unused) {
                                        continue;
                                        i17++;
                                        map3 = map2;
                                        i10 = 1;
                                        c8 = 0;
                                    }
                                } catch (p130q5.l unused2) {
                                    i17++;
                                    map3 = map2;
                                    i10 = 1;
                                    c8 = 0;
                                }
                            }
                        }
                        return mVarD;
                    } catch (p130q5.l unused3) {
                        map2 = map3;
                    }
                }
            } catch (p130q5.i unused4) {
                continue;
            }
            lVar2 = lVar;
            i13 = i14;
            i10 = 1;
            c8 = 0;
        }
        throw p130q5.i.f29623I;
    }

    @Override // p130q5.k
    public void a() {
    }
}
