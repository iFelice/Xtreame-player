package p142s1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.CO;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.List;
import p110o0.b;
import p117p0.D;
import p117p0.E;
import p117p0.InterfaceC3172j;
import p117p0.M;
import p117p0.x;
import p126q1.a;
import p126q1.d;
import p126q1.l;
import p126q1.m;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class h implements m {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final byte[] f30052N = {0, 7, 8, 15};

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final byte[] f30053O = {0, 119, -120, -1};

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final byte[] f30054P = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Paint f30055G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Paint f30056H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Canvas f30057I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final b f30058J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final a f30059K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final g f30060L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Bitmap f30061M;

    public h(List list) {
        E e8 = new E((byte[]) list.get(0));
        int iF = e8.F();
        int iF2 = e8.F();
        Paint paint = new Paint();
        this.f30055G = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f30056H = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f30057I = new Canvas();
        this.f30058J = new b(719, 575, 0, 719, 0, 575);
        this.f30059K = new a(0, new int[]{0, -1, -16777216, -8421505}, e(), f());
        this.f30060L = new g(iF, iF2, 0);
    }

    public static byte[] d(int i8, int i9, D d6) {
        byte[] bArr = new byte[i8];
        for (int i10 = 0; i10 < i8; i10++) {
            bArr[i10] = (byte) d6.i(i9);
        }
        return bArr;
    }

    public static int[] e() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i8 = 1; i8 < 16; i8++) {
            if (i8 < 8) {
                iArr[i8] = h(255, (i8 & 1) != 0 ? 255 : 0, (i8 & 2) != 0 ? 255 : 0, (i8 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i8] = h(255, (i8 & 1) != 0 ? 127 : 0, (i8 & 2) != 0 ? 127 : 0, (i8 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    public static int[] f() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i8 = 0; i8 < 256; i8++) {
            if (i8 < 8) {
                iArr[i8] = h(63, (i8 & 1) != 0 ? 255 : 0, (i8 & 2) != 0 ? 255 : 0, (i8 & 4) == 0 ? 0 : 255);
            } else {
                int i9 = i8 & 136;
                if (i9 == 0) {
                    iArr[i8] = h(255, ((i8 & 1) != 0 ? 85 : 0) + ((i8 & 16) != 0 ? 170 : 0), ((i8 & 2) != 0 ? 85 : 0) + ((i8 & 32) != 0 ? 170 : 0), ((i8 & 4) == 0 ? 0 : 85) + ((i8 & 64) == 0 ? 0 : 170));
                } else if (i9 == 8) {
                    iArr[i8] = h(127, ((i8 & 1) != 0 ? 85 : 0) + ((i8 & 16) != 0 ? 170 : 0), ((i8 & 2) != 0 ? 85 : 0) + ((i8 & 32) != 0 ? 170 : 0), ((i8 & 4) == 0 ? 0 : 85) + ((i8 & 64) == 0 ? 0 : 170));
                } else if (i9 == 128) {
                    iArr[i8] = h(255, ((i8 & 1) != 0 ? 43 : 0) + 127 + ((i8 & 16) != 0 ? 85 : 0), ((i8 & 2) != 0 ? 43 : 0) + 127 + ((i8 & 32) != 0 ? 85 : 0), ((i8 & 4) == 0 ? 0 : 43) + 127 + ((i8 & 64) == 0 ? 0 : 85));
                } else if (i9 == 136) {
                    iArr[i8] = h(255, ((i8 & 1) != 0 ? 43 : 0) + ((i8 & 16) != 0 ? 85 : 0), ((i8 & 2) != 0 ? 43 : 0) + ((i8 & 32) != 0 ? 85 : 0), ((i8 & 4) == 0 ? 0 : 43) + ((i8 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public static int h(int i8, int i9, int i10, int i11) {
        return (i8 << 24) | (i9 << 16) | (i10 << 8) | i11;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:101:0x01bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x01be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:105:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:106:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:107:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:108:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:110:0x0201 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:114:0x022b  */
    /* JADX WARN: Code duplicated, block: B:118:0x023a A[LOOP:3: B:88:0x0183->B:118:0x023a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:131:0x0158 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x0235 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0150  */
    /* JADX WARN: Code duplicated, block: B:75:0x015e A[LOOP:2: B:41:0x00b6->B:75:0x015e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:90:0x0189  */
    /* JADX WARN: Code duplicated, block: B:92:0x0192  */
    /* JADX WARN: Code duplicated, block: B:94:0x0198  */
    /* JADX WARN: Code duplicated, block: B:95:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:97:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:98:0x01b4  */
    public static void i(byte[] bArr, int[] iArr, int i8, int i9, int i10, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int i11;
        boolean z7;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z8;
        int i18;
        byte[] bArr4 = null;
        D d6 = new D(bArr, 0, (Object) null);
        int i19 = i9;
        int i20 = i10;
        byte[] bArrD = null;
        byte[] bArrD2 = null;
        byte[] bArrD3 = null;
        while (d6.b() != 0) {
            int i21 = 8;
            int i22 = d6.i(8);
            if (i22 != 240) {
                int i23 = 2;
                int i24 = 3;
                int i25 = 4;
                switch (i22) {
                    case 16:
                        if (i8 == 3) {
                            bArr3 = bArrD == null ? f30053O : bArrD;
                        } else {
                            if (i8 == 2) {
                                bArr3 = bArrD3 == null ? f30052N : bArrD3;
                            } else {
                                bArr2 = null;
                            }
                            i11 = i19;
                            z7 = false;
                            while (true) {
                                i12 = d6.i(2);
                                if (i12 == 0) {
                                    if (d6.h()) {
                                        i14 = d6.i(3) + 3;
                                        i12 = d6.i(2);
                                        z7 = z7;
                                    } else if (d6.h()) {
                                        i12 = 0;
                                    } else {
                                        i13 = d6.i(2);
                                        if (i13 != 0) {
                                            i12 = 0;
                                            z7 = true;
                                        } else if (i13 != 1) {
                                            z7 = z7;
                                            i12 = 0;
                                            i14 = 2;
                                        } else if (i13 != 2) {
                                            i14 = d6.i(4) + 12;
                                            i12 = d6.i(2);
                                            z7 = z7;
                                        } else if (i13 != 3) {
                                            z7 = z7;
                                            i12 = 0;
                                        } else {
                                            i14 = d6.i(8) + 29;
                                            i12 = d6.i(2);
                                            z7 = z7;
                                        }
                                        i14 = 0;
                                    }
                                    if (i14 == 0 && paint != null) {
                                        if (bArr2 != 0) {
                                            i12 = bArr2[i12];
                                        }
                                        paint.setColor(iArr[i12]);
                                        canvas.drawRect(i11, i20, i11 + i14, i20 + 1, paint);
                                    }
                                    i11 += i14;
                                    if (z7) {
                                        d6.c();
                                    } else {
                                        z7 = z7;
                                    }
                                    break;
                                }
                                i14 = 1;
                                if (i14 == 0) {
                                }
                                i11 += i14;
                                if (z7) {
                                    d6.c();
                                } else {
                                    z7 = z7;
                                }
                            }
                        }
                        bArr2 = bArr3;
                        i11 = i19;
                        z7 = false;
                        while (true) {
                            i12 = d6.i(2);
                            if (i12 == 0) {
                                if (d6.h()) {
                                    i14 = d6.i(3) + 3;
                                    i12 = d6.i(2);
                                    z7 = z7;
                                } else if (d6.h()) {
                                    i12 = 0;
                                } else {
                                    i13 = d6.i(2);
                                    if (i13 != 0) {
                                        i12 = 0;
                                        z7 = true;
                                    } else if (i13 != 1) {
                                        z7 = z7;
                                        i12 = 0;
                                        i14 = 2;
                                    } else if (i13 != 2) {
                                        i14 = d6.i(4) + 12;
                                        i12 = d6.i(2);
                                        z7 = z7;
                                    } else if (i13 != 3) {
                                        z7 = z7;
                                        i12 = 0;
                                    } else {
                                        i14 = d6.i(8) + 29;
                                        i12 = d6.i(2);
                                        z7 = z7;
                                    }
                                    i14 = 0;
                                }
                                if (i14 == 0) {
                                }
                                i11 += i14;
                                if (z7) {
                                    d6.c();
                                } else {
                                    z7 = z7;
                                }
                                break;
                            }
                            i14 = 1;
                            if (i14 == 0) {
                            }
                            i11 += i14;
                            if (z7) {
                                d6.c();
                            } else {
                                z7 = z7;
                            }
                            break;
                        }
                        break;
                    case 17:
                        byte[] bArr5 = i8 == 3 ? bArrD2 == null ? f30054P : bArrD2 : bArr4;
                        int i26 = i19;
                        boolean z9 = false;
                        while (true) {
                            int i27 = d6.i(i25);
                            if (i27 == 0) {
                                if (d6.h()) {
                                    if (d6.h()) {
                                        int i28 = d6.i(i23);
                                        if (i28 == 0) {
                                            i27 = 0;
                                        } else if (i28 == 1) {
                                            z9 = z9;
                                            i27 = 0;
                                            i15 = 2;
                                        } else if (i28 == i23) {
                                            i16 = d6.i(i25) + 9;
                                            i17 = d6.i(i25);
                                        } else if (i28 != i24) {
                                            z9 = z9;
                                            i27 = 0;
                                            i15 = 0;
                                        } else {
                                            i16 = d6.i(i21) + 25;
                                            i17 = d6.i(i25);
                                        }
                                    } else {
                                        i16 = d6.i(i23) + i25;
                                        i17 = d6.i(i25);
                                    }
                                    i15 = i16;
                                    i27 = i17;
                                    z9 = z9;
                                } else {
                                    int i29 = d6.i(i24);
                                    if (i29 != 0) {
                                        z9 = z9;
                                        i15 = i29 + 2;
                                        i27 = 0;
                                    } else {
                                        i27 = 0;
                                        z9 = true;
                                        i15 = 0;
                                    }
                                }
                                if (i15 == 0 && paint != null) {
                                    if (bArr5 != 0) {
                                        i27 = bArr5[i27];
                                    }
                                    paint.setColor(iArr[i27]);
                                    canvas.drawRect(i26, i20, i26 + i15, i20 + 1, paint);
                                }
                                i26 += i15;
                                if (z9) {
                                    d6.c();
                                    i19 = i26;
                                    continue;
                                } else {
                                    z9 = z9;
                                    i25 = 4;
                                    i24 = 3;
                                    i23 = 2;
                                    i21 = 8;
                                }
                                break;
                            }
                            i15 = 1;
                            if (i15 == 0) {
                            }
                            i26 += i15;
                            if (z9) {
                                d6.c();
                                i19 = i26;
                                continue;
                            } else {
                                z9 = z9;
                                i25 = 4;
                                i24 = 3;
                                i23 = 2;
                                i21 = 8;
                            }
                            break;
                        }
                        break;
                    case 18:
                        i11 = i19;
                        boolean z10 = false;
                        while (true) {
                            int i30 = d6.i(8);
                            if (i30 != 0) {
                                z8 = z10;
                                i18 = 1;
                            } else if (d6.h()) {
                                z8 = z10;
                                i18 = d6.i(7);
                                i30 = d6.i(8);
                            } else {
                                int i31 = d6.i(7);
                                if (i31 != 0) {
                                    z8 = z10;
                                    i18 = i31;
                                    i30 = 0;
                                } else {
                                    i30 = 0;
                                    z8 = true;
                                    i18 = 0;
                                }
                            }
                            if (i18 != 0 && paint != null) {
                                paint.setColor(iArr[i30]);
                                canvas.drawRect(i11, i20, i11 + i18, i20 + 1, paint);
                            }
                            i11 += i18;
                            if (!z8) {
                                z10 = z8;
                            }
                            break;
                        }
                        break;
                    default:
                        switch (i22) {
                            case 32:
                                bArrD3 = d(4, 4, d6);
                                break;
                            case 33:
                                bArrD = d(4, 8, d6);
                                break;
                            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                                bArrD2 = d(16, 8, d6);
                                continue;
                        }
                        break;
                }
                i19 = i11;
            } else {
                i20 += 2;
                i19 = i9;
            }
            bArr4 = null;
        }
    }

    public static a j(int i8, D d6) {
        int[] iArr;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = 8;
        int i15 = d6.i(8);
        d6.u(8);
        int i16 = 2;
        int i17 = i8 - 2;
        int[] iArr2 = {0, -1, -16777216, -8421505};
        int[] iArrE = e();
        int[] iArrF = f();
        while (i17 > 0) {
            int i18 = d6.i(i14);
            int i19 = d6.i(i14);
            if ((i19 & 128) != 0) {
                iArr = iArr2;
            } else {
                iArr = (i19 & 64) != 0 ? iArrE : iArrF;
            }
            if ((i19 & 1) != 0) {
                i12 = d6.i(i14);
                i13 = d6.i(i14);
                i9 = d6.i(i14);
                i11 = d6.i(i14);
                i10 = i17 - 6;
            } else {
                int i20 = d6.i(6) << i16;
                int i21 = d6.i(4) << 4;
                i9 = d6.i(4) << 4;
                i10 = i17 - 4;
                i11 = d6.i(i16) << 6;
                i12 = i20;
                i13 = i21;
            }
            if (i12 == 0) {
                i13 = 0;
                i9 = 0;
                i11 = 255;
            }
            double d8 = i12;
            double d9 = i13 - 128;
            double d10 = i9 - 128;
            iArr[i18] = h((byte) (255 - (i11 & 255)), M.i((int) ((1.402d * d9) + d8), 0, 255), M.i((int) ((d8 - (0.34414d * d10)) - (d9 * 0.71414d)), 0, 255), M.i((int) ((d10 * 1.772d) + d8), 0, 255));
            i17 = i10;
            i15 = i15;
            iArrF = iArrF;
            i14 = 8;
            i16 = 2;
        }
        return new a(i15, iArr2, iArrE, iArrF);
    }

    public static c k(D d6) {
        byte[] bArr;
        int i8 = d6.i(16);
        d6.u(4);
        int i9 = d6.i(2);
        boolean zH = d6.h();
        d6.u(1);
        byte[] bArr2 = M.f28051b;
        if (i9 != 1) {
            if (i9 == 0) {
                int i10 = d6.i(16);
                int i11 = d6.i(16);
                if (i10 > 0) {
                    bArr2 = new byte[i10];
                    d6.l(bArr2, i10);
                }
                if (i11 > 0) {
                    bArr = new byte[i11];
                    d6.l(bArr, i11);
                }
            }
            return new c(i8, zH, bArr2, bArr);
        }
        d6.u(d6.i(8) * 16);
        bArr = bArr2;
        return new c(i8, zH, bArr2, bArr);
    }

    @Override // p126q1.m
    public final void a() {
        g gVar = this.f30060L;
        ((SparseArray) gVar.f30045c).clear();
        ((SparseArray) gVar.f30046d).clear();
        ((SparseArray) gVar.f30047e).clear();
        ((SparseArray) gVar.f30048f).clear();
        ((SparseArray) gVar.f30049g).clear();
        gVar.f30050h = null;
        gVar.f30051i = null;
    }

    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, l lVar, InterfaceC3172j interfaceC3172j) {
        g gVar;
        a aVar;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        e eVar;
        int i15;
        int i16;
        int i17;
        int i18;
        D d6 = new D(bArr, i8 + i9);
        d6.r(i8);
        while (true) {
            int iB = d6.b();
            gVar = this.f30060L;
            if (iB >= 48 && d6.i(8) == 15) {
                int i19 = d6.i(8);
                int i20 = 16;
                int i21 = d6.i(16);
                int i22 = d6.i(16);
                int iF = d6.f() + i22;
                if (i22 * 8 > d6.b()) {
                    x.f("DvbParser", "Data field length exceeds limit");
                    d6.u(d6.b());
                } else {
                    switch (i19) {
                        case 16:
                            if (i21 == gVar.f30043a) {
                                CO co = (CO) gVar.f30051i;
                                int i23 = d6.i(8);
                                int i24 = d6.i(4);
                                int i25 = d6.i(2);
                                d6.u(2);
                                int i26 = i22 - 2;
                                SparseArray sparseArray = new SparseArray();
                                while (i26 > 0) {
                                    int i27 = d6.i(8);
                                    d6.u(8);
                                    i26 -= 6;
                                    sparseArray.put(i27, new d(d6.i(16), d6.i(16)));
                                }
                                CO co2 = new CO();
                                co2.f12628a = i23;
                                co2.f12629b = i24;
                                co2.f12630c = i25;
                                co2.f12631d = sparseArray;
                                if (i25 != 0) {
                                    gVar.f30051i = co2;
                                    ((SparseArray) gVar.f30045c).clear();
                                    ((SparseArray) gVar.f30046d).clear();
                                    ((SparseArray) gVar.f30047e).clear();
                                } else if (co != null && co.f12629b != i24) {
                                    gVar.f30051i = co2;
                                }
                            }
                            break;
                        case 17:
                            CO co3 = (CO) gVar.f30051i;
                            if (i21 == gVar.f30043a && co3 != null) {
                                int i28 = d6.i(8);
                                d6.u(4);
                                boolean zH = d6.h();
                                d6.u(3);
                                int i29 = d6.i(16);
                                int i30 = d6.i(16);
                                d6.i(3);
                                int i31 = d6.i(3);
                                d6.u(2);
                                int i32 = d6.i(8);
                                int i33 = d6.i(8);
                                int i34 = d6.i(4);
                                int i35 = d6.i(2);
                                d6.u(2);
                                int i36 = i22 - 10;
                                SparseArray sparseArray2 = new SparseArray();
                                while (i36 > 0) {
                                    int i37 = d6.i(i20);
                                    int i38 = d6.i(2);
                                    d6.i(2);
                                    int i39 = d6.i(12);
                                    d6.u(4);
                                    int i40 = d6.i(12);
                                    int i41 = i36 - 6;
                                    if (i38 == 1 || i38 == 2) {
                                        d6.i(8);
                                        d6.i(8);
                                        i36 -= 8;
                                    } else {
                                        i36 = i41;
                                    }
                                    sparseArray2.put(i37, new f(i39, i40));
                                    i20 = 16;
                                }
                                e eVar2 = new e(i28, zH, i29, i30, i31, i32, i33, i34, i35, sparseArray2);
                                int i42 = co3.f12630c;
                                Cloneable cloneable = gVar.f30045c;
                                if (i42 == 0 && (eVar = (e) ((SparseArray) cloneable).get(i28)) != null) {
                                    int i43 = 0;
                                    while (true) {
                                        SparseArray sparseArray3 = eVar.f30040j;
                                        if (i43 < sparseArray3.size()) {
                                            eVar2.f30040j.put(sparseArray3.keyAt(i43), (f) sparseArray3.valueAt(i43));
                                            i43++;
                                        }
                                    }
                                }
                                ((SparseArray) cloneable).put(eVar2.f30031a, eVar2);
                            }
                            break;
                        case 18:
                            if (i21 == gVar.f30043a) {
                                a aVarJ = j(i22, d6);
                                ((SparseArray) gVar.f30046d).put(aVarJ.f30015a, aVarJ);
                            } else if (i21 == gVar.f30044b) {
                                a aVarJ2 = j(i22, d6);
                                ((SparseArray) gVar.f30048f).put(aVarJ2.f30015a, aVarJ2);
                            }
                            break;
                        case 19:
                            if (i21 == gVar.f30043a) {
                                c cVarK = k(d6);
                                ((SparseArray) gVar.f30047e).put(cVarK.f30025a, cVarK);
                            } else if (i21 == gVar.f30044b) {
                                c cVarK2 = k(d6);
                                ((SparseArray) gVar.f30049g).put(cVarK2.f30025a, cVarK2);
                            }
                            break;
                        case 20:
                            if (i21 == gVar.f30043a) {
                                d6.u(4);
                                boolean zH2 = d6.h();
                                d6.u(3);
                                int i44 = d6.i(16);
                                int i45 = d6.i(16);
                                if (zH2) {
                                    int i46 = d6.i(16);
                                    i15 = d6.i(16);
                                    i18 = d6.i(16);
                                    i16 = d6.i(16);
                                    i17 = i46;
                                } else {
                                    i15 = i44;
                                    i16 = i45;
                                    i17 = 0;
                                    i18 = 0;
                                }
                                gVar.f30050h = new b(i44, i45, i17, i15, i18, i16);
                            }
                            break;
                    }
                    d6.v(iF - d6.f());
                }
            }
        }
        CO co4 = (CO) gVar.f30051i;
        if (co4 == null) {
            F f8 = H.f31804H;
            aVar = new a(d0.f31844K, -9223372036854775807L, -9223372036854775807L);
        } else {
            b bVar = (b) gVar.f30050h;
            if (bVar == null) {
                bVar = this.f30058J;
            }
            Bitmap bitmap = this.f30061M;
            Canvas canvas = this.f30057I;
            if (bitmap == null || bVar.f30019a + 1 != bitmap.getWidth() || bVar.f30020b + 1 != this.f30061M.getHeight()) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bVar.f30019a + 1, bVar.f30020b + 1, Bitmap.Config.ARGB_8888);
                this.f30061M = bitmapCreateBitmap;
                canvas.setBitmap(bitmapCreateBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray sparseArray4 = (SparseArray) co4.f12631d;
            int i47 = 0;
            while (i47 < sparseArray4.size()) {
                canvas.save();
                d dVar = (d) sparseArray4.valueAt(i47);
                e eVar3 = (e) ((SparseArray) gVar.f30045c).get(sparseArray4.keyAt(i47));
                int i48 = dVar.f30029a + bVar.f30021c;
                int i49 = dVar.f30030b + bVar.f30023e;
                int iMin = Math.min(eVar3.f30033c + i48, bVar.f30022d);
                int i50 = eVar3.f30034d;
                int i51 = i49 + i50;
                canvas.clipRect(i48, i49, iMin, Math.min(i51, bVar.f30024f));
                SparseArray sparseArray5 = (SparseArray) gVar.f30046d;
                int i52 = eVar3.f30036f;
                a aVar2 = (a) sparseArray5.get(i52);
                if (aVar2 == null && (aVar2 = (a) ((SparseArray) gVar.f30048f).get(i52)) == null) {
                    aVar2 = this.f30059K;
                }
                int i53 = 0;
                while (true) {
                    SparseArray sparseArray6 = eVar3.f30040j;
                    if (i53 < sparseArray6.size()) {
                        int iKeyAt = sparseArray6.keyAt(i53);
                        f fVar = (f) sparseArray6.valueAt(i53);
                        SparseArray sparseArray7 = sparseArray4;
                        c cVar = (c) ((SparseArray) gVar.f30047e).get(iKeyAt);
                        if (cVar == null) {
                            cVar = (c) ((SparseArray) gVar.f30049g).get(iKeyAt);
                        }
                        if (cVar != null) {
                            Paint paint = cVar.f30026b ? null : this.f30055G;
                            int i54 = fVar.f30041a + i48;
                            int i55 = fVar.f30042b + i49;
                            int i56 = eVar3.f30035e;
                            int[] iArr = i56 == 3 ? aVar2.f30018d : i56 == 2 ? aVar2.f30017c : aVar2.f30016b;
                            i12 = i51;
                            i13 = i49;
                            i14 = i48;
                            Paint paint2 = paint;
                            i(cVar.f30027c, iArr, i56, i54, i55, paint2, canvas);
                            i(cVar.f30028d, iArr, i56, i54, i55 + 1, paint2, canvas);
                        } else {
                            i12 = i51;
                            i13 = i49;
                            i14 = i48;
                        }
                        i53++;
                        eVar3 = eVar3;
                        sparseArray4 = sparseArray7;
                        gVar = gVar;
                        arrayList = arrayList;
                        bVar = bVar;
                        i51 = i12;
                        i49 = i13;
                        i48 = i14;
                        i47 = i47;
                        i50 = i50;
                    } else {
                        SparseArray sparseArray8 = sparseArray4;
                        b bVar2 = bVar;
                        ArrayList arrayList2 = arrayList;
                        g gVar2 = gVar;
                        int i57 = i51;
                        int i58 = i50;
                        int i59 = i49;
                        int i60 = i48;
                        e eVar4 = eVar3;
                        int i61 = i47;
                        boolean z7 = eVar4.f30032b;
                        int i62 = eVar4.f30033c;
                        if (z7) {
                            int i63 = eVar4.f30035e;
                            int i64 = i63 == 3 ? aVar2.f30018d[eVar4.f30037g] : i63 == 2 ? aVar2.f30017c[eVar4.f30038h] : aVar2.f30016b[eVar4.f30039i];
                            Paint paint3 = this.f30056H;
                            paint3.setColor(i64);
                            i11 = i60;
                            i10 = i59;
                            canvas.drawRect(i11, i10, i11 + i62, i57, paint3);
                        } else {
                            i10 = i59;
                            i11 = i60;
                        }
                        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.f30061M, i11, i10, i62, i58);
                        float f9 = bVar2.f30019a;
                        float f10 = i11 / f9;
                        float f11 = i10;
                        float f12 = bVar2.f30020b;
                        arrayList2.add(new b(null, null, null, bitmapCreateBitmap2, f11 / f12, 0, 0, f10, 0, Integer.MIN_VALUE, -3.4028235E38f, i62 / f9, i58 / f12, false, -16777216, Integer.MIN_VALUE, 0.0f, 0));
                        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                        canvas.restore();
                        i47 = i61 + 1;
                        arrayList = arrayList2;
                        bVar = bVar2;
                        sparseArray4 = sparseArray8;
                        gVar = gVar2;
                    }
                }
            }
            aVar = new a(arrayList, -9223372036854775807L, -9223372036854775807L);
        }
        interfaceC3172j.accept(aVar);
    }

    @Override // p126q1.m
    public final /* synthetic */ d c(int i8, byte[] bArr, int i9) {
        return U2.b(this, bArr, i8, i9);
    }

    @Override // p126q1.m
    public final int g() {
        return 2;
    }
}
