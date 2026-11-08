package p156u;

import com.google.protobuf.U2;
import java.util.Arrays;
import okhttp3.HttpUrl;
import p096m2.o;

/* JADX INFO: loaded from: classes.dex */
public final class a implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f30321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f30322c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f30320a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f30323d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f30324e = new int[8];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f30325f = new int[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f30326g = new float[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f30327h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f30328i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f30329j = false;

    public a(c cVar, o oVar) {
        this.f30321b = cVar;
        this.f30322c = oVar;
    }

    @Override // p156u.b
    public final float a(c cVar, boolean z7) {
        float fI = i(cVar.f30330a);
        g(cVar.f30330a, z7);
        b bVar = cVar.f30333d;
        int iB = bVar.b();
        for (int i8 = 0; i8 < iB; i8++) {
            i iVarD = bVar.d(i8);
            h(iVarD, bVar.i(iVarD) * fI, z7);
        }
        return fI;
    }

    @Override // p156u.b
    public final int b() {
        return this.f30320a;
    }

    @Override // p156u.b
    public final boolean c(i iVar) {
        int i8 = this.f30327h;
        if (i8 == -1) {
            return false;
        }
        for (int i9 = 0; i8 != -1 && i9 < this.f30320a; i9++) {
            if (this.f30324e[i8] == iVar.f30363H) {
                return true;
            }
            i8 = this.f30325f[i8];
        }
        return false;
    }

    @Override // p156u.b
    public final void clear() {
        int i8 = this.f30327h;
        for (int i9 = 0; i8 != -1 && i9 < this.f30320a; i9++) {
            i iVar = ((i[]) this.f30322c.f27239J)[this.f30324e[i8]];
            if (iVar != null) {
                iVar.b(this.f30321b);
            }
            i8 = this.f30325f[i8];
        }
        this.f30327h = -1;
        this.f30328i = -1;
        this.f30329j = false;
        this.f30320a = 0;
    }

    @Override // p156u.b
    public final i d(int i8) {
        int i9 = this.f30327h;
        for (int i10 = 0; i9 != -1 && i10 < this.f30320a; i10++) {
            if (i10 == i8) {
                return ((i[]) this.f30322c.f27239J)[this.f30324e[i9]];
            }
            i9 = this.f30325f[i9];
        }
        return null;
    }

    @Override // p156u.b
    public final void e() {
        int i8 = this.f30327h;
        for (int i9 = 0; i8 != -1 && i9 < this.f30320a; i9++) {
            float[] fArr = this.f30326g;
            fArr[i8] = fArr[i8] * (-1.0f);
            i8 = this.f30325f[i8];
        }
    }

    @Override // p156u.b
    public final float f(int i8) {
        int i9 = this.f30327h;
        for (int i10 = 0; i9 != -1 && i10 < this.f30320a; i10++) {
            if (i10 == i8) {
                return this.f30326g[i9];
            }
            i9 = this.f30325f[i9];
        }
        return 0.0f;
    }

    @Override // p156u.b
    public final float g(i iVar, boolean z7) {
        int i8 = this.f30327h;
        if (i8 == -1) {
            return 0.0f;
        }
        int i9 = 0;
        int i10 = -1;
        while (i8 != -1 && i9 < this.f30320a) {
            if (this.f30324e[i8] == iVar.f30363H) {
                if (i8 == this.f30327h) {
                    this.f30327h = this.f30325f[i8];
                } else {
                    int[] iArr = this.f30325f;
                    iArr[i10] = iArr[i8];
                }
                if (z7) {
                    iVar.b(this.f30321b);
                }
                iVar.f30372Q--;
                this.f30320a--;
                this.f30324e[i8] = -1;
                if (this.f30329j) {
                    this.f30328i = i8;
                }
                return this.f30326g[i8];
            }
            i9++;
            i10 = i8;
            i8 = this.f30325f[i8];
        }
        return 0.0f;
    }

    @Override // p156u.b
    public final void h(i iVar, float f8, boolean z7) {
        if (f8 <= -0.001f || f8 >= 0.001f) {
            int i8 = this.f30327h;
            c cVar = this.f30321b;
            if (i8 == -1) {
                this.f30327h = 0;
                this.f30326g[0] = f8;
                this.f30324e[0] = iVar.f30363H;
                this.f30325f[0] = -1;
                iVar.f30372Q++;
                iVar.a(cVar);
                this.f30320a++;
                if (this.f30329j) {
                    return;
                }
                int i9 = this.f30328i + 1;
                this.f30328i = i9;
                int[] iArr = this.f30324e;
                if (i9 >= iArr.length) {
                    this.f30329j = true;
                    this.f30328i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i10 = -1;
            for (int i11 = 0; i8 != -1 && i11 < this.f30320a; i11++) {
                int i12 = this.f30324e[i8];
                int i13 = iVar.f30363H;
                if (i12 == i13) {
                    float[] fArr = this.f30326g;
                    float f9 = fArr[i8] + f8;
                    if (f9 > -0.001f && f9 < 0.001f) {
                        f9 = 0.0f;
                    }
                    fArr[i8] = f9;
                    if (f9 == 0.0f) {
                        if (i8 == this.f30327h) {
                            this.f30327h = this.f30325f[i8];
                        } else {
                            int[] iArr2 = this.f30325f;
                            iArr2[i10] = iArr2[i8];
                        }
                        if (z7) {
                            iVar.b(cVar);
                        }
                        if (this.f30329j) {
                            this.f30328i = i8;
                        }
                        iVar.f30372Q--;
                        this.f30320a--;
                        return;
                    }
                    return;
                }
                if (i12 < i13) {
                    i10 = i8;
                }
                i8 = this.f30325f[i8];
            }
            int length = this.f30328i;
            int i14 = length + 1;
            if (this.f30329j) {
                int[] iArr3 = this.f30324e;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i14;
            }
            int[] iArr4 = this.f30324e;
            if (length >= iArr4.length && this.f30320a < iArr4.length) {
                int i15 = 0;
                while (true) {
                    int[] iArr5 = this.f30324e;
                    if (i15 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i15] == -1) {
                        length = i15;
                        break;
                    }
                    i15++;
                }
            }
            int[] iArr6 = this.f30324e;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i16 = this.f30323d * 2;
                this.f30323d = i16;
                this.f30329j = false;
                this.f30328i = length - 1;
                this.f30326g = Arrays.copyOf(this.f30326g, i16);
                this.f30324e = Arrays.copyOf(this.f30324e, this.f30323d);
                this.f30325f = Arrays.copyOf(this.f30325f, this.f30323d);
            }
            this.f30324e[length] = iVar.f30363H;
            this.f30326g[length] = f8;
            if (i10 != -1) {
                int[] iArr7 = this.f30325f;
                iArr7[length] = iArr7[i10];
                iArr7[i10] = length;
            } else {
                this.f30325f[length] = this.f30327h;
                this.f30327h = length;
            }
            iVar.f30372Q++;
            iVar.a(cVar);
            this.f30320a++;
            if (!this.f30329j) {
                this.f30328i++;
            }
            int i17 = this.f30328i;
            int[] iArr8 = this.f30324e;
            if (i17 >= iArr8.length) {
                this.f30329j = true;
                this.f30328i = iArr8.length - 1;
            }
        }
    }

    @Override // p156u.b
    public final float i(i iVar) {
        int i8 = this.f30327h;
        for (int i9 = 0; i8 != -1 && i9 < this.f30320a; i9++) {
            if (this.f30324e[i8] == iVar.f30363H) {
                return this.f30326g[i8];
            }
            i8 = this.f30325f[i8];
        }
        return 0.0f;
    }

    @Override // p156u.b
    public final void j(i iVar, float f8) {
        if (f8 == 0.0f) {
            g(iVar, true);
            return;
        }
        int i8 = this.f30327h;
        c cVar = this.f30321b;
        if (i8 == -1) {
            this.f30327h = 0;
            this.f30326g[0] = f8;
            this.f30324e[0] = iVar.f30363H;
            this.f30325f[0] = -1;
            iVar.f30372Q++;
            iVar.a(cVar);
            this.f30320a++;
            if (this.f30329j) {
                return;
            }
            int i9 = this.f30328i + 1;
            this.f30328i = i9;
            int[] iArr = this.f30324e;
            if (i9 >= iArr.length) {
                this.f30329j = true;
                this.f30328i = iArr.length - 1;
                return;
            }
            return;
        }
        int i10 = -1;
        for (int i11 = 0; i8 != -1 && i11 < this.f30320a; i11++) {
            int i12 = this.f30324e[i8];
            int i13 = iVar.f30363H;
            if (i12 == i13) {
                this.f30326g[i8] = f8;
                return;
            }
            if (i12 < i13) {
                i10 = i8;
            }
            i8 = this.f30325f[i8];
        }
        int length = this.f30328i;
        int i14 = length + 1;
        if (this.f30329j) {
            int[] iArr2 = this.f30324e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i14;
        }
        int[] iArr3 = this.f30324e;
        if (length >= iArr3.length && this.f30320a < iArr3.length) {
            int i15 = 0;
            while (true) {
                int[] iArr4 = this.f30324e;
                if (i15 >= iArr4.length) {
                    break;
                }
                if (iArr4[i15] == -1) {
                    length = i15;
                    break;
                }
                i15++;
            }
        }
        int[] iArr5 = this.f30324e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i16 = this.f30323d * 2;
            this.f30323d = i16;
            this.f30329j = false;
            this.f30328i = length - 1;
            this.f30326g = Arrays.copyOf(this.f30326g, i16);
            this.f30324e = Arrays.copyOf(this.f30324e, this.f30323d);
            this.f30325f = Arrays.copyOf(this.f30325f, this.f30323d);
        }
        this.f30324e[length] = iVar.f30363H;
        this.f30326g[length] = f8;
        if (i10 != -1) {
            int[] iArr6 = this.f30325f;
            iArr6[length] = iArr6[i10];
            iArr6[i10] = length;
        } else {
            this.f30325f[length] = this.f30327h;
            this.f30327h = length;
        }
        iVar.f30372Q++;
        iVar.a(cVar);
        int i17 = this.f30320a + 1;
        this.f30320a = i17;
        if (!this.f30329j) {
            this.f30328i++;
        }
        int[] iArr7 = this.f30324e;
        if (i17 >= iArr7.length) {
            this.f30329j = true;
        }
        if (this.f30328i >= iArr7.length) {
            this.f30329j = true;
            this.f30328i = iArr7.length - 1;
        }
    }

    @Override // p156u.b
    public final void k(float f8) {
        int i8 = this.f30327h;
        for (int i9 = 0; i8 != -1 && i9 < this.f30320a; i9++) {
            float[] fArr = this.f30326g;
            fArr[i8] = fArr[i8] / f8;
            i8 = this.f30325f[i8];
        }
    }

    public final String toString() {
        int i8 = this.f30327h;
        String string = HttpUrl.FRAGMENT_ENCODE_SET;
        for (int i9 = 0; i8 != -1 && i9 < this.f30320a; i9++) {
            StringBuilder sbO = U2.o(U2.A(string, " -> "));
            sbO.append(this.f30326g[i8]);
            sbO.append(" : ");
            StringBuilder sbO2 = U2.o(sbO.toString());
            sbO2.append(((i[]) this.f30322c.f27239J)[this.f30324e[i8]]);
            string = sbO2.toString();
            i8 = this.f30325f[i8];
        }
        return string;
    }
}
