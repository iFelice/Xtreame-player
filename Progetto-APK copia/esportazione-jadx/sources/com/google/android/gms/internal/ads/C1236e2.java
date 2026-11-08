package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.e2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1236e2 implements W1 {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final byte[] f18463N = {0, 7, 8, 15};

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final byte[] f18464O = {0, 119, -120, -1};

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final byte[] f18465P = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Paint f18466G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Paint f18467H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Canvas f18468I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p142s1.b f18469J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Z1 f18470K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p142s1.g f18471L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Bitmap f18472M;

    public C1236e2(List list) {
        C1534jr c1534jr = new C1534jr((byte[]) list.get(0));
        int iA = c1534jr.A();
        int iA2 = c1534jr.A();
        Paint paint = new Paint();
        this.f18466G = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f18467H = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f18468I = new Canvas();
        int i8 = 719;
        this.f18469J = new p142s1.b(i8, 575, 0, i8, 0, 575);
        this.f18470K = new Z1(0, g(), h(), i());
        this.f18471L = new p142s1.g(iA, iA2, 2);
    }

    public static int a(int i8, int i9, int i10, int i11) {
        return (i8 << 24) | (i9 << 16) | (i10 << 8) | i11;
    }

    public static Z1 b(C1286f0 c1286f0, int i8) {
        int[] iArr;
        int iG;
        int iG2;
        int iG3;
        int iG4;
        int i9 = 8;
        int iG5 = c1286f0.g(8);
        c1286f0.v(8);
        int[] iArrG = g();
        int[] iArrH = h();
        int[] iArrI = i();
        int i10 = i8 - 2;
        while (i10 > 0) {
            int iG6 = c1286f0.g(i9);
            int iG7 = c1286f0.g(i9);
            if ((iG7 & 128) != 0) {
                iArr = iArrG;
            } else {
                iArr = (iG7 & 64) != 0 ? iArrH : iArrI;
            }
            if ((iG7 & 1) != 0) {
                iG3 = c1286f0.g(i9);
                iG4 = c1286f0.g(i9);
                iG = c1286f0.g(i9);
                iG2 = c1286f0.g(i9);
                i10 -= 6;
            } else {
                int iG8 = c1286f0.g(6) << 2;
                int iG9 = c1286f0.g(4) << 4;
                i10 -= 4;
                iG = c1286f0.g(4) << 4;
                iG2 = c1286f0.g(2) << 6;
                iG3 = iG8;
                iG4 = iG9;
            }
            if (iG3 == 0) {
                iG2 = 255;
            }
            if (iG3 == 0) {
                iG = 0;
            }
            if (iG3 == 0) {
                iG4 = 0;
            }
            double d6 = iG3;
            double d8 = iG4 - 128;
            double d9 = iG - 128;
            iArr[iG6] = a((byte) (255 - (iG2 & 255)), Math.max(0, Math.min((int) ((1.402d * d8) + d6), 255)), Math.max(0, Math.min((int) ((d6 - (0.34414d * d9)) - (d8 * 0.71414d)), 255)), Math.max(0, Math.min((int) ((d9 * 1.772d) + d6), 255)));
            iG5 = iG5;
            i9 = 8;
        }
        return new Z1(iG5, iArrG, iArrH, iArrI);
    }

    public static C1030a2 c(C1286f0 c1286f0) {
        byte[] bArr;
        int iG = c1286f0.g(16);
        c1286f0.v(4);
        int iG2 = c1286f0.g(2);
        boolean zX = c1286f0.x();
        c1286f0.v(1);
        byte[] bArr2 = Et.f13239f;
        if (iG2 != 1) {
            if (iG2 == 0) {
                int iG3 = c1286f0.g(16);
                int iG4 = c1286f0.g(16);
                if (iG3 > 0) {
                    bArr2 = new byte[iG3];
                    p113o3.r.M(c1286f0.f18647d == 0);
                    System.arraycopy(c1286f0.f18645b, c1286f0.f18646c, bArr2, 0, iG3);
                    c1286f0.f18646c += iG3;
                    c1286f0.y();
                }
                if (iG4 > 0) {
                    bArr = new byte[iG4];
                    p113o3.r.M(c1286f0.f18647d == 0);
                    System.arraycopy(c1286f0.f18645b, c1286f0.f18646c, bArr, 0, iG4);
                    c1286f0.f18646c += iG4;
                    c1286f0.y();
                }
            }
            return new C1030a2(iG, zX, bArr2, bArr);
        }
        c1286f0.v(c1286f0.g(8) * 16);
        bArr = bArr2;
        return new C1030a2(iG, zX, bArr2, bArr);
    }

    /* JADX WARN: Code duplicated, block: B:116:0x020f  */
    /* JADX WARN: Code duplicated, block: B:120:0x021e A[LOOP:3: B:89:0x016b->B:120:0x021e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:142:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x0219 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x013a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0147 A[LOOP:2: B:40:0x00ab->B:76:0x0147, LOOP_END] */
    public static void e(byte[] bArr, int[] iArr, int i8, int i9, int i10, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int i11;
        int iG;
        int i12;
        int iG2;
        int iG3;
        boolean z7;
        int iG4;
        C1286f0 c1286f0 = new C1286f0(bArr, bArr.length);
        int i13 = i9;
        int i14 = i10;
        byte[] bArrF = null;
        byte[] bArrF2 = null;
        byte[] bArrF3 = null;
        while (c1286f0.a() != 0) {
            int i15 = 8;
            int iG5 = c1286f0.g(8);
            if (iG5 != 240) {
                int i16 = 3;
                int i17 = 4;
                switch (iG5) {
                    case 16:
                        int i18 = 1;
                        if (i8 == 3) {
                            if (bArrF == null) {
                                bArr3 = f18464O;
                                bArr2 = bArr3;
                            } else {
                                bArr2 = bArrF;
                            }
                        } else if (i8 != 2) {
                            bArr2 = null;
                        } else if (bArrF3 == null) {
                            bArr3 = f18463N;
                            bArr2 = bArr3;
                        } else {
                            bArr2 = bArrF3;
                        }
                        i11 = i13;
                        boolean z8 = false;
                        while (true) {
                            int iG6 = c1286f0.g(2);
                            if (iG6 == 0) {
                                if (c1286f0.x()) {
                                    z8 = z8;
                                    iG = c1286f0.g(3) + 3;
                                    iG6 = c1286f0.g(2);
                                } else if (c1286f0.x()) {
                                    iG6 = 0;
                                } else {
                                    int iG7 = c1286f0.g(2);
                                    if (iG7 == 0) {
                                        iG6 = 0;
                                        z8 = true;
                                    } else if (iG7 == i18) {
                                        z8 = z8;
                                        iG6 = 0;
                                        iG = 2;
                                    } else if (iG7 == 2) {
                                        z8 = z8;
                                        iG = c1286f0.g(4) + 12;
                                        iG6 = c1286f0.g(2);
                                    } else if (iG7 != 3) {
                                        z8 = z8;
                                        iG6 = 0;
                                    } else {
                                        z8 = z8;
                                        iG = c1286f0.g(8) + 29;
                                        iG6 = c1286f0.g(2);
                                    }
                                    iG = 0;
                                }
                                if (iG == 0 && paint != null) {
                                    int i19 = i14 + 1;
                                    float f8 = i14;
                                    if (bArr2 != 0) {
                                        iG6 = bArr2[iG6];
                                    }
                                    paint.setColor(iArr[iG6]);
                                    canvas.drawRect(i11, f8, i11 + iG, i19, paint);
                                }
                                i11 += iG;
                                if (z8) {
                                    c1286f0.l();
                                } else {
                                    z8 = z8;
                                    i18 = 1;
                                }
                                break;
                            }
                            iG = 1;
                            if (iG == 0) {
                            }
                            i11 += iG;
                            if (z8) {
                                c1286f0.l();
                            } else {
                                z8 = z8;
                                i18 = 1;
                            }
                            break;
                        }
                        break;
                    case 17:
                        byte[] bArr4 = i8 == 3 ? bArrF2 == null ? f18465P : bArrF2 : null;
                        i11 = i13;
                        boolean z9 = false;
                        while (true) {
                            int iG8 = c1286f0.g(i17);
                            if (iG8 == 0) {
                                if (c1286f0.x()) {
                                    if (c1286f0.x()) {
                                        int iG9 = c1286f0.g(2);
                                        if (iG9 == 0) {
                                            iG8 = 0;
                                        } else if (iG9 == 1) {
                                            z9 = z9;
                                            iG8 = 0;
                                            i12 = 2;
                                        } else if (iG9 == 2) {
                                            iG2 = c1286f0.g(i17) + 9;
                                            iG3 = c1286f0.g(i17);
                                        } else if (iG9 != i16) {
                                            z9 = z9;
                                            iG8 = 0;
                                            i12 = 0;
                                        } else {
                                            iG2 = c1286f0.g(i15) + 25;
                                            iG3 = c1286f0.g(i17);
                                        }
                                    } else {
                                        iG2 = c1286f0.g(2) + i17;
                                        iG3 = c1286f0.g(i17);
                                    }
                                    z9 = z9;
                                    i12 = iG2;
                                    iG8 = iG3;
                                } else {
                                    int iG10 = c1286f0.g(i16);
                                    if (iG10 != 0) {
                                        z9 = z9;
                                        i12 = iG10 + 2;
                                        iG8 = 0;
                                    } else {
                                        iG8 = 0;
                                        z9 = true;
                                        i12 = 0;
                                    }
                                }
                                if (i12 == 0 && paint != null) {
                                    int i20 = i14 + 1;
                                    float f9 = i14;
                                    if (bArr4 != 0) {
                                        iG8 = bArr4[iG8];
                                    }
                                    paint.setColor(iArr[iG8]);
                                    canvas.drawRect(i11, f9, i11 + i12, i20, paint);
                                }
                                i11 += i12;
                                if (z9) {
                                    c1286f0.l();
                                } else {
                                    z9 = z9;
                                    i17 = 4;
                                    i16 = 3;
                                    i15 = 8;
                                }
                                break;
                            }
                            i12 = 1;
                            if (i12 == 0) {
                            }
                            i11 += i12;
                            if (z9) {
                                c1286f0.l();
                            } else {
                                z9 = z9;
                                i17 = 4;
                                i16 = 3;
                                i15 = 8;
                            }
                            break;
                        }
                        break;
                    case 18:
                        int i21 = i13;
                        boolean z10 = false;
                        while (true) {
                            int iG11 = c1286f0.g(8);
                            if (iG11 != 0) {
                                z7 = z10;
                                iG4 = 1;
                            } else if (c1286f0.x()) {
                                z7 = z10;
                                iG4 = c1286f0.g(7);
                                iG11 = c1286f0.g(8);
                            } else {
                                int iG12 = c1286f0.g(7);
                                if (iG12 != 0) {
                                    z7 = z10;
                                    iG4 = iG12;
                                    iG11 = 0;
                                } else {
                                    iG11 = 0;
                                    z7 = true;
                                    iG4 = 0;
                                }
                            }
                            if (iG4 != 0 && paint != null) {
                                paint.setColor(iArr[iG11]);
                                canvas.drawRect(i21, i14, i21 + iG4, i14 + 1, paint);
                            }
                            i21 += iG4;
                            if (z7) {
                                i13 = i21;
                                continue;
                            } else {
                                z10 = z7;
                            }
                            break;
                        }
                        break;
                    default:
                        switch (iG5) {
                            case 32:
                                bArrF3 = f(4, 4, c1286f0);
                                break;
                            case 33:
                                bArrF = f(4, 8, c1286f0);
                                break;
                            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                bArrF2 = f(16, 8, c1286f0);
                                break;
                            default:
                                continue;
                        }
                        break;
                }
                i13 = i11;
            } else {
                i14 += 2;
                i13 = i9;
            }
        }
    }

    public static byte[] f(int i8, int i9, C1286f0 c1286f0) {
        byte[] bArr = new byte[i8];
        for (int i10 = 0; i10 < i8; i10++) {
            bArr[i10] = (byte) c1286f0.g(i9);
        }
        return bArr;
    }

    public static int[] g() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    public static int[] h() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i8 = 1; i8 < 16; i8++) {
            int i9 = i8 & 4;
            int i10 = i8 & 2;
            int i11 = i8 & 1;
            if (i8 < 8) {
                iArr[i8] = a(255, 1 != i11 ? 0 : 255, i10 != 0 ? 255 : 0, i9 != 0 ? 255 : 0);
            } else {
                iArr[i8] = a(255, 1 != i11 ? 0 : 127, i10 != 0 ? 127 : 0, i9 == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    public static int[] i() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i8 = 0; i8 < 256; i8++) {
            if (i8 < 8) {
                iArr[i8] = a(63, 1 != (i8 & 1) ? 0 : 255, (i8 & 2) != 0 ? 255 : 0, (i8 & 4) == 0 ? 0 : 255);
            } else {
                int i9 = i8 & 136;
                if (i9 == 0) {
                    iArr[i8] = a(255, (1 != (i8 & 1) ? 0 : 85) + ((i8 & 16) != 0 ? 170 : 0), ((i8 & 2) != 0 ? 85 : 0) + ((i8 & 32) != 0 ? 170 : 0), ((i8 & 4) == 0 ? 0 : 85) + ((i8 & 64) == 0 ? 0 : 170));
                } else if (i9 == 8) {
                    iArr[i8] = a(127, (1 != (i8 & 1) ? 0 : 85) + ((i8 & 16) != 0 ? 170 : 0), ((i8 & 2) != 0 ? 85 : 0) + ((i8 & 32) != 0 ? 170 : 0), ((i8 & 4) == 0 ? 0 : 85) + ((i8 & 64) == 0 ? 0 : 170));
                } else if (i9 == 128) {
                    iArr[i8] = a(255, (1 != (i8 & 1) ? 0 : 43) + 127 + ((i8 & 16) != 0 ? 85 : 0), ((i8 & 2) != 0 ? 43 : 0) + 127 + ((i8 & 32) != 0 ? 85 : 0), ((i8 & 4) == 0 ? 0 : 43) + 127 + ((i8 & 64) == 0 ? 0 : 85));
                } else if (i9 == 136) {
                    iArr[i8] = a(255, (1 != (i8 & 1) ? 0 : 43) + ((i8 & 16) != 0 ? 85 : 0), ((i8 & 2) != 0 ? 43 : 0) + ((i8 & 32) != 0 ? 85 : 0), ((i8 & 4) == 0 ? 0 : 43) + ((i8 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.W1
    public final void d(byte[] bArr, int i8, int i9, p149t0.d dVar) {
        p142s1.g gVar;
        S1 s7;
        int i10;
        int i11;
        C1133c2 c1133c2;
        int iG;
        int iG2;
        int i12;
        int iG3;
        C1236e2 c1236e2 = this;
        C1286f0 c1286f0 = new C1286f0(bArr, i8 + i9);
        c1286f0.t(i8);
        while (true) {
            int iA = c1286f0.a();
            gVar = c1236e2.f18471L;
            if (iA >= 48 && c1286f0.g(8) == 15) {
                int iG4 = c1286f0.g(8);
                int i13 = 16;
                int iG5 = c1286f0.g(16);
                int iG6 = c1286f0.g(16);
                int iC = c1286f0.c() + iG6;
                if (iG6 * 8 > c1286f0.a()) {
                    Zo.f("DvbParser", "Data field length exceeds limit");
                    c1286f0.v(c1286f0.a());
                } else {
                    switch (iG4) {
                        case 16:
                            if (iG5 == gVar.f30043a) {
                                V.b bVar = (V.b) gVar.f30051i;
                                c1286f0.g(8);
                                int iG7 = c1286f0.g(4);
                                int iG8 = c1286f0.g(2);
                                c1286f0.v(2);
                                SparseArray sparseArray = new SparseArray();
                                for (int i14 = iG6 - 2; i14 > 0; i14 -= 6) {
                                    int iG9 = c1286f0.g(8);
                                    c1286f0.v(8);
                                    sparseArray.put(iG9, new C1082b2(c1286f0.g(16), c1286f0.g(16)));
                                }
                                V.b bVar2 = new V.b(iG7, iG8, sparseArray);
                                if (bVar2.f6994c != 0) {
                                    gVar.f30051i = bVar2;
                                    ((SparseArray) gVar.f30045c).clear();
                                    ((SparseArray) gVar.f30046d).clear();
                                    ((SparseArray) gVar.f30047e).clear();
                                } else if (bVar != null) {
                                    if (bVar.f6993b != bVar2.f6993b) {
                                        gVar.f30051i = bVar2;
                                    }
                                }
                            }
                            break;
                        case 17:
                            V.b bVar3 = (V.b) gVar.f30051i;
                            if (iG5 == gVar.f30043a && bVar3 != null) {
                                int iG10 = c1286f0.g(8);
                                c1286f0.v(4);
                                boolean zX = c1286f0.x();
                                c1286f0.v(3);
                                int iG11 = c1286f0.g(16);
                                int iG12 = c1286f0.g(16);
                                c1286f0.g(3);
                                int iG13 = c1286f0.g(3);
                                c1286f0.v(2);
                                int iG14 = c1286f0.g(8);
                                int iG15 = c1286f0.g(8);
                                int iG16 = c1286f0.g(4);
                                int iG17 = c1286f0.g(2);
                                c1286f0.v(2);
                                int i15 = iG6 - 10;
                                SparseArray sparseArray2 = new SparseArray();
                                while (i15 > 0) {
                                    int iG18 = c1286f0.g(i13);
                                    int iG19 = c1286f0.g(2);
                                    c1286f0.g(2);
                                    int iG20 = c1286f0.g(12);
                                    c1286f0.v(4);
                                    int iG21 = c1286f0.g(12);
                                    int i16 = i15 - 6;
                                    if (iG19 == 1 || iG19 == 2) {
                                        c1286f0.g(8);
                                        c1286f0.g(8);
                                        i15 -= 8;
                                    } else {
                                        i15 = i16;
                                    }
                                    sparseArray2.put(iG18, new C1185d2(iG20, iG21));
                                    i13 = 16;
                                }
                                C1133c2 c1133c3 = new C1133c2(iG10, zX, iG11, iG12, iG13, iG14, iG15, iG16, iG17, sparseArray2);
                                int i17 = bVar3.f6994c;
                                Cloneable cloneable = gVar.f30045c;
                                if (i17 == 0 && (c1133c2 = (C1133c2) ((SparseArray) cloneable).get(iG10)) != null) {
                                    int i18 = 0;
                                    while (true) {
                                        SparseArray sparseArray3 = c1133c2.f18158j;
                                        if (i18 < sparseArray3.size()) {
                                            c1133c3.f18158j.put(sparseArray3.keyAt(i18), (C1185d2) sparseArray3.valueAt(i18));
                                            i18++;
                                        }
                                    }
                                }
                                ((SparseArray) cloneable).put(c1133c3.f18149a, c1133c3);
                            }
                            break;
                        case 18:
                            if (iG5 == gVar.f30043a) {
                                Z1 z1B = b(c1286f0, iG6);
                                ((SparseArray) gVar.f30046d).put(z1B.f17705a, z1B);
                            } else if (iG5 == gVar.f30044b) {
                                Z1 z1B2 = b(c1286f0, iG6);
                                ((SparseArray) gVar.f30048f).put(z1B2.f17705a, z1B2);
                            }
                            break;
                        case 19:
                            if (iG5 == gVar.f30043a) {
                                C1030a2 c1030a2C = c(c1286f0);
                                ((SparseArray) gVar.f30047e).put(c1030a2C.f17832a, c1030a2C);
                            } else if (iG5 == gVar.f30044b) {
                                C1030a2 c1030a2C2 = c(c1286f0);
                                ((SparseArray) gVar.f30049g).put(c1030a2C2.f17832a, c1030a2C2);
                            }
                            break;
                        case 20:
                            if (iG5 == gVar.f30043a) {
                                c1286f0.v(4);
                                boolean zX2 = c1286f0.x();
                                c1286f0.v(3);
                                int iG22 = c1286f0.g(16);
                                int iG23 = c1286f0.g(16);
                                if (zX2) {
                                    int iG24 = c1286f0.g(16);
                                    iG = c1286f0.g(16);
                                    iG3 = c1286f0.g(16);
                                    iG2 = c1286f0.g(16);
                                    i12 = iG24;
                                } else {
                                    iG = iG22;
                                    iG2 = iG23;
                                    i12 = 0;
                                    iG3 = 0;
                                }
                                gVar.f30050h = new p142s1.b(iG22, iG23, i12, iG, iG3, iG2);
                            }
                            break;
                    }
                    c1286f0.w(iC - c1286f0.c());
                }
            }
        }
        V.b bVar4 = (V.b) gVar.f30051i;
        if (bVar4 == null) {
            C1969sA c1969sA = AbstractC2073uA.f21207H;
            s7 = new S1(PA.f15340K, -9223372036854775807L, -9223372036854775807L);
        } else {
            p142s1.b bVar5 = (p142s1.b) gVar.f30050h;
            if (bVar5 == null) {
                bVar5 = c1236e2.f18469J;
            }
            Bitmap bitmap = c1236e2.f18472M;
            Canvas canvas = c1236e2.f18468I;
            if (bitmap == null || bVar5.f30019a + 1 != bitmap.getWidth() || bVar5.f30020b + 1 != c1236e2.f18472M.getHeight()) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bVar5.f30019a + 1, bVar5.f30020b + 1, Bitmap.Config.ARGB_8888);
                c1236e2.f18472M = bitmapCreateBitmap;
                canvas.setBitmap(bitmapCreateBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray sparseArray4 = (SparseArray) bVar4.f6995d;
            int i19 = 0;
            while (i19 < sparseArray4.size()) {
                canvas.save();
                C1082b2 c1082b2 = (C1082b2) sparseArray4.valueAt(i19);
                C1133c2 c1133c4 = (C1133c2) ((SparseArray) gVar.f30045c).get(sparseArray4.keyAt(i19));
                int i20 = c1082b2.f18008a + bVar5.f30021c;
                int i21 = c1082b2.f18009b + bVar5.f30023e;
                int iMin = Math.min(c1133c4.f18151c + i20, bVar5.f30022d);
                int i22 = c1133c4.f18152d;
                int i23 = i21 + i22;
                canvas.clipRect(i20, i21, iMin, Math.min(i23, bVar5.f30024f));
                SparseArray sparseArray5 = (SparseArray) gVar.f30046d;
                int i24 = c1133c4.f18154f;
                Z1 z7 = (Z1) sparseArray5.get(i24);
                if (z7 == null && (z7 = (Z1) ((SparseArray) gVar.f30048f).get(i24)) == null) {
                    z7 = c1236e2.f18470K;
                }
                int i25 = 0;
                while (true) {
                    SparseArray sparseArray6 = c1133c4.f18158j;
                    if (i25 < sparseArray6.size()) {
                        int iKeyAt = sparseArray6.keyAt(i25);
                        C1185d2 c1185d2 = (C1185d2) sparseArray6.valueAt(i25);
                        SparseArray sparseArray7 = sparseArray4;
                        C1030a2 c1030a2 = (C1030a2) ((SparseArray) gVar.f30047e).get(iKeyAt);
                        if (c1030a2 == null) {
                            c1030a2 = (C1030a2) ((SparseArray) gVar.f30049g).get(iKeyAt);
                        }
                        if (c1030a2 != null) {
                            Paint paint = c1030a2.f17833b ? null : c1236e2.f18466G;
                            int i26 = c1185d2.f18294a + i20;
                            int i27 = c1185d2.f18295b + i21;
                            int i28 = c1133c4.f18153e;
                            int[] iArr = i28 == 3 ? z7.f17708d : i28 == 2 ? z7.f17707c : z7.f17706b;
                            i11 = i23;
                            Paint paint2 = paint;
                            e(c1030a2.f17834c, iArr, i28, i26, i27, paint2, canvas);
                            e(c1030a2.f17835d, iArr, i28, i26, i27 + 1, paint2, canvas);
                        } else {
                            i11 = i23;
                        }
                        i25++;
                        i20 = i20;
                        c1133c4 = c1133c4;
                        i21 = i21;
                        sparseArray4 = sparseArray7;
                        gVar = gVar;
                        arrayList = arrayList;
                        bVar5 = bVar5;
                        i23 = i11;
                        z7 = z7;
                        i19 = i19;
                        i22 = i22;
                        c1236e2 = this;
                    } else {
                        SparseArray sparseArray8 = sparseArray4;
                        Z1 z8 = z7;
                        p142s1.b bVar6 = bVar5;
                        ArrayList arrayList2 = arrayList;
                        p142s1.g gVar2 = gVar;
                        int i29 = i23;
                        int i30 = i22;
                        int i31 = i21;
                        int i32 = i20;
                        C1133c2 c1133c5 = c1133c4;
                        int i33 = i19;
                        float f8 = i31;
                        float f9 = i32;
                        boolean z9 = c1133c5.f18150b;
                        int i34 = c1133c5.f18151c;
                        if (z9) {
                            int i35 = c1133c5.f18153e;
                            int i36 = i35 == 3 ? z8.f17708d[c1133c5.f18155g] : i35 == 2 ? z8.f17707c[c1133c5.f18156h] : z8.f17706b[c1133c5.f18157i];
                            i10 = i32;
                            c1236e2 = this;
                            Paint paint3 = c1236e2.f18467H;
                            paint3.setColor(i36);
                            canvas.drawRect(f9, f8, i10 + i34, i29, paint3);
                        } else {
                            i10 = i32;
                            c1236e2 = this;
                        }
                        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(c1236e2.f18472M, i10, i31, i34, i30);
                        bVar5 = bVar6;
                        float f10 = bVar5.f30019a;
                        float f11 = f9 / f10;
                        float f12 = bVar5.f30020b;
                        arrayList2.add(new C1063ak(null, null, null, bitmapCreateBitmap2, f8 / f12, 0, 0, f11, 0, Integer.MIN_VALUE, -3.4028235E38f, i34 / f10, i30 / f12, Integer.MIN_VALUE, 0.0f));
                        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                        canvas.restore();
                        i19 = i33 + 1;
                        arrayList = arrayList2;
                        sparseArray4 = sparseArray8;
                        gVar = gVar2;
                    }
                }
            }
            s7 = new S1(arrayList, -9223372036854775807L, -9223372036854775807L);
        }
        dVar.mo4zza(s7);
    }
}
