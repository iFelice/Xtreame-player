package p159u2;

import android.graphics.Bitmap;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import p096m2.l;
import p196z2.d;
import p196z2.h;

/* JADX INFO: loaded from: classes.dex */
public final class e implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f30471a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f30473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ByteBuffer f30474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f30475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public short[] f30476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f30477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f30478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f30479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f30480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f30481k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c f30482l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bitmap f30483m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f30484n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f30485o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f30486p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f30487q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f30488r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Boolean f30489s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f30472b = new int[256];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Bitmap.Config f30490t = Bitmap.Config.ARGB_8888;

    public e(l lVar, c cVar, ByteBuffer byteBuffer, int i8) {
        this.f30473c = lVar;
        this.f30482l = new c();
        synchronized (this) {
            try {
                if (i8 <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i8);
                }
                int iHighestOneBit = Integer.highestOneBit(i8);
                this.f30485o = 0;
                this.f30482l = cVar;
                this.f30481k = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f30474d = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.f30474d.order(ByteOrder.LITTLE_ENDIAN);
                this.f30484n = false;
                Iterator it = cVar.f30460e.iterator();
                while (it.hasNext()) {
                    if (((b) it.next()).f30451g == 3) {
                        this.f30484n = true;
                        break;
                    }
                }
                this.f30486p = iHighestOneBit;
                int i9 = cVar.f30461f;
                this.f30488r = i9 / iHighestOneBit;
                int i10 = cVar.f30462g;
                this.f30487q = i10 / iHighestOneBit;
                this.f30479i = this.f30473c.n(i9 * i10);
                l lVar2 = this.f30473c;
                int i11 = this.f30488r * this.f30487q;
                Object obj = lVar2.f27232I;
                this.f30480j = ((h) obj) == null ? new int[i11] : (int[]) ((h) obj).d(i11, int[].class);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Bitmap a() {
        Boolean bool = this.f30489s;
        Bitmap bitmapJ = ((d) this.f30473c.f27231H).j(this.f30488r, this.f30487q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f30490t);
        bitmapJ.setHasAlpha(true);
        return bitmapJ;
    }

    public final synchronized Bitmap b() {
        try {
            if (this.f30482l.f30458c <= 0 || this.f30481k < 0) {
                if (Log.isLoggable("e", 3)) {
                    Log.d("e", "Unable to decode frame, frameCount=" + this.f30482l.f30458c + ", framePointer=" + this.f30481k);
                }
                this.f30485o = 1;
            }
            int i8 = this.f30485o;
            if (i8 != 1 && i8 != 2) {
                this.f30485o = 0;
                if (this.f30475e == null) {
                    this.f30475e = this.f30473c.n(255);
                }
                b bVar = (b) this.f30482l.f30460e.get(this.f30481k);
                int i9 = this.f30481k - 1;
                b bVar2 = i9 >= 0 ? (b) this.f30482l.f30460e.get(i9) : null;
                int[] iArr = bVar.f30455k;
                if (iArr == null) {
                    iArr = this.f30482l.f30456a;
                }
                this.f30471a = iArr;
                if (iArr == null) {
                    if (Log.isLoggable("e", 3)) {
                        Log.d("e", "No valid color table found for frame #" + this.f30481k);
                    }
                    this.f30485o = 1;
                    return null;
                }
                if (bVar.f30450f) {
                    System.arraycopy(iArr, 0, this.f30472b, 0, iArr.length);
                    int[] iArr2 = this.f30472b;
                    this.f30471a = iArr2;
                    iArr2[bVar.f30452h] = 0;
                    if (bVar.f30451g == 2 && this.f30481k == 0) {
                        this.f30489s = Boolean.TRUE;
                    }
                }
                return d(bVar, bVar2);
            }
            if (Log.isLoggable("e", 3)) {
                Log.d("e", "Unable to decode frame, status=" + this.f30485o);
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.f30490t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v32, types: [short] */
    /* JADX WARN: Type inference failed for: r5v34 */
    public final Bitmap d(b bVar, b bVar2) {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        short s7;
        int i16;
        Bitmap bitmap;
        int i17;
        int[] iArr = this.f30480j;
        l lVar = this.f30473c;
        if (bVar2 == null) {
            Bitmap bitmap2 = this.f30483m;
            if (bitmap2 != null) {
                ((d) lVar.f27231H).a(bitmap2);
            }
            this.f30483m = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.f30451g == 3 && this.f30483m == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && (i16 = bVar2.f30451g) > 0) {
            if (i16 == 2) {
                if (bVar.f30450f) {
                    i17 = 0;
                } else {
                    c cVar = this.f30482l;
                    i17 = cVar.f30466k;
                    if (bVar.f30455k != null && cVar.f30465j == bVar.f30452h) {
                        i17 = 0;
                    }
                }
                int i18 = bVar2.f30448d;
                int i19 = this.f30486p;
                int i20 = i18 / i19;
                int i21 = bVar2.f30446b / i19;
                int i22 = bVar2.f30447c / i19;
                int i23 = bVar2.f30445a / i19;
                int i24 = this.f30488r;
                int i25 = (i21 * i24) + i23;
                int i26 = (i20 * i24) + i25;
                while (i25 < i26) {
                    int i27 = i25 + i22;
                    for (int i28 = i25; i28 < i27; i28++) {
                        iArr[i28] = i17;
                    }
                    i25 += this.f30488r;
                }
            } else if (i16 == 3 && (bitmap = this.f30483m) != null) {
                int i29 = this.f30488r;
                bitmap.getPixels(iArr, 0, i29, 0, 0, i29, this.f30487q);
            }
        }
        this.f30474d.position(bVar.f30454j);
        int i30 = bVar.f30447c * bVar.f30448d;
        byte[] bArr = this.f30479i;
        if (bArr == null || bArr.length < i30) {
            this.f30479i = lVar.n(i30);
        }
        byte[] bArr2 = this.f30479i;
        if (this.f30476f == null) {
            this.f30476f = new short[4096];
        }
        short[] sArr = this.f30476f;
        if (this.f30477g == null) {
            this.f30477g = new byte[4096];
        }
        byte[] bArr3 = this.f30477g;
        if (this.f30478h == null) {
            this.f30478h = new byte[4097];
        }
        byte[] bArr4 = this.f30478h;
        int i31 = this.f30474d.get() & 255;
        int i32 = 1 << i31;
        int i33 = i32 + 1;
        int i34 = i32 + 2;
        int i35 = i31 + 1;
        int i36 = (1 << i35) - 1;
        for (int i37 = 0; i37 < i32; i37++) {
            sArr[i37] = 0;
            bArr3[i37] = (byte) i37;
        }
        byte[] bArr5 = this.f30475e;
        int i38 = i35;
        int i39 = i34;
        int i40 = i36;
        int i41 = 0;
        int i42 = -1;
        int i43 = 0;
        int i44 = 0;
        int i45 = 0;
        int i46 = 0;
        int i47 = 0;
        int i48 = 0;
        int i49 = 0;
        while (i41 < i30) {
            if (i43 == 0) {
                int i50 = this.f30474d.get() & 255;
                if (i50 > 0) {
                    ByteBuffer byteBuffer = this.f30474d;
                    byteBuffer.get(this.f30475e, 0, Math.min(i50, byteBuffer.remaining()));
                }
                if (i50 <= 0) {
                    this.f30485o = 3;
                    break;
                }
                i43 = i50;
                i44 = 0;
            } else {
                i35 = i35;
                i41 = i41;
            }
            i46 += (bArr5[i44] & 255) << i45;
            i44++;
            i43--;
            i42 = i42;
            int i51 = i45 + 8;
            i39 = i39;
            i38 = i38;
            i41 = i41;
            bArr5 = bArr5;
            i48 = i48;
            while (true) {
                if (i51 < i38) {
                    i45 = i51;
                    break;
                }
                iArr = iArr;
                int i52 = i46 & i40;
                i46 >>= i38;
                i51 -= i38;
                if (i52 == i32) {
                    i39 = i34;
                    i40 = i36;
                    i38 = i35;
                    i42 = -1;
                } else {
                    if (i52 == i33) {
                        iArr = iArr;
                        i45 = i51;
                        break;
                    }
                    if (i42 == -1) {
                        bArr2[i47] = bArr3[i52];
                        i47++;
                        i41++;
                        i48 = i52;
                        i42 = i48;
                        i51 = i51;
                    } else {
                        if (i52 >= i39) {
                            bArr4[i49] = (byte) i48;
                            i49++;
                            s7 = i42;
                        } else {
                            s7 = i52;
                        }
                        while (s7 >= i32) {
                            bArr4[i49] = bArr3[s7];
                            i49++;
                            s7 = sArr[s7];
                        }
                        int i53 = bArr3[s7] & 255;
                        byte b8 = (byte) i53;
                        bArr2[i47] = b8;
                        while (true) {
                            i47++;
                            i41++;
                            if (i49 <= 0) {
                                break;
                            }
                            i49--;
                            bArr2[i47] = bArr4[i49];
                        }
                        if (i39 < 4096) {
                            sArr[i39] = (short) i42;
                            bArr3[i39] = b8;
                            i39++;
                            if ((i39 & i40) == 0 && i39 < 4096) {
                                i38++;
                                i40 += i39;
                            }
                        }
                        i42 = i52;
                        i51 = i51;
                        i48 = i53;
                    }
                }
            }
        }
        int[] iArr2 = iArr;
        Arrays.fill(bArr2, i47, i30, (byte) 0);
        if (bVar.f30449e || this.f30486p != 1) {
            int[] iArr3 = this.f30480j;
            int i54 = bVar.f30448d;
            int i55 = this.f30486p;
            int i56 = i54 / i55;
            int i57 = bVar.f30446b / i55;
            int i58 = bVar.f30447c / i55;
            int i59 = bVar.f30445a / i55;
            boolean z7 = this.f30481k == 0;
            int i60 = this.f30488r;
            int i61 = this.f30487q;
            byte[] bArr6 = this.f30479i;
            int[] iArr4 = this.f30471a;
            Boolean bool = this.f30489s;
            int i62 = 0;
            int i63 = 0;
            int i64 = 1;
            int i65 = 8;
            while (i62 < i56) {
                Boolean bool2 = bool;
                if (bVar.f30449e) {
                    if (i63 >= i56) {
                        int i66 = i64 + 1;
                        i8 = i56;
                        if (i66 == 2) {
                            i64 = i66;
                            i63 = 4;
                        } else if (i66 == 3) {
                            i64 = i66;
                            i63 = 2;
                            i65 = 4;
                        } else if (i66 != 4) {
                            i64 = i66;
                        } else {
                            i64 = i66;
                            i63 = 1;
                            i65 = 2;
                        }
                    } else {
                        i8 = i56;
                    }
                    i9 = i63 + i65;
                } else {
                    i8 = i56;
                    i9 = i63;
                    i63 = i62;
                }
                int i67 = i63 + i57;
                boolean z8 = i55 == 1;
                if (i67 < i61) {
                    int i68 = i67 * i60;
                    int i69 = i68 + i59;
                    int i70 = i69 + i58;
                    int i71 = i68 + i60;
                    if (i71 < i70) {
                        i70 = i71;
                    }
                    int i72 = i62 * i55 * bVar.f30447c;
                    if (z8) {
                        bool = bool2;
                        int i73 = i69;
                        while (i73 < i70) {
                            int i74 = i58;
                            int i75 = iArr4[bArr6[i72] & 255];
                            if (i75 != 0) {
                                iArr3[i73] = i75;
                            } else if (z7 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i72 += i55;
                            i73++;
                            i58 = i74;
                        }
                        i10 = i58;
                    } else {
                        i10 = i58;
                        int i76 = ((i70 - i69) * i55) + i72;
                        bool = bool2;
                        int i77 = i69;
                        while (i77 < i70) {
                            int i78 = i70;
                            int i79 = bVar.f30447c;
                            int i80 = i59;
                            int i81 = i60;
                            int i82 = i72;
                            int i83 = 0;
                            int i84 = 0;
                            int i85 = 0;
                            int i86 = 0;
                            int i87 = 0;
                            while (true) {
                                if (i82 >= this.f30486p + i72) {
                                    i14 = i61;
                                    break;
                                }
                                byte[] bArr7 = this.f30479i;
                                i14 = i61;
                                if (i82 >= bArr7.length || i82 >= i76) {
                                    break;
                                }
                                int i88 = this.f30471a[bArr7[i82] & 255];
                                if (i88 != 0) {
                                    i83 += (i88 >> 24) & 255;
                                    i84 += (i88 >> 16) & 255;
                                    i85 += (i88 >> 8) & 255;
                                    i86 += i88 & 255;
                                    i87++;
                                }
                                i82++;
                                i61 = i14;
                            }
                            int i89 = i79 + i72;
                            for (int i90 = i89; i90 < this.f30486p + i89; i90++) {
                                byte[] bArr8 = this.f30479i;
                                if (i90 >= bArr8.length || i90 >= i76) {
                                    break;
                                }
                                int i91 = this.f30471a[bArr8[i90] & 255];
                                if (i91 != 0) {
                                    i83 += (i91 >> 24) & 255;
                                    i84 += (i91 >> 16) & 255;
                                    i85 += (i91 >> 8) & 255;
                                    i86 += i91 & 255;
                                    i87++;
                                }
                            }
                            int i92 = i87 == 0 ? 0 : ((i83 / i87) << 24) | ((i84 / i87) << 16) | ((i85 / i87) << 8) | (i86 / i87);
                            if (i92 != 0) {
                                iArr3[i77] = i92;
                            } else if (z7 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i72 += i55;
                            i77++;
                            i70 = i78;
                            i59 = i80;
                            i60 = i81;
                            i61 = i14;
                        }
                    }
                    i11 = i59;
                    i12 = i60;
                    i13 = i61;
                } else {
                    i10 = i58;
                    i11 = i59;
                    i12 = i60;
                    i13 = i61;
                    bool = bool2;
                }
                i62++;
                i56 = i8;
                i63 = i9;
                i57 = i57;
                i58 = i10;
                i59 = i11;
                i60 = i12;
                i61 = i13;
            }
            Boolean bool3 = bool;
            if (this.f30489s == null) {
                this.f30489s = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
            }
        } else {
            int[] iArr5 = this.f30480j;
            int i93 = bVar.f30448d;
            int i94 = bVar.f30446b;
            int i95 = bVar.f30447c;
            int i96 = bVar.f30445a;
            boolean z9 = this.f30481k == 0;
            int i97 = this.f30488r;
            byte[] bArr9 = this.f30479i;
            int[] iArr6 = this.f30471a;
            byte b9 = -1;
            for (int i98 = 0; i98 < i93; i98++) {
                int i99 = (i98 + i94) * i97;
                int i100 = i99 + i96;
                int i101 = i100 + i95;
                int i102 = i99 + i97;
                if (i102 < i101) {
                    i101 = i102;
                }
                int i103 = bVar.f30447c * i98;
                while (i100 < i101) {
                    int i104 = i93;
                    byte b10 = bArr9[i103];
                    int i105 = i94;
                    int i106 = b10 & 255;
                    if (i106 != b9) {
                        int i107 = iArr6[i106];
                        if (i107 != 0) {
                            iArr5[i100] = i107;
                        } else {
                            b9 = b10;
                        }
                    }
                    i103++;
                    i100++;
                    i93 = i104;
                    i94 = i105;
                }
            }
            Boolean bool4 = this.f30489s;
            this.f30489s = Boolean.valueOf((bool4 != null && bool4.booleanValue()) || (this.f30489s == null && z9 && b9 != -1));
        }
        if (this.f30484n && ((i15 = bVar.f30451g) == 0 || i15 == 1)) {
            if (this.f30483m == null) {
                this.f30483m = a();
            }
            Bitmap bitmap3 = this.f30483m;
            int i108 = this.f30488r;
            bitmap3.setPixels(iArr2, 0, i108, 0, 0, i108, this.f30487q);
        }
        Bitmap bitmapA = a();
        int i109 = this.f30488r;
        bitmapA.setPixels(iArr2, 0, i109, 0, 0, i109, this.f30487q);
        return bitmapA;
    }
}
