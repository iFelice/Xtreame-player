package F2;

import A0.O;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.videolan.libvlc.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p173w2.k f3151f = p173w2.k.a(p173w2.b.f30989I, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final p173w2.k f3152g = new p173w2.k("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, p173w2.k.f30995e);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final p173w2.k f3153h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final p173w2.k f3154i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Set f3155j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final U1.f f3156k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final ArrayDeque f3157l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p196z2.d f3158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f3159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p196z2.h f3160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f3161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v f3162e = v.a();

    static {
        m mVar = n.f3144a;
        Boolean bool = Boolean.FALSE;
        f3153h = p173w2.k.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f3154i = p173w2.k.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        f3155j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f3156k = new U1.f(27, null);
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        char[] cArr = P2.o.f5906a;
        f3157l = new ArrayDeque(0);
    }

    public p(List list, DisplayMetrics displayMetrics, p196z2.d dVar, p196z2.h hVar) {
        this.f3161d = list;
        p102n0.c.c(displayMetrics, "Argument must not be null");
        this.f3159b = displayMetrics;
        p102n0.c.c(dVar, "Argument must not be null");
        this.f3158a = dVar;
        p102n0.c.c(hVar, "Argument must not be null");
        this.f3160c = hVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap c(p096m2.u r5, android.graphics.BitmapFactory.Options r6, F2.o r7, p196z2.d r8) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r6.inJustDecodeBounds
            if (r1 != 0) goto L22
            r7.d()
            int r1 = r5.f27277G
            switch(r1) {
                case 25: goto Lf;
                default: goto Le;
            }
        Le:
            goto L22
        Lf:
            java.lang.Object r1 = r5.f27278H
            com.bumptech.glide.load.data.n r1 = (com.bumptech.glide.load.data.n) r1
            java.lang.Object r1 = r1.f11590b
            F2.w r1 = (F2.w) r1
            monitor-enter(r1)
            byte[] r2 = r1.f3175G     // Catch: java.lang.Throwable -> L1f
            int r2 = r2.length     // Catch: java.lang.Throwable -> L1f
            r1.f3177I = r2     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r1)
            goto L22
        L1f:
            r5 = move-exception
            monitor-exit(r1)
            throw r5
        L22:
            int r1 = r6.outWidth
            int r2 = r6.outHeight
            java.lang.String r3 = r6.outMimeType
            java.util.concurrent.locks.Lock r4 = F2.y.f3182b
            r4.lock()
            android.graphics.Bitmap r5 = r5.l(r6)     // Catch: java.lang.IllegalArgumentException -> L35 java.lang.Throwable -> L47
            r4.unlock()
            return r5
        L35:
            r4 = move-exception
            java.io.IOException r1 = e(r4, r1, r2, r3, r6)     // Catch: java.lang.Throwable -> L47
            r2 = 3
            boolean r2 = android.util.Log.isLoggable(r0, r2)     // Catch: java.lang.Throwable -> L47
            if (r2 == 0) goto L49
            java.lang.String r2 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r2, r1)     // Catch: java.lang.Throwable -> L47
            goto L49
        L47:
            r5 = move-exception
            goto L5f
        L49:
            android.graphics.Bitmap r0 = r6.inBitmap     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L5e
            r8.a(r0)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L5d
            r0 = 0
            r6.inBitmap = r0     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L5d
            android.graphics.Bitmap r5 = c(r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L5d
            java.util.concurrent.locks.Lock r6 = F2.y.f3182b
            r6.unlock()
            return r5
        L5d:
            throw r1     // Catch: java.lang.Throwable -> L47
        L5e:
            throw r1     // Catch: java.lang.Throwable -> L47
        L5f:
            java.util.concurrent.locks.Lock r6 = F2.y.f3182b
            r6.unlock()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: F2.p.c(m2.u, android.graphics.BitmapFactory$Options, F2.o, z2.d):android.graphics.Bitmap");
    }

    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static IOException e(IllegalArgumentException illegalArgumentException, int i8, int i9, String str, BitmapFactory.Options options) {
        StringBuilder sbD = O.D("Exception decoding bitmap, outWidth: ", i8, ", outHeight: ", i9, ", outMimeType: ");
        sbD.append(str);
        sbD.append(", inBitmap: ");
        sbD.append(d(options.inBitmap));
        return new IOException(sbD.toString(), illegalArgumentException);
    }

    public static void f(BitmapFactory.Options options) {
        g(options);
        ArrayDeque arrayDeque = f3157l;
        synchronized (arrayDeque) {
            arrayDeque.offer(options);
        }
    }

    public static void g(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final C0194d a(p096m2.u uVar, int i8, int i9, p173w2.l lVar, o oVar) {
        BitmapFactory.Options options;
        BitmapFactory.Options options2;
        byte[] bArr = (byte[]) this.f3160c.d(65536, byte[].class);
        synchronized (p.class) {
            ArrayDeque arrayDeque = f3157l;
            synchronized (arrayDeque) {
                options = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                g(options);
            }
            options2 = options;
        }
        options2.inTempStorage = bArr;
        p173w2.b bVar = (p173w2.b) lVar.c(f3151f);
        p173w2.m mVar = (p173w2.m) lVar.c(f3152g);
        n nVar = (n) lVar.c(n.f3149f);
        boolean zBooleanValue = ((Boolean) lVar.c(f3153h)).booleanValue();
        p173w2.k kVar = f3154i;
        try {
            return C0194d.c(b(uVar, options2, nVar, bVar, mVar, lVar.c(kVar) != null && ((Boolean) lVar.c(kVar)).booleanValue(), i8, i9, zBooleanValue, oVar), this.f3158a);
        } finally {
            f(options2);
            this.f3160c.h(bArr);
        }
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0257  */
    /* JADX WARN: Code duplicated, block: B:121:0x025a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0281  */
    /* JADX WARN: Code duplicated, block: B:125:0x0283  */
    /* JADX WARN: Code duplicated, block: B:132:0x029f  */
    /* JADX WARN: Code duplicated, block: B:135:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:136:0x0300  */
    /* JADX WARN: Code duplicated, block: B:144:0x035b  */
    /* JADX WARN: Code duplicated, block: B:147:0x038a  */
    /* JADX WARN: Code duplicated, block: B:149:0x0395  */
    /* JADX WARN: Code duplicated, block: B:150:0x0397  */
    /* JADX WARN: Code duplicated, block: B:154:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:159:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:162:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:163:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:166:0x03d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:169:0x03de  */
    /* JADX WARN: Code duplicated, block: B:171:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:175:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:178:0x0417  */
    /* JADX WARN: Code duplicated, block: B:182:0x044e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:193:0x0470  */
    /* JADX WARN: Code duplicated, block: B:195:0x0475  */
    /* JADX WARN: Code duplicated, block: B:197:0x0479  */
    /* JADX WARN: Code duplicated, block: B:199:0x047d  */
    /* JADX WARN: Code duplicated, block: B:204:0x0492  */
    /* JADX WARN: Code duplicated, block: B:207:0x04a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:208:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:211:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:212:0x0541  */
    /* JADX WARN: Code duplicated, block: B:214:0x0544  */
    /* JADX WARN: Code duplicated, block: B:216:0x054e  */
    /* JADX WARN: Code duplicated, block: B:217:0x0551  */
    /* JADX WARN: Code duplicated, block: B:220:0x0562  */
    /* JADX WARN: Code duplicated, block: B:221:0x0566  */
    /* JADX WARN: Code duplicated, block: B:222:0x056f  */
    /* JADX WARN: Code duplicated, block: B:223:0x0573  */
    /* JADX WARN: Code duplicated, block: B:224:0x057c  */
    /* JADX WARN: Code duplicated, block: B:225:0x0585  */
    /* JADX WARN: Code duplicated, block: B:226:0x0589  */
    /* JADX WARN: Code duplicated, block: B:229:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:230:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:234:0x05db  */
    /* JADX WARN: Code duplicated, block: B:238:0x039e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:37:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:44:0x00fa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:48:0x0101  */
    /* JADX WARN: Code duplicated, block: B:49:0x0104  */
    /* JADX WARN: Code duplicated, block: B:51:0x0109  */
    /* JADX WARN: Code duplicated, block: B:53:0x010f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0113 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:58:0x0118  */
    /* JADX WARN: Code duplicated, block: B:59:0x011a  */
    /* JADX WARN: Code duplicated, block: B:62:0x012f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:63:0x0131  */
    /* JADX WARN: Instruction removed from duplicated block: B:144:0x035b, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [android.graphics.Bitmap, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6, types: [z2.d] */
    /* JADX WARN: Type inference failed for: r48v0, types: [F2.o] */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v23 */
    public final Bitmap b(p096m2.u uVar, BitmapFactory.Options options, n nVar, p173w2.b bVar, p173w2.m mVar, boolean z7, int i8, int i9, boolean z8, o oVar) throws Throwable {
        long j8;
        String str;
        int iJ;
        int i10;
        boolean z9;
        int i11;
        int i12;
        int i13;
        ImageHeaderParser$ImageType imageHeaderParser$ImageTypeW;
        int i14;
        String str2;
        String str3;
        p196z2.d dVar;
        String str4;
        int i15;
        int i16;
        int i17;
        String str5;
        boolean zC;
        String str6;
        Bitmap.Config config;
        int i18;
        int i19;
        float f8;
        int i20;
        int iRound;
        int iRound2;
        int i21;
        ?? r9;
        ?? r15;
        ?? C7;
        float f9;
        Matrix matrix;
        Bitmap.Config config2;
        ColorSpace.Named named;
        Bitmap.Config config3;
        int i22;
        int i23;
        int i24;
        int iFloor;
        double dFloor;
        int iRound3;
        double dB;
        double d6;
        double d8;
        int i25;
        int i26 = P2.i.f5894b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        options.inJustDecodeBounds = true;
        p196z2.d dVar2 = this.f3158a;
        c(uVar, options, oVar, dVar2);
        options.inJustDecodeBounds = false;
        int[] iArr = {options.outWidth, options.outHeight};
        int i27 = iArr[0];
        int i28 = iArr[1];
        String str7 = options.outMimeType;
        boolean z10 = (i27 == -1 || i28 == -1) ? false : z7;
        switch (uVar.f27277G) {
            case 24:
                j8 = jElapsedRealtimeNanos;
                str = str7;
                List list = (List) uVar.f27279I;
                ByteBuffer byteBufferC = P2.c.c((ByteBuffer) uVar.f27278H);
                p196z2.h hVar = (p196z2.h) uVar.f27280J;
                if (byteBufferC == null) {
                    iJ = -1;
                } else {
                    int size = list.size();
                    int i29 = 0;
                    while (true) {
                        if (i29 < size) {
                            List list2 = list;
                            try {
                                int iB = ((p173w2.f) list.get(i29)).b(byteBufferC, hVar);
                                p196z2.h hVar2 = hVar;
                                if (iB != -1) {
                                    iJ = iB;
                                } else {
                                    i29++;
                                    list = list2;
                                    hVar = hVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        } else {
                            iJ = -1;
                        }
                    }
                }
                switch (iJ) {
                    case 3:
                    case 4:
                        i10 = 180;
                        break;
                    case 5:
                    case 6:
                        i10 = 90;
                        break;
                    case 7:
                    case 8:
                        i10 = MediaPlayer.Event.PausableChanged;
                        break;
                    default:
                        i10 = 0;
                        break;
                }
                switch (iJ) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z9 = true;
                        break;
                    default:
                        z9 = false;
                        break;
                }
                if (i8 == Integer.MIN_VALUE) {
                    if (i10 != 90) {
                        i11 = MediaPlayer.Event.PausableChanged;
                        if (i10 != 270) {
                            i12 = i27;
                        }
                    } else {
                        i11 = MediaPlayer.Event.PausableChanged;
                    }
                    i12 = i28;
                } else {
                    i11 = MediaPlayer.Event.PausableChanged;
                    i12 = i8;
                }
                if (i9 != Integer.MIN_VALUE) {
                    i13 = i9;
                } else if (i10 != 90 || i10 == i11) {
                    i13 = i27;
                } else {
                    i13 = i28;
                }
                imageHeaderParser$ImageTypeW = uVar.w();
                i14 = iJ;
                boolean z11 = z9;
                if (i27 > 0 || i28 <= 0) {
                    str2 = "Downsampler";
                    str3 = ", density: ";
                    dVar = dVar2;
                    str4 = ", target density: ";
                    i15 = i28;
                    i16 = i27;
                    i17 = i12;
                    str5 = "x";
                    if (Log.isLoggable(str2, 3)) {
                        Log.d(str2, "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeW + " with target [" + i17 + str5 + i13 + "]");
                    }
                } else {
                    if (i10 == 90 || i10 == 270) {
                        i22 = i28;
                        i23 = i27;
                    } else {
                        i23 = i28;
                        i22 = i27;
                    }
                    int i30 = i12;
                    float fB = nVar.b(i22, i23, i30, i13);
                    if (fB <= 0.0f) {
                        StringBuilder sb = new StringBuilder("Cannot scale with factor: ");
                        sb.append(fB);
                        sb.append(" from: ");
                        sb.append(nVar);
                        sb.append(", source: [");
                        O.J(sb, i27, "x", i28, "], target: [");
                        sb.append(i30);
                        sb.append("x");
                        sb.append(i13);
                        sb.append("]");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    int i31 = i10;
                    int iA = nVar.a(i22, i23, i30, i13);
                    if (iA == 0) {
                        throw new IllegalArgumentException("Cannot round with null rounding");
                    }
                    float f10 = i22;
                    float f11 = i23;
                    int i32 = i22 / ((int) (((double) (fB * f10)) + 0.5d));
                    int i33 = i23 / ((int) (((double) (fB * f11)) + 0.5d));
                    int iMax = iA == 1 ? Math.max(i32, i33) : Math.min(i32, i33);
                    int i34 = Build.VERSION.SDK_INT;
                    if (i34 > 23 || !f3155j.contains(options.outMimeType)) {
                        int iMax2 = Math.max(1, Integer.highestOneBit(iMax));
                        if (iA == 1 && iMax2 < 1.0f / fB) {
                            iMax2 <<= 1;
                        }
                        i24 = iMax2;
                    } else {
                        i24 = 1;
                    }
                    options.inSampleSize = i24;
                    if (imageHeaderParser$ImageTypeW == ImageHeaderParser$ImageType.JPEG) {
                        float fMin = Math.min(i24, 8);
                        iFloor = (int) Math.ceil(f10 / fMin);
                        iRound3 = (int) Math.ceil(f11 / fMin);
                        int i35 = i24 / 8;
                        if (i35 > 0) {
                            iFloor /= i35;
                            iRound3 /= i35;
                        }
                    } else {
                        if (imageHeaderParser$ImageTypeW == ImageHeaderParser$ImageType.PNG || imageHeaderParser$ImageTypeW == ImageHeaderParser$ImageType.PNG_A) {
                            float f12 = i24;
                            iFloor = (int) Math.floor(f10 / f12);
                            dFloor = Math.floor(f11 / f12);
                        } else if (!imageHeaderParser$ImageTypeW.isWebp()) {
                            if (i22 % i24 == 0 && i23 % i24 == 0) {
                                iFloor = i22 / i24;
                                iRound3 = i23 / i24;
                            } else {
                                options.inJustDecodeBounds = true;
                                c(uVar, options, oVar, dVar2);
                                options.inJustDecodeBounds = false;
                                int[] iArr2 = {options.outWidth, options.outHeight};
                                int i36 = iArr2[0];
                                iRound3 = iArr2[1];
                                iFloor = i36;
                            }
                            i17 = i30;
                            dB = nVar.b(iFloor, iRound3, i17, i13);
                            if (dB <= 1.0d) {
                                d6 = dB;
                            } else {
                                d6 = 1.0d / dB;
                            }
                            int iRound4 = (int) Math.round(d6 * 2.147483647E9d);
                            int i37 = (int) ((((double) iRound4) * dB) + 0.5d);
                            options.inTargetDensity = (int) (((dB / ((double) (i37 / iRound4))) * ((double) i37)) + 0.5d);
                            if (dB <= 1.0d) {
                                d8 = dB;
                            } else {
                                d8 = 1.0d / dB;
                            }
                            int iRound5 = (int) Math.round(d8 * 2.147483647E9d);
                            options.inDensity = iRound5;
                            i25 = options.inTargetDensity;
                            if (i25 > 0 || iRound5 <= 0 || i25 == iRound5) {
                                options.inTargetDensity = 0;
                                options.inDensity = 0;
                            } else {
                                options.inScaled = true;
                            }
                            str2 = "Downsampler";
                            if (Log.isLoggable(str2, 2)) {
                                str5 = "x";
                                i15 = i28;
                                i16 = i27;
                                StringBuilder sbD = O.D("Calculate scaling, source: [", i16, str5, i15, "], degreesToRotate: ");
                                dVar = dVar2;
                                O.J(sbD, i31, ", target: [", i17, str5);
                                O.J(sbD, i13, "], power of two scaled: [", iFloor, str5);
                                sbD.append(iRound3);
                                sbD.append("], exact scale factor: ");
                                sbD.append(fB);
                                sbD.append(", power of 2 sample size: ");
                                sbD.append(i24);
                                sbD.append(", adjusted scale factor: ");
                                sbD.append(dB);
                                str4 = ", target density: ";
                                sbD.append(str4);
                                sbD.append(options.inTargetDensity);
                                str3 = ", density: ";
                                sbD.append(str3);
                                sbD.append(options.inDensity);
                                Log.v(str2, sbD.toString());
                            } else {
                                dVar = dVar2;
                                str3 = r7;
                                str4 = ", target density: ";
                                str5 = "x";
                                i15 = i28;
                                i16 = i27;
                            }
                        } else if (i34 >= 24) {
                            float f13 = i24;
                            iFloor = Math.round(f10 / f13);
                            iRound3 = Math.round(f11 / f13);
                        } else {
                            float f14 = i24;
                            iFloor = (int) Math.floor(f10 / f14);
                            dFloor = Math.floor(f11 / f14);
                        }
                        iRound3 = (int) dFloor;
                    }
                    i17 = i30;
                    dB = nVar.b(iFloor, iRound3, i17, i13);
                    if (dB <= 1.0d) {
                        d6 = dB;
                    } else {
                        d6 = 1.0d / dB;
                    }
                    int iRound6 = (int) Math.round(d6 * 2.147483647E9d);
                    int i38 = (int) ((((double) iRound6) * dB) + 0.5d);
                    options.inTargetDensity = (int) (((dB / ((double) (i38 / iRound6))) * ((double) i38)) + 0.5d);
                    if (dB <= 1.0d) {
                        d8 = dB;
                    } else {
                        d8 = 1.0d / dB;
                    }
                    int iRound7 = (int) Math.round(d8 * 2.147483647E9d);
                    options.inDensity = iRound7;
                    i25 = options.inTargetDensity;
                    if (i25 > 0) {
                        options.inTargetDensity = 0;
                        options.inDensity = 0;
                    } else {
                        options.inTargetDensity = 0;
                        options.inDensity = 0;
                    }
                    str2 = "Downsampler";
                    if (Log.isLoggable(str2, 2)) {
                        str5 = "x";
                        i15 = i28;
                        i16 = i27;
                        StringBuilder sbD2 = O.D("Calculate scaling, source: [", i16, str5, i15, "], degreesToRotate: ");
                        dVar = dVar2;
                        O.J(sbD2, i31, ", target: [", i17, str5);
                        O.J(sbD2, i13, "], power of two scaled: [", iFloor, str5);
                        sbD2.append(iRound3);
                        sbD2.append("], exact scale factor: ");
                        sbD2.append(fB);
                        sbD2.append(", power of 2 sample size: ");
                        sbD2.append(i24);
                        sbD2.append(", adjusted scale factor: ");
                        sbD2.append(dB);
                        str4 = ", target density: ";
                        sbD2.append(str4);
                        sbD2.append(options.inTargetDensity);
                        str3 = ", density: ";
                        sbD2.append(str3);
                        sbD2.append(options.inDensity);
                        Log.v(str2, sbD2.toString());
                    } else {
                        dVar = dVar2;
                        str3 = r7;
                        str4 = ", target density: ";
                        str5 = "x";
                        i15 = i28;
                        i16 = i27;
                    }
                }
                zC = this.f3162e.c(i17, i13, z10, z11);
                if (zC) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    options.inMutable = false;
                }
                if (zC) {
                    str6 = str2;
                } else {
                    str6 = str2;
                    if (bVar != p173w2.b.f30987G) {
                        try {
                            if (uVar.w().hasAlpha()) {
                                config = Bitmap.Config.ARGB_8888;
                            } else {
                                config = Bitmap.Config.RGB_565;
                            }
                        } catch (IOException e8) {
                            if (Log.isLoggable(str6, 3)) {
                                Log.d(str6, "Cannot determine whether the image has alpha or not from header, format " + bVar, e8);
                            }
                        }
                        options.inPreferredConfig = config;
                        if (config == Bitmap.Config.RGB_565) {
                            options.inDither = true;
                        }
                    } else {
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    }
                }
                i18 = Build.VERSION.SDK_INT;
                if (i16 >= 0 || i15 < 0 || !z8) {
                    i19 = options.inTargetDensity;
                    if (i19 > 0 || (i21 = options.inDensity) <= 0 || i19 == i21) {
                        f8 = 1.0f;
                    } else {
                        f8 = i19 / i21;
                    }
                    i20 = options.inSampleSize;
                    float f15 = i20;
                    int iCeil = (int) Math.ceil(i16 / f15);
                    int iCeil2 = (int) Math.ceil(i15 / f15);
                    iRound = Math.round(iCeil * f8);
                    iRound2 = Math.round(iCeil2 * f8);
                    if (Log.isLoggable(str6, 2)) {
                        StringBuilder sbD3 = O.D("Calculated target [", iRound, str5, iRound2, "] for source [");
                        O.J(sbD3, i16, str5, i15, "], sampleSize: ");
                        sbD3.append(i20);
                        sbD3.append(", targetDensity: ");
                        sbD3.append(options.inTargetDensity);
                        sbD3.append(str3);
                        sbD3.append(options.inDensity);
                        sbD3.append(", density multiplier: ");
                        sbD3.append(f8);
                        Log.v(str6, sbD3.toString());
                    }
                    i13 = iRound2;
                } else {
                    iRound = i17;
                }
                r9 = 0;
                if (iRound > 0 || i13 <= 0) {
                    r15 = dVar;
                } else {
                    if (i18 < 26) {
                        config3 = null;
                    } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
                        r15 = dVar;
                    } else {
                        config3 = options.outConfig;
                    }
                    if (config3 == null) {
                        config3 = options.inPreferredConfig;
                    }
                    p196z2.d dVar3 = dVar;
                    options.inBitmap = dVar3.j(iRound, i13, config3);
                    r15 = dVar3;
                }
                if (mVar != null) {
                    if (i18 >= 28) {
                        if (mVar == p173w2.m.f31001G || options.outColorSpace == null || !options.outColorSpace.isWideGamut()) {
                            named = ColorSpace.Named.SRGB;
                        } else {
                            named = ColorSpace.Named.DISPLAY_P3;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i18 >= 26) {
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                C7 = c(uVar, options, oVar, r15);
                oVar.b(C7, r15);
                if (Log.isLoggable(str6, 2)) {
                    StringBuilder sb2 = new StringBuilder("Decoded ");
                    sb2.append(d(C7));
                    sb2.append(" from [");
                    sb2.append(i16);
                    sb2.append(str5);
                    sb2.append(i15);
                    sb2.append("] ");
                    sb2.append(str);
                    sb2.append(" with inBitmap ");
                    sb2.append(d(options.inBitmap));
                    sb2.append(" for [");
                    sb2.append(i8);
                    sb2.append(str5);
                    f9 = 0.0f;
                    sb2.append(i9);
                    sb2.append("], sample size: ");
                    sb2.append(options.inSampleSize);
                    sb2.append(str3);
                    sb2.append(options.inDensity);
                    sb2.append(str4);
                    sb2.append(options.inTargetDensity);
                    sb2.append(", thread: ");
                    sb2.append(Thread.currentThread().getName());
                    sb2.append(", duration: ");
                    sb2.append(P2.i.a(j8));
                    Log.v(str6, sb2.toString());
                } else {
                    f9 = 0.0f;
                }
                if (C7 != 0) {
                    C7.setDensity(this.f3159b.densityDpi);
                    switch (i14) {
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            matrix = new Matrix();
                            switch (i14) {
                                case 2:
                                    matrix.setScale(-1.0f, 1.0f);
                                    break;
                                case 3:
                                    matrix.setRotate(180.0f);
                                    break;
                                case 4:
                                    matrix.setRotate(180.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 5:
                                    matrix.setRotate(90.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 6:
                                    matrix.setRotate(90.0f);
                                    break;
                                case 7:
                                    matrix.setRotate(-90.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 8:
                                    matrix.setRotate(-90.0f);
                                    break;
                            }
                            RectF rectF = new RectF(f9, f9, C7.getWidth(), C7.getHeight());
                            matrix.mapRect(rectF);
                            int iRound8 = Math.round(rectF.width());
                            int iRound9 = Math.round(rectF.height());
                            if (C7.getConfig() != null) {
                                config2 = C7.getConfig();
                            } else {
                                config2 = Bitmap.Config.ARGB_8888;
                            }
                            Bitmap bitmapC = r15.c(iRound8, iRound9, config2);
                            matrix.postTranslate(-rectF.left, -rectF.top);
                            bitmapC.setHasAlpha(C7.hasAlpha());
                            y.a(C7, bitmapC, matrix);
                            r9 = bitmapC;
                            break;
                        default:
                            r9 = C7;
                            break;
                    }
                    if (!C7.equals(r9)) {
                        r15.a(C7);
                    }
                }
                return r9;
            case 25:
                j8 = jElapsedRealtimeNanos;
                str = str7;
                List list3 = (List) uVar.f27280J;
                w wVar = (w) ((com.bumptech.glide.load.data.n) uVar.f27278H).f11590b;
                wVar.reset();
                iJ = Q3.b.j((p196z2.h) uVar.f27279I, wVar, list3);
                switch (iJ) {
                    case 3:
                    case 4:
                        i10 = 180;
                        break;
                    case 5:
                    case 6:
                        i10 = 90;
                        break;
                    case 7:
                    case 8:
                        i10 = MediaPlayer.Event.PausableChanged;
                        break;
                    default:
                        i10 = 0;
                        break;
                }
                switch (iJ) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z9 = true;
                        break;
                    default:
                        z9 = false;
                        break;
                }
                if (i8 == Integer.MIN_VALUE) {
                    if (i10 != 90) {
                        i11 = MediaPlayer.Event.PausableChanged;
                        if (i10 != 270) {
                            i12 = i27;
                        }
                    } else {
                        i11 = MediaPlayer.Event.PausableChanged;
                    }
                    i12 = i28;
                } else {
                    i11 = MediaPlayer.Event.PausableChanged;
                    i12 = i8;
                }
                if (i9 != Integer.MIN_VALUE) {
                    i13 = i9;
                } else if (i10 != 90) {
                    i13 = i27;
                } else {
                    i13 = i27;
                }
                imageHeaderParser$ImageTypeW = uVar.w();
                i14 = iJ;
                boolean z12 = z9;
                if (i27 > 0) {
                    str2 = "Downsampler";
                    str3 = ", density: ";
                    dVar = dVar2;
                    str4 = ", target density: ";
                    i15 = i28;
                    i16 = i27;
                    i17 = i12;
                    str5 = "x";
                    if (Log.isLoggable(str2, 3)) {
                        Log.d(str2, "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeW + " with target [" + i17 + str5 + i13 + "]");
                    }
                } else {
                    str2 = "Downsampler";
                    str3 = ", density: ";
                    dVar = dVar2;
                    str4 = ", target density: ";
                    i15 = i28;
                    i16 = i27;
                    i17 = i12;
                    str5 = "x";
                    if (Log.isLoggable(str2, 3)) {
                        Log.d(str2, "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeW + " with target [" + i17 + str5 + i13 + "]");
                    }
                }
                zC = this.f3162e.c(i17, i13, z10, z12);
                if (zC) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    options.inMutable = false;
                }
                if (zC) {
                    str6 = str2;
                } else {
                    str6 = str2;
                    if (bVar != p173w2.b.f30987G) {
                        if (uVar.w().hasAlpha()) {
                            config = Bitmap.Config.ARGB_8888;
                        } else {
                            config = Bitmap.Config.RGB_565;
                        }
                        options.inPreferredConfig = config;
                        if (config == Bitmap.Config.RGB_565) {
                            options.inDither = true;
                        }
                    } else {
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    }
                }
                i18 = Build.VERSION.SDK_INT;
                if (i16 >= 0) {
                    i19 = options.inTargetDensity;
                    if (i19 > 0) {
                        f8 = 1.0f;
                    } else {
                        f8 = 1.0f;
                    }
                    i20 = options.inSampleSize;
                    float f16 = i20;
                    int iCeil3 = (int) Math.ceil(i16 / f16);
                    int iCeil4 = (int) Math.ceil(i15 / f16);
                    iRound = Math.round(iCeil3 * f8);
                    iRound2 = Math.round(iCeil4 * f8);
                    if (Log.isLoggable(str6, 2)) {
                        StringBuilder sbD4 = O.D("Calculated target [", iRound, str5, iRound2, "] for source [");
                        O.J(sbD4, i16, str5, i15, "], sampleSize: ");
                        sbD4.append(i20);
                        sbD4.append(", targetDensity: ");
                        sbD4.append(options.inTargetDensity);
                        sbD4.append(str3);
                        sbD4.append(options.inDensity);
                        sbD4.append(", density multiplier: ");
                        sbD4.append(f8);
                        Log.v(str6, sbD4.toString());
                    }
                    i13 = iRound2;
                } else {
                    i19 = options.inTargetDensity;
                    if (i19 > 0) {
                        f8 = 1.0f;
                    } else {
                        f8 = 1.0f;
                    }
                    i20 = options.inSampleSize;
                    float f17 = i20;
                    int iCeil5 = (int) Math.ceil(i16 / f17);
                    int iCeil6 = (int) Math.ceil(i15 / f17);
                    iRound = Math.round(iCeil5 * f8);
                    iRound2 = Math.round(iCeil6 * f8);
                    if (Log.isLoggable(str6, 2)) {
                        StringBuilder sbD5 = O.D("Calculated target [", iRound, str5, iRound2, "] for source [");
                        O.J(sbD5, i16, str5, i15, "], sampleSize: ");
                        sbD5.append(i20);
                        sbD5.append(", targetDensity: ");
                        sbD5.append(options.inTargetDensity);
                        sbD5.append(str3);
                        sbD5.append(options.inDensity);
                        sbD5.append(", density multiplier: ");
                        sbD5.append(f8);
                        Log.v(str6, sbD5.toString());
                    }
                    i13 = iRound2;
                }
                r9 = 0;
                if (iRound > 0) {
                    r15 = dVar;
                } else {
                    r15 = dVar;
                }
                if (mVar != null) {
                    if (i18 >= 28) {
                        if (mVar == p173w2.m.f31001G) {
                            named = ColorSpace.Named.SRGB;
                        } else {
                            named = ColorSpace.Named.SRGB;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i18 >= 26) {
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                C7 = c(uVar, options, oVar, r15);
                oVar.b(C7, r15);
                if (Log.isLoggable(str6, 2)) {
                    StringBuilder sb3 = new StringBuilder("Decoded ");
                    sb3.append(d(C7));
                    sb3.append(" from [");
                    sb3.append(i16);
                    sb3.append(str5);
                    sb3.append(i15);
                    sb3.append("] ");
                    sb3.append(str);
                    sb3.append(" with inBitmap ");
                    sb3.append(d(options.inBitmap));
                    sb3.append(" for [");
                    sb3.append(i8);
                    sb3.append(str5);
                    f9 = 0.0f;
                    sb3.append(i9);
                    sb3.append("], sample size: ");
                    sb3.append(options.inSampleSize);
                    sb3.append(str3);
                    sb3.append(options.inDensity);
                    sb3.append(str4);
                    sb3.append(options.inTargetDensity);
                    sb3.append(", thread: ");
                    sb3.append(Thread.currentThread().getName());
                    sb3.append(", duration: ");
                    sb3.append(P2.i.a(j8));
                    Log.v(str6, sb3.toString());
                } else {
                    f9 = 0.0f;
                }
                if (C7 != 0) {
                    C7.setDensity(this.f3159b.densityDpi);
                    switch (i14) {
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            matrix = new Matrix();
                            switch (i14) {
                                case 2:
                                    matrix.setScale(-1.0f, 1.0f);
                                    break;
                                case 3:
                                    matrix.setRotate(180.0f);
                                    break;
                                case 4:
                                    matrix.setRotate(180.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 5:
                                    matrix.setRotate(90.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 6:
                                    matrix.setRotate(90.0f);
                                    break;
                                case 7:
                                    matrix.setRotate(-90.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 8:
                                    matrix.setRotate(-90.0f);
                                    break;
                            }
                            RectF rectF2 = new RectF(f9, f9, C7.getWidth(), C7.getHeight());
                            matrix.mapRect(rectF2);
                            int iRound10 = Math.round(rectF2.width());
                            int iRound11 = Math.round(rectF2.height());
                            if (C7.getConfig() != null) {
                                config2 = C7.getConfig();
                            } else {
                                config2 = Bitmap.Config.ARGB_8888;
                            }
                            Bitmap bitmapC2 = r15.c(iRound10, iRound11, config2);
                            matrix.postTranslate(-rectF2.left, -rectF2.top);
                            bitmapC2.setHasAlpha(C7.hasAlpha());
                            y.a(C7, bitmapC2, matrix);
                            r9 = bitmapC2;
                            break;
                        default:
                            r9 = C7;
                            break;
                    }
                    if (!C7.equals(r9)) {
                        r15.a(C7);
                    }
                }
                return r9;
            default:
                List list4 = (List) uVar.f27279I;
                j8 = jElapsedRealtimeNanos;
                str = str7;
                F.i iVar = new F.i(7, (com.bumptech.glide.load.data.n) uVar.f27280J, (p196z2.h) uVar.f27278H);
                int size2 = list4.size();
                int i39 = 0;
                while (true) {
                    if (i39 < size2) {
                        int iK = iVar.k((p173w2.f) list4.get(i39));
                        int i40 = size2;
                        if (iK != -1) {
                            iJ = iK;
                        } else {
                            i39++;
                            size2 = i40;
                        }
                    } else {
                        iJ = -1;
                    }
                }
                switch (iJ) {
                    case 3:
                    case 4:
                        i10 = 180;
                        break;
                    case 5:
                    case 6:
                        i10 = 90;
                        break;
                    case 7:
                    case 8:
                        i10 = MediaPlayer.Event.PausableChanged;
                        break;
                    default:
                        i10 = 0;
                        break;
                }
                switch (iJ) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z9 = true;
                        break;
                    default:
                        z9 = false;
                        break;
                }
                if (i8 == Integer.MIN_VALUE) {
                    if (i10 != 90) {
                        i11 = MediaPlayer.Event.PausableChanged;
                        if (i10 != 270) {
                            i12 = i27;
                        }
                    } else {
                        i11 = MediaPlayer.Event.PausableChanged;
                    }
                    i12 = i28;
                } else {
                    i11 = MediaPlayer.Event.PausableChanged;
                    i12 = i8;
                }
                if (i9 != Integer.MIN_VALUE) {
                    i13 = i9;
                } else if (i10 != 90) {
                    i13 = i27;
                } else {
                    i13 = i27;
                }
                imageHeaderParser$ImageTypeW = uVar.w();
                i14 = iJ;
                boolean z13 = z9;
                if (i27 > 0) {
                    str2 = "Downsampler";
                    str3 = ", density: ";
                    dVar = dVar2;
                    str4 = ", target density: ";
                    i15 = i28;
                    i16 = i27;
                    i17 = i12;
                    str5 = "x";
                    if (Log.isLoggable(str2, 3)) {
                        Log.d(str2, "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeW + " with target [" + i17 + str5 + i13 + "]");
                    }
                } else {
                    str2 = "Downsampler";
                    str3 = ", density: ";
                    dVar = dVar2;
                    str4 = ", target density: ";
                    i15 = i28;
                    i16 = i27;
                    i17 = i12;
                    str5 = "x";
                    if (Log.isLoggable(str2, 3)) {
                        Log.d(str2, "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeW + " with target [" + i17 + str5 + i13 + "]");
                    }
                }
                zC = this.f3162e.c(i17, i13, z10, z13);
                if (zC) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    options.inMutable = false;
                }
                if (zC) {
                    str6 = str2;
                } else {
                    str6 = str2;
                    if (bVar != p173w2.b.f30987G) {
                        if (uVar.w().hasAlpha()) {
                            config = Bitmap.Config.ARGB_8888;
                        } else {
                            config = Bitmap.Config.RGB_565;
                        }
                        options.inPreferredConfig = config;
                        if (config == Bitmap.Config.RGB_565) {
                            options.inDither = true;
                        }
                    } else {
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    }
                }
                i18 = Build.VERSION.SDK_INT;
                if (i16 >= 0) {
                    i19 = options.inTargetDensity;
                    if (i19 > 0) {
                        f8 = 1.0f;
                    } else {
                        f8 = 1.0f;
                    }
                    i20 = options.inSampleSize;
                    float f18 = i20;
                    int iCeil7 = (int) Math.ceil(i16 / f18);
                    int iCeil8 = (int) Math.ceil(i15 / f18);
                    iRound = Math.round(iCeil7 * f8);
                    iRound2 = Math.round(iCeil8 * f8);
                    if (Log.isLoggable(str6, 2)) {
                        StringBuilder sbD6 = O.D("Calculated target [", iRound, str5, iRound2, "] for source [");
                        O.J(sbD6, i16, str5, i15, "], sampleSize: ");
                        sbD6.append(i20);
                        sbD6.append(", targetDensity: ");
                        sbD6.append(options.inTargetDensity);
                        sbD6.append(str3);
                        sbD6.append(options.inDensity);
                        sbD6.append(", density multiplier: ");
                        sbD6.append(f8);
                        Log.v(str6, sbD6.toString());
                    }
                    i13 = iRound2;
                } else {
                    i19 = options.inTargetDensity;
                    if (i19 > 0) {
                        f8 = 1.0f;
                    } else {
                        f8 = 1.0f;
                    }
                    i20 = options.inSampleSize;
                    float f19 = i20;
                    int iCeil9 = (int) Math.ceil(i16 / f19);
                    int iCeil10 = (int) Math.ceil(i15 / f19);
                    iRound = Math.round(iCeil9 * f8);
                    iRound2 = Math.round(iCeil10 * f8);
                    if (Log.isLoggable(str6, 2)) {
                        StringBuilder sbD7 = O.D("Calculated target [", iRound, str5, iRound2, "] for source [");
                        O.J(sbD7, i16, str5, i15, "], sampleSize: ");
                        sbD7.append(i20);
                        sbD7.append(", targetDensity: ");
                        sbD7.append(options.inTargetDensity);
                        sbD7.append(str3);
                        sbD7.append(options.inDensity);
                        sbD7.append(", density multiplier: ");
                        sbD7.append(f8);
                        Log.v(str6, sbD7.toString());
                    }
                    i13 = iRound2;
                }
                r9 = 0;
                if (iRound > 0) {
                    r15 = dVar;
                } else {
                    r15 = dVar;
                }
                if (mVar != null) {
                    if (i18 >= 28) {
                        if (mVar == p173w2.m.f31001G) {
                            named = ColorSpace.Named.SRGB;
                        } else {
                            named = ColorSpace.Named.SRGB;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i18 >= 26) {
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                C7 = c(uVar, options, oVar, r15);
                oVar.b(C7, r15);
                if (Log.isLoggable(str6, 2)) {
                    StringBuilder sb4 = new StringBuilder("Decoded ");
                    sb4.append(d(C7));
                    sb4.append(" from [");
                    sb4.append(i16);
                    sb4.append(str5);
                    sb4.append(i15);
                    sb4.append("] ");
                    sb4.append(str);
                    sb4.append(" with inBitmap ");
                    sb4.append(d(options.inBitmap));
                    sb4.append(" for [");
                    sb4.append(i8);
                    sb4.append(str5);
                    f9 = 0.0f;
                    sb4.append(i9);
                    sb4.append("], sample size: ");
                    sb4.append(options.inSampleSize);
                    sb4.append(str3);
                    sb4.append(options.inDensity);
                    sb4.append(str4);
                    sb4.append(options.inTargetDensity);
                    sb4.append(", thread: ");
                    sb4.append(Thread.currentThread().getName());
                    sb4.append(", duration: ");
                    sb4.append(P2.i.a(j8));
                    Log.v(str6, sb4.toString());
                } else {
                    f9 = 0.0f;
                }
                if (C7 != 0) {
                    C7.setDensity(this.f3159b.densityDpi);
                    switch (i14) {
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            matrix = new Matrix();
                            switch (i14) {
                                case 2:
                                    matrix.setScale(-1.0f, 1.0f);
                                    break;
                                case 3:
                                    matrix.setRotate(180.0f);
                                    break;
                                case 4:
                                    matrix.setRotate(180.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 5:
                                    matrix.setRotate(90.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 6:
                                    matrix.setRotate(90.0f);
                                    break;
                                case 7:
                                    matrix.setRotate(-90.0f);
                                    matrix.postScale(-1.0f, 1.0f);
                                    break;
                                case 8:
                                    matrix.setRotate(-90.0f);
                                    break;
                            }
                            RectF rectF3 = new RectF(f9, f9, C7.getWidth(), C7.getHeight());
                            matrix.mapRect(rectF3);
                            int iRound12 = Math.round(rectF3.width());
                            int iRound13 = Math.round(rectF3.height());
                            if (C7.getConfig() != null) {
                                config2 = C7.getConfig();
                            } else {
                                config2 = Bitmap.Config.ARGB_8888;
                            }
                            Bitmap bitmapC3 = r15.c(iRound12, iRound13, config2);
                            matrix.postTranslate(-rectF3.left, -rectF3.top);
                            bitmapC3.setHasAlpha(C7.hasAlpha());
                            y.a(C7, bitmapC3, matrix);
                            r9 = bitmapC3;
                            break;
                        default:
                            r9 = C7;
                            break;
                    }
                    if (!C7.equals(r9)) {
                        r15.a(C7);
                    }
                }
                return r9;
        }
    }
}
