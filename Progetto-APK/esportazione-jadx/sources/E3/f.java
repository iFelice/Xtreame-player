package E3;

import A0.O;
import B0.w0;
import C2.C0086b;
import C2.C0088d;
import C2.C0091g;
import C2.C0096l;
import C2.C0097m;
import C2.I;
import C2.K;
import C2.M;
import F2.A;
import F2.C0191a;
import F2.C0192b;
import F2.C0193c;
import F2.C0196f;
import F2.C0197g;
import F2.G;
import F2.H;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.util.LongSparseArray;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EdgeEffect;
import android.widget.TextView;
import com.bumptech.glide.integration.okhttp3.OkHttpGlideModule;
import com.google.android.gms.internal.ads.Cw;
import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.math.RoundingMode;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.zip.Inflater;
import okhttp3.internal.http2.Http2Connection;
import p094m0.P;
import p117p0.D;
import p117p0.E;
import p117p0.x;
import pe.hf.black20.R;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SharedPreferences f2856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Field f2857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f2858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Class f2859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f2860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Field f2861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f2862g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Field f2863h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f2864i;

    public static void A(TextView textView, int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i9 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i8 > Math.abs(i9)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i8 - i9);
        }
    }

    public static void B(TextView textView, int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i8 != fontMetricsInt) {
            textView.setLineSpacing(i8 - fontMetricsInt, 1.0f);
        }
    }

    public static ArrayList C(ByteBuffer byteBuffer) {
        int iRemaining;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            byte b8 = byteBufferAsReadOnlyBuffer.get();
            int i8 = (b8 >> 3) & 15;
            if (((b8 >> 2) & 1) != 0) {
                byteBufferAsReadOnlyBuffer.get();
            }
            if (((b8 >> 1) & 1) != 0) {
                iRemaining = 0;
                for (int i9 = 0; i9 < 8; i9++) {
                    byte b9 = byteBufferAsReadOnlyBuffer.get();
                    iRemaining |= (b9 & 127) << (i9 * 7);
                    if ((b9 & 128) == 0) {
                        break;
                    }
                }
            } else {
                iRemaining = byteBufferAsReadOnlyBuffer.remaining();
            }
            ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
            byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iRemaining);
            arrayList.add(new p125q0.r(i8, byteBufferDuplicate));
            byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iRemaining);
        }
        return arrayList;
    }

    public static ActionMode.Callback D(ActionMode.Callback callback) {
        return (!(callback instanceof Q.i) || Build.VERSION.SDK_INT < 26) ? callback : ((Q.i) callback).f5999a;
    }

    public static ActionMode.Callback E(ActionMode.Callback callback, TextView textView) {
        int i8 = Build.VERSION.SDK_INT;
        return (i8 < 26 || i8 > 27 || (callback instanceof Q.i) || callback == null) ? callback : new Q.i(callback, textView);
    }

    public static SharedPreferences F(final Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            try {
                if (f2856a == null) {
                    f2856a = (SharedPreferences) Cw.I(new Callable() { // from class: o3.E
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return context.getSharedPreferences("google_sdk_flags", 0);
                        }
                    });
                }
                sharedPreferences = f2856a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }

    public static int G(int i8) {
        return (i8 >>> 1) ^ (-(i8 & 1));
    }

    public static long H(long j8) {
        return (j8 >>> 1) ^ (-(1 & j8));
    }

    /* JADX WARN: Code duplicated, block: B:185:0x0285  */
    /* JADX WARN: Code duplicated, block: B:202:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:204:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:206:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:208:0x0303  */
    /* JADX WARN: Code duplicated, block: B:299:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:408:0x06b8  */
    /* JADX WARN: Code duplicated, block: B:409:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:412:0x06c5  */
    /* JADX WARN: Code duplicated, block: B:413:0x06c8  */
    /* JADX WARN: Code duplicated, block: B:416:0x06ce  */
    /* JADX WARN: Code duplicated, block: B:417:0x06d1  */
    /* JADX WARN: Code duplicated, block: B:419:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:421:0x06dd  */
    /* JADX WARN: Code duplicated, block: B:424:0x06e5  */
    /* JADX WARN: Code duplicated, block: B:426:0x06e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:436:0x0704 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:72:0x010b  */
    public static void a(p170w.e eVar, p156u.d dVar, ArrayList arrayList, int i8) {
        int i9;
        p170w.b[] bVarArr;
        int i10;
        int i11;
        boolean z7;
        boolean z8;
        boolean z9;
        p170w.c[] cVarArr;
        int i12;
        p170w.b[] bVarArr2;
        p170w.d dVar2;
        int i13;
        int i14;
        int i15;
        int i16;
        p170w.d dVar3;
        p156u.i iVar;
        p156u.i iVar2;
        p170w.c cVar;
        p170w.c cVar2;
        p156u.i iVar3;
        p170w.d dVar4;
        p170w.c[] cVarArr2;
        p170w.d dVar5;
        int i17;
        p170w.c cVar3;
        p170w.c cVar4;
        p156u.i iVar4;
        p170w.c cVar5;
        p156u.i iVar5;
        int size;
        p170w.c cVar6;
        p170w.d dVar6;
        int i18;
        p170w.d dVar7;
        p170w.e eVar2 = eVar;
        int i19 = 2;
        if (i8 == 0) {
            i9 = eVar2.f30878y0;
            bVarArr = eVar2.f30860B0;
            i10 = 0;
        } else {
            i9 = eVar2.f30879z0;
            bVarArr = eVar2.f30859A0;
            i10 = 2;
        }
        int i20 = 0;
        while (i20 < i9) {
            p170w.b bVar = bVarArr[i20];
            boolean z10 = bVar.f30782q;
            p170w.d dVar8 = bVar.f30766a;
            int i21 = 3;
            int i22 = 1;
            int i23 = 8;
            if (z10) {
                i11 = i20;
            } else {
                int i24 = bVar.f30777l;
                int i25 = i24 * 2;
                p170w.d dVar9 = dVar8;
                p170w.d dVar10 = dVar9;
                boolean z11 = false;
                while (!z11) {
                    bVar.f30774i += i22;
                    dVar9.f30841l0[i24] = null;
                    dVar9.f30839k0[i24] = null;
                    int i26 = dVar9.f30829f0;
                    p170w.c[] cVarArr3 = dVar9.f30807P;
                    if (i26 != i23) {
                        dVar9.h(i24);
                        cVarArr3[i25].d();
                        int i27 = i25 + 1;
                        cVarArr3[i27].d();
                        cVarArr3[i25].d();
                        cVarArr3[i27].d();
                        if (bVar.f30767b == null) {
                            bVar.f30767b = dVar9;
                        }
                        bVar.f30769d = dVar9;
                        int i28 = dVar9.f30847o0[i24];
                        if (i28 == i21) {
                            int i29 = dVar9.f30852t[i24];
                            if (i29 == 0 || i29 == i21 || i29 == i19) {
                                bVar.f30775j++;
                                float f8 = dVar9.f30837j0[i24];
                                if (f8 > 0.0f) {
                                    bVar.f30776k += f8;
                                }
                                if (dVar9.f30829f0 != 8 && i28 == 3 && (i29 == 0 || i29 == 3)) {
                                    if (f8 < 0.0f) {
                                        bVar.f30779n = true;
                                    } else {
                                        bVar.f30780o = true;
                                    }
                                    if (bVar.f30773h == null) {
                                        bVar.f30773h = new ArrayList();
                                    }
                                    bVar.f30773h.add(dVar9);
                                }
                                if (bVar.f30771f == null) {
                                    bVar.f30771f = dVar9;
                                }
                                p170w.d dVar11 = bVar.f30772g;
                                if (dVar11 != null) {
                                    dVar11.f30839k0[i24] = dVar9;
                                }
                                bVar.f30772g = dVar9;
                            }
                            if (i24 == 0) {
                                if (dVar9.f30850r == 0 && dVar9.f30853u == 0) {
                                    int i30 = dVar9.f30854v;
                                }
                            } else if (dVar9.f30851s == 0 && dVar9.f30856x == 0) {
                                int i31 = dVar9.f30857y;
                            }
                        } else {
                            i20 = i20;
                        }
                    } else {
                        i20 = i20;
                    }
                    p170w.d dVar12 = dVar10;
                    if (dVar12 != dVar9) {
                        dVar12.f30841l0[i24] = dVar9;
                    }
                    p170w.c cVar7 = cVarArr3[i25 + 1].f30788f;
                    if (cVar7 != null) {
                        dVar7 = cVar7.f30786d;
                        p170w.c cVar8 = dVar7.f30807P[i25].f30788f;
                        if (cVar8 == null || cVar8.f30786d != dVar9) {
                            dVar7 = null;
                        }
                    } else {
                        dVar7 = null;
                    }
                    if (dVar7 == null) {
                        dVar7 = dVar9;
                        z11 = true;
                    }
                    dVar10 = dVar9;
                    i20 = i20;
                    i22 = 1;
                    i23 = 8;
                    i19 = 2;
                    dVar9 = dVar7;
                    i21 = 3;
                }
                i11 = i20;
                p170w.d dVar13 = bVar.f30767b;
                if (dVar13 != null) {
                    dVar13.f30807P[i25].d();
                }
                p170w.d dVar14 = bVar.f30769d;
                if (dVar14 != null) {
                    dVar14.f30807P[i25 + 1].d();
                }
                bVar.f30768c = dVar9;
                if (i24 == 0 && bVar.f30778m) {
                    bVar.f30770e = dVar9;
                } else {
                    bVar.f30770e = dVar8;
                }
                bVar.f30781p = bVar.f30780o && bVar.f30779n;
            }
            bVar.f30782q = true;
            if (arrayList == 0 || arrayList.contains(dVar8)) {
                p170w.d dVar15 = bVar.f30768c;
                p170w.d dVar16 = bVar.f30767b;
                p170w.d dVar17 = bVar.f30769d;
                p170w.d dVar18 = bVar.f30770e;
                float f9 = bVar.f30776k;
                boolean z12 = eVar2.f30847o0[i8] == 2;
                if (i8 == 0) {
                    int i32 = dVar18.f30833h0;
                    boolean z13 = i32 == 0;
                    z9 = i32 == 1;
                    z7 = i32 == 2;
                    z8 = z13;
                } else {
                    int i33 = dVar18.f30835i0;
                    boolean z14 = i33 == 0;
                    boolean z15 = i33 == 1;
                    z7 = i33 == 2;
                    z8 = z14;
                    z9 = z15;
                }
                boolean z16 = false;
                while (true) {
                    cVarArr = eVar2.f30807P;
                    if (z16) {
                        break;
                    }
                    p170w.c cVar9 = dVar8.f30807P[i10];
                    int i34 = z7 ? 1 : 4;
                    int iD = cVar9.d();
                    boolean z17 = z16;
                    int[] iArr = dVar8.f30847o0;
                    int i35 = i9;
                    p170w.b[] bVarArr3 = bVarArr;
                    boolean z18 = iArr[i8] == 3 && dVar8.f30852t[i8] == 0;
                    p170w.c cVar10 = cVar9.f30788f;
                    if (cVar10 != null && dVar8 != dVar8) {
                        iD = cVar10.d() + iD;
                    }
                    int i36 = iD;
                    if (z7 && dVar8 != dVar8 && dVar8 != dVar16) {
                        i34 = 8;
                    }
                    p170w.c cVar11 = cVar9.f30788f;
                    if (cVar11 != null) {
                        if (dVar8 == dVar16) {
                            dVar.f(cVar9.f30791i, cVar11.f30791i, i36, 6);
                        } else {
                            dVar.f(cVar9.f30791i, cVar11.f30791i, i36, 8);
                        }
                        if (z18 && !z7) {
                            i34 = 5;
                        }
                        dVar.e(cVar9.f30791i, cVar9.f30788f.f30791i, i36, (dVar8 == dVar16 && z7 && dVar8.f30809R[i8]) ? 5 : i34);
                    } else {
                        bVar = bVar;
                        dVar8 = dVar8;
                    }
                    p170w.c[] cVarArr4 = dVar8.f30807P;
                    if (z12) {
                        if (dVar8.f30829f0 == 8 || iArr[i8] != 3) {
                            i18 = 0;
                        } else {
                            i18 = 0;
                            dVar.f(cVarArr4[i10 + 1].f30791i, cVarArr4[i10].f30791i, 0, 5);
                        }
                        dVar.f(cVarArr4[i10].f30791i, cVarArr[i10].f30791i, i18, 8);
                    }
                    p170w.c cVar12 = cVarArr4[i10 + 1].f30788f;
                    if (cVar12 != null) {
                        dVar6 = cVar12.f30786d;
                        p170w.c cVar13 = dVar6.f30807P[i10].f30788f;
                        if (cVar13 == null || cVar13.f30786d != dVar8) {
                            dVar6 = null;
                        }
                    } else {
                        dVar6 = null;
                    }
                    if (dVar6 != null) {
                        dVar8 = dVar6;
                        z16 = z17;
                    } else {
                        z16 = true;
                    }
                    dVar18 = dVar18;
                    i9 = i35;
                    bVarArr = bVarArr3;
                    dVar8 = dVar8;
                    bVar = bVar;
                }
                p170w.b bVar2 = bVar;
                p170w.d dVar19 = dVar18;
                p170w.d dVar20 = dVar8;
                i12 = i9;
                bVarArr2 = bVarArr;
                if (dVar17 != null) {
                    int i37 = i10 + 1;
                    if (dVar15.f30807P[i37].f30788f != null) {
                        p170w.c cVar14 = dVar17.f30807P[i37];
                        if (dVar17.f30847o0[i8] == 3 && dVar17.f30852t[i8] == 0 && !z7) {
                            p170w.c cVar15 = cVar14.f30788f;
                            if (cVar15.f30786d == eVar2) {
                                dVar.e(cVar14.f30791i, cVar15.f30791i, -cVar14.d(), 5);
                            } else if (z7) {
                                cVar6 = cVar14.f30788f;
                                if (cVar6.f30786d == eVar2) {
                                    dVar.e(cVar14.f30791i, cVar6.f30791i, -cVar14.d(), 4);
                                }
                            }
                        } else if (z7) {
                            cVar6 = cVar14.f30788f;
                            if (cVar6.f30786d == eVar2) {
                                dVar.e(cVar14.f30791i, cVar6.f30791i, -cVar14.d(), 4);
                            }
                        }
                        dVar.g(cVar14.f30791i, dVar15.f30807P[i37].f30788f.f30791i, -cVar14.d(), 6);
                    }
                }
                if (z12) {
                    int i38 = i10 + 1;
                    p156u.i iVar6 = cVarArr[i38].f30791i;
                    p170w.c cVar16 = dVar15.f30807P[i38];
                    dVar.f(iVar6, cVar16.f30791i, cVar16.d(), 8);
                }
                p170w.b bVar3 = bVar2;
                ArrayList arrayList2 = bVar3.f30773h;
                if (arrayList2 != null && (size = arrayList2.size()) > 1) {
                    float f10 = (!bVar3.f30779n || bVar3.f30781p) ? f9 : bVar3.f30775j;
                    p170w.d dVar21 = null;
                    float f11 = 0.0f;
                    int i39 = 0;
                    while (i39 < size) {
                        p170w.d dVar22 = (p170w.d) arrayList2.get(i39);
                        float f12 = dVar22.f30837j0[i8];
                        p170w.c[] cVarArr5 = dVar22.f30807P;
                        if (f12 < 0.0f) {
                            if (bVar3.f30781p) {
                                dVar.e(cVarArr5[i10 + 1].f30791i, cVarArr5[i10].f30791i, 0, 4);
                            } else {
                                f12 = 1.0f;
                            }
                            bVar3 = bVar3;
                            arrayList2 = arrayList2;
                            size = size;
                            i39++;
                            bVar3 = bVar3;
                            size = size;
                            arrayList2 = arrayList2;
                        }
                        if (f12 == 0.0f) {
                            dVar.e(cVarArr5[i10 + 1].f30791i, cVarArr5[i10].f30791i, 0, 8);
                            bVar3 = bVar3;
                            arrayList2 = arrayList2;
                            size = size;
                        } else {
                            if (dVar21 != null) {
                                p170w.c[] cVarArr6 = dVar21.f30807P;
                                p156u.i iVar7 = cVarArr6[i10].f30791i;
                                int i40 = i10 + 1;
                                p156u.i iVar8 = cVarArr6[i40].f30791i;
                                p156u.i iVar9 = cVarArr5[i10].f30791i;
                                p156u.i iVar10 = cVarArr5[i40].f30791i;
                                p156u.c cVarL = dVar.l();
                                cVarL.f30331b = 0.0f;
                                if (f10 == 0.0f || f11 == f12) {
                                    cVarL.f30333d.j(iVar7, 1.0f);
                                    cVarL.f30333d.j(iVar8, -1.0f);
                                    cVarL.f30333d.j(iVar10, 1.0f);
                                    cVarL.f30333d.j(iVar9, -1.0f);
                                } else if (f11 == 0.0f) {
                                    cVarL.f30333d.j(iVar7, 1.0f);
                                    cVarL.f30333d.j(iVar8, -1.0f);
                                } else if (f12 == 0.0f) {
                                    cVarL.f30333d.j(iVar9, 1.0f);
                                    cVarL.f30333d.j(iVar10, -1.0f);
                                } else {
                                    float f13 = (f11 / f10) / (f12 / f10);
                                    cVarL.f30333d.j(iVar7, 1.0f);
                                    cVarL.f30333d.j(iVar8, -1.0f);
                                    cVarL.f30333d.j(iVar10, f13);
                                    cVarL.f30333d.j(iVar9, -f13);
                                }
                                dVar.c(cVarL);
                            }
                            f11 = f12;
                            dVar21 = dVar22;
                        }
                        i39++;
                        bVar3 = bVar3;
                        size = size;
                        arrayList2 = arrayList2;
                    }
                }
                p170w.b bVar4 = bVar3;
                if (dVar16 == null || !(dVar16 == dVar17 || z7)) {
                    dVar2 = dVar17;
                    i13 = i11;
                    if (!z8 || dVar16 == null) {
                        int i41 = 8;
                        if (z9 && dVar16 != null) {
                            int i42 = bVar4.f30775j;
                            boolean z19 = i42 > 0 && bVar4.f30774i == i42;
                            p170w.d dVar23 = dVar16;
                            p170w.d dVar24 = dVar23;
                            while (dVar24 != null) {
                                p170w.d dVar25 = dVar24.f30841l0[i8];
                                while (dVar25 != null && dVar25.f30829f0 == i41) {
                                    dVar25 = dVar25.f30841l0[i8];
                                }
                                if (dVar24 == dVar16 || dVar24 == dVar2 || dVar25 == null) {
                                    dVar23 = dVar23;
                                    i13 = i13;
                                    i16 = 8;
                                } else {
                                    p170w.d dVar26 = dVar25 == dVar2 ? null : dVar25;
                                    p170w.c[] cVarArr7 = dVar24.f30807P;
                                    p170w.c cVar17 = cVarArr7[i10];
                                    p156u.i iVar11 = cVar17.f30791i;
                                    int i43 = i10 + 1;
                                    p156u.i iVar12 = dVar23.f30807P[i43].f30791i;
                                    int iD2 = cVar17.d();
                                    int iD3 = cVarArr7[i43].d();
                                    if (dVar26 != null) {
                                        cVar = dVar26.f30807P[i10];
                                        iVar = cVar.f30791i;
                                        dVar3 = dVar26;
                                        p170w.c cVar18 = cVar.f30788f;
                                        iVar2 = cVar18 != null ? cVar18.f30791i : null;
                                    } else {
                                        dVar3 = dVar26;
                                        p170w.c cVar19 = dVar2.f30807P[i10];
                                        iVar = cVar19 != null ? cVar19.f30791i : null;
                                        iVar2 = cVarArr7[i43].f30791i;
                                        cVar = cVar19;
                                    }
                                    int iD4 = cVar != null ? cVar.d() + iD3 : iD3;
                                    int iD5 = dVar23.f30807P[i43].d() + iD2;
                                    int i44 = z19 ? 8 : 4;
                                    if (iVar11 == null || iVar12 == null || iVar == null || iVar2 == null) {
                                        i16 = 8;
                                    } else {
                                        i16 = 8;
                                        dVar.b(iVar11, iVar12, iD5, 0.5f, iVar, iVar2, iD4, i44);
                                    }
                                    dVar25 = dVar3;
                                }
                                dVar23 = dVar24.f30829f0 != i16 ? dVar24 : dVar23;
                                dVar24 = dVar25;
                                i13 = i13;
                                i41 = 8;
                            }
                            i14 = i13;
                            p170w.c cVar20 = dVar16.f30807P[i10];
                            p170w.c cVar21 = dVar20.f30807P[i10].f30788f;
                            int i45 = i10 + 1;
                            p170w.c cVar22 = dVar2.f30807P[i45];
                            p170w.c cVar23 = dVar15.f30807P[i45].f30788f;
                            if (cVar21 == null) {
                                i15 = 5;
                            } else {
                                if (dVar16 != dVar2) {
                                    dVar.e(cVar20.f30791i, cVar21.f30791i, cVar20.d(), 5);
                                } else if (cVar23 != null) {
                                    i15 = 5;
                                    dVar.b(cVar20.f30791i, cVar21.f30791i, cVar20.d(), 0.5f, cVar22.f30791i, cVar23.f30791i, cVar22.d(), 5);
                                }
                                i15 = 5;
                            }
                            if (cVar23 != null && dVar16 != dVar2) {
                                dVar.e(cVar22.f30791i, cVar23.f30791i, -cVar22.d(), i15);
                            }
                        }
                        if ((z8 || z9) && dVar16 != null && dVar16 != dVar2) {
                            cVarArr2 = dVar16.f30807P;
                            p170w.c cVar24 = cVarArr2[i10];
                            if (dVar2 == null) {
                                dVar5 = dVar16;
                            } else {
                                dVar5 = dVar2;
                            }
                            i17 = i10 + 1;
                            p170w.c[] cVarArr8 = dVar5.f30807P;
                            cVar3 = cVarArr8[i17];
                            cVar4 = cVar24.f30788f;
                            if (cVar4 != null) {
                                iVar4 = cVar4.f30791i;
                            } else {
                                iVar4 = null;
                            }
                            cVar5 = cVar3.f30788f;
                            if (cVar5 != null) {
                                iVar5 = cVar5.f30791i;
                            } else {
                                iVar5 = null;
                            }
                            if (dVar15 != dVar5) {
                                p170w.c cVar25 = dVar15.f30807P[i17].f30788f;
                                iVar5 = cVar25 != null ? cVar25.f30791i : null;
                            }
                            if (dVar16 == dVar5) {
                                cVar3 = cVarArr2[i17];
                            }
                            if (iVar4 == null && iVar5 != null) {
                                dVar.b(cVar24.f30791i, iVar4, cVar24.d(), 0.5f, iVar5, cVar3.f30791i, cVarArr8[i17].d(), 5);
                            }
                        }
                    } else {
                        int i46 = bVar4.f30775j;
                        boolean z20 = i46 > 0 && bVar4.f30774i == i46;
                        p170w.d dVar27 = dVar16;
                        p170w.d dVar28 = dVar27;
                        while (dVar28 != null) {
                            p170w.d dVar29 = dVar28.f30841l0[i8];
                            while (dVar29 != null && dVar29.f30829f0 == 8) {
                                dVar29 = dVar29.f30841l0[i8];
                            }
                            if (dVar29 != null || dVar28 == dVar2) {
                                p170w.c[] cVarArr9 = dVar28.f30807P;
                                p170w.c cVar26 = cVarArr9[i10];
                                p156u.i iVar13 = cVar26.f30791i;
                                p170w.c cVar27 = cVar26.f30788f;
                                p156u.i iVar14 = cVar27 != null ? cVar27.f30791i : null;
                                if (dVar27 != dVar28) {
                                    iVar14 = dVar27.f30807P[i10 + 1].f30791i;
                                } else if (dVar28 == dVar16) {
                                    p170w.c cVar28 = dVar20.f30807P[i10].f30788f;
                                    iVar14 = cVar28 != null ? cVar28.f30791i : null;
                                }
                                int iD6 = cVar26.d();
                                int i47 = i10 + 1;
                                int iD7 = cVarArr9[i47].d();
                                if (dVar29 != null) {
                                    cVar2 = dVar29.f30807P[i10];
                                    iVar3 = cVar2.f30791i;
                                } else {
                                    cVar2 = dVar15.f30807P[i47].f30788f;
                                    iVar3 = cVar2 != null ? cVar2.f30791i : null;
                                }
                                p156u.i iVar15 = cVarArr9[i47].f30791i;
                                if (cVar2 != null) {
                                    iD7 = cVar2.d() + iD7;
                                }
                                int iD8 = dVar27.f30807P[i47].d() + iD6;
                                if (iVar13 == null || iVar14 == null || iVar3 == null || iVar15 == null) {
                                    dVar4 = dVar29;
                                } else {
                                    if (dVar28 == dVar16) {
                                        iD8 = dVar16.f30807P[i10].d();
                                    }
                                    if (dVar28 == dVar2) {
                                        iD7 = dVar2.f30807P[i47].d();
                                    }
                                    int i48 = iD7;
                                    dVar4 = dVar29;
                                    dVar.b(iVar13, iVar14, iD8, 0.5f, iVar3, iVar15, i48, z20 ? 8 : 5);
                                }
                            } else {
                                dVar4 = dVar29;
                            }
                            dVar27 = dVar28.f30829f0 != 8 ? dVar28 : dVar27;
                            dVar28 = dVar4;
                        }
                    }
                } else {
                    p170w.c cVar29 = dVar20.f30807P[i10];
                    int i49 = i10 + 1;
                    p170w.c cVar30 = dVar15.f30807P[i49];
                    p170w.c cVar31 = cVar29.f30788f;
                    p156u.i iVar16 = cVar31 != null ? cVar31.f30791i : null;
                    p170w.c cVar32 = cVar30.f30788f;
                    p156u.i iVar17 = cVar32 != null ? cVar32.f30791i : null;
                    p170w.c cVar33 = dVar16.f30807P[i10];
                    if (dVar17 != null) {
                        cVar30 = dVar17.f30807P[i49];
                    }
                    if (iVar16 == null || iVar17 == null) {
                        dVar2 = dVar17;
                        i13 = i11;
                    } else {
                        dVar2 = dVar17;
                        i13 = i11;
                        dVar.b(cVar33.f30791i, iVar16, cVar33.d(), i8 == 0 ? dVar19.f30823c0 : dVar19.f30825d0, iVar17, cVar30.f30791i, cVar30.d(), 7);
                    }
                }
                i14 = i13;
                if (z8) {
                    cVarArr2 = dVar16.f30807P;
                    p170w.c cVar210 = cVarArr2[i10];
                    if (dVar2 == null) {
                        dVar5 = dVar16;
                    } else {
                        dVar5 = dVar2;
                    }
                    i17 = i10 + 1;
                    p170w.c[] cVarArr10 = dVar5.f30807P;
                    cVar3 = cVarArr10[i17];
                    cVar4 = cVar210.f30788f;
                    if (cVar4 != null) {
                        iVar4 = cVar4.f30791i;
                    } else {
                        iVar4 = null;
                    }
                    cVar5 = cVar3.f30788f;
                    if (cVar5 != null) {
                        iVar5 = cVar5.f30791i;
                    } else {
                        iVar5 = null;
                    }
                    if (dVar15 != dVar5) {
                        p170w.c cVar211 = dVar15.f30807P[i17].f30788f;
                        iVar5 = cVar211 != null ? cVar211.f30791i : null;
                    }
                    if (dVar16 == dVar5) {
                        cVar3 = cVarArr2[i17];
                    }
                    if (iVar4 == null) {
                    }
                } else {
                    cVarArr2 = dVar16.f30807P;
                    p170w.c cVar212 = cVarArr2[i10];
                    if (dVar2 == null) {
                        dVar5 = dVar16;
                    } else {
                        dVar5 = dVar2;
                    }
                    i17 = i10 + 1;
                    p170w.c[] cVarArr11 = dVar5.f30807P;
                    cVar3 = cVarArr11[i17];
                    cVar4 = cVar212.f30788f;
                    if (cVar4 != null) {
                        iVar4 = cVar4.f30791i;
                    } else {
                        iVar4 = null;
                    }
                    cVar5 = cVar3.f30788f;
                    if (cVar5 != null) {
                        iVar5 = cVar5.f30791i;
                    } else {
                        iVar5 = null;
                    }
                    if (dVar15 != dVar5) {
                        p170w.c cVar213 = dVar15.f30807P[i17].f30788f;
                        iVar5 = cVar213 != null ? cVar213.f30791i : null;
                    }
                    if (dVar16 == dVar5) {
                        cVar3 = cVarArr2[i17];
                    }
                    if (iVar4 == null) {
                    }
                }
            } else {
                i12 = i9;
                bVarArr2 = bVarArr;
                i14 = i11;
            }
            i20 = i14 + 1;
            i19 = 2;
            eVar2 = eVar;
            i9 = i12;
            bVarArr = bVarArr2;
        }
    }

    public static byte[] b(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(1886614376);
        byteBufferAllocate.putInt(uuidArr != null ? Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE : 0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            byteBufferAllocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                byteBufferAllocate.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr == null || bArr.length == 0) {
            byteBufferAllocate.putInt(0);
        } else {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    public static void c(String str, boolean z7) throws P {
        if (!z7) {
            throw P.a(str, null);
        }
    }

    public static int d(int i8, int i9) {
        long j8 = ((long) i8) + ((long) i9);
        int i10 = (int) j8;
        if (j8 == ((long) i10)) {
            return i10;
        }
        throw new ArithmeticException("overflow: checkedAdd(" + i8 + ", " + i9 + ")");
    }

    public static void e(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static boolean f(File file, Resources resources, int i8) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i8);
            try {
                boolean zG = g(file, inputStreamOpenRawResource);
                e(inputStreamOpenRawResource);
                return zG;
            } catch (Throwable th) {
                th = th;
                e(inputStreamOpenRawResource);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenRawResource = null;
        }
    }

    public static boolean g(File file, InputStream inputStream) throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i8 = inputStream.read(bArr);
                        if (i8 == -1) {
                            e(fileOutputStream2);
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                            return true;
                        }
                        fileOutputStream2.write(bArr, 0, i8);
                    }
                } catch (IOException e8) {
                    e = e8;
                    fileOutputStream = fileOutputStream2;
                    Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    e(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    e(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e9) {
            e = e9;
        }
    }

    public static com.bumptech.glide.j h(com.bumptech.glide.b bVar, List list) {
        p173w2.n c0196f;
        p173w2.n c0191a;
        int i8;
        int i9;
        int i10;
        p196z2.d dVar = bVar.f11497G;
        com.bumptech.glide.f fVar = bVar.f11499I;
        Context applicationContext = fVar.getApplicationContext();
        p032e0.u uVar = fVar.f11532h;
        com.bumptech.glide.j jVar = new com.bumptech.glide.j();
        F2.l lVar = new F2.l();
        I2.c cVar = jVar.f11546g;
        synchronized (cVar) {
            cVar.f4008G.add(lVar);
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 27) {
            jVar.k(new F2.t());
        }
        Resources resources = applicationContext.getResources();
        List listF = jVar.f();
        p196z2.h hVar = bVar.f11500J;
        H2.a aVar = new H2.a(applicationContext, listF, dVar, hVar);
        H h8 = new H(dVar, new G(1));
        F2.p pVar = new F2.p(jVar.f(), resources.getDisplayMetrics(), dVar, hVar);
        int i12 = 0;
        int i13 = 2;
        if (i11 < 28 || !uVar.f24776a.containsKey(com.bumptech.glide.c.class)) {
            c0196f = new C0196f(pVar, i12);
            c0191a = new C0191a(i13, pVar, hVar);
        } else {
            c0191a = new C0197g(1);
            c0196f = new C0197g(0);
        }
        if (i11 >= 28) {
            jVar.d(new G2.a(new p096m2.e(11, listF, hVar), 1), InputStream.class, Drawable.class, "Animation");
            i8 = 0;
            jVar.d(new G2.a(new p096m2.e(11, listF, hVar), i8), ByteBuffer.class, Drawable.class, "Animation");
        } else {
            i8 = 0;
        }
        G2.e eVar = new G2.e(applicationContext);
        C0192b c0192b = new C0192b(hVar);
        K.k kVar = new K.k(5, i8);
        G g8 = new G(4);
        ContentResolver contentResolver = applicationContext.getContentResolver();
        jVar.b(ByteBuffer.class, new U1.f(23, null));
        jVar.b(InputStream.class, new C0091g(hVar, 3));
        jVar.d(c0196f, ByteBuffer.class, Bitmap.class, "Bitmap");
        jVar.d(c0191a, InputStream.class, Bitmap.class, "Bitmap");
        String str = Build.FINGERPRINT;
        if (!"robolectric".equals(str)) {
            jVar.d(new C0196f(pVar, 1), ParcelFileDescriptor.class, Bitmap.class, "Bitmap");
        }
        jVar.d(new H(dVar, new U1.f()), AssetFileDescriptor.class, Bitmap.class, "Bitmap");
        jVar.d(h8, ParcelFileDescriptor.class, Bitmap.class, "Bitmap");
        K k8 = K.f1371a;
        jVar.a(Bitmap.class, Bitmap.class, k8);
        jVar.d(new A(0), Bitmap.class, Bitmap.class, "Bitmap");
        jVar.c(Bitmap.class, c0192b);
        jVar.d(new C0191a(resources, c0196f), ByteBuffer.class, BitmapDrawable.class, "BitmapDrawable");
        jVar.d(new C0191a(resources, c0191a), InputStream.class, BitmapDrawable.class, "BitmapDrawable");
        jVar.d(new C0191a(resources, h8), ParcelFileDescriptor.class, BitmapDrawable.class, "BitmapDrawable");
        jVar.c(BitmapDrawable.class, new F.i(9, dVar, c0192b));
        jVar.d(new H2.j(listF, aVar, hVar), InputStream.class, H2.c.class, "Animation");
        jVar.d(aVar, ByteBuffer.class, H2.c.class, "Animation");
        jVar.c(H2.c.class, new G(3));
        jVar.a(p159u2.a.class, p159u2.a.class, k8);
        jVar.d(new C0193c(dVar), p159u2.a.class, Bitmap.class, "Bitmap");
        jVar.d(eVar, Uri.class, Drawable.class, "legacy_append");
        jVar.d(new C0191a(1, eVar, dVar), Uri.class, Bitmap.class, "legacy_append");
        jVar.i(new com.bumptech.glide.load.data.h(2));
        jVar.a(File.class, ByteBuffer.class, new C0088d(2));
        jVar.a(File.class, InputStream.class, new C2.r(1));
        jVar.d(new A(2), File.class, File.class, "legacy_append");
        jVar.a(File.class, ParcelFileDescriptor.class, new C2.r(0));
        jVar.a(File.class, File.class, k8);
        jVar.i(new com.bumptech.glide.load.data.m(hVar));
        if (!"robolectric".equals(str)) {
            jVar.i(new com.bumptech.glide.load.data.h(1));
        }
        C0097m c0097m = new C0097m(applicationContext, 2);
        C0097m c0097m2 = new C0097m(applicationContext, 0);
        C0097m c0097m3 = new C0097m(applicationContext, 1);
        Class cls = Integer.TYPE;
        jVar.a(cls, InputStream.class, c0097m);
        jVar.a(Integer.class, InputStream.class, c0097m);
        jVar.a(cls, AssetFileDescriptor.class, c0097m2);
        jVar.a(Integer.class, AssetFileDescriptor.class, c0097m2);
        jVar.a(cls, Drawable.class, c0097m3);
        jVar.a(Integer.class, Drawable.class, c0097m3);
        jVar.a(Uri.class, InputStream.class, new C0097m(applicationContext, 5));
        jVar.a(Uri.class, AssetFileDescriptor.class, new C0097m(applicationContext, 4));
        I i14 = new I(resources, 2);
        I i15 = new I(resources, 0);
        I i16 = new I(resources, 1);
        jVar.a(Integer.class, Uri.class, i14);
        jVar.a(cls, Uri.class, i14);
        jVar.a(Integer.class, AssetFileDescriptor.class, i15);
        jVar.a(cls, AssetFileDescriptor.class, i15);
        jVar.a(Integer.class, InputStream.class, i16);
        jVar.a(cls, InputStream.class, i16);
        jVar.a(String.class, InputStream.class, new C0096l(0));
        jVar.a(Uri.class, InputStream.class, new C0096l(0));
        jVar.a(String.class, InputStream.class, new C0088d(5));
        jVar.a(String.class, ParcelFileDescriptor.class, new C0088d(4));
        jVar.a(String.class, AssetFileDescriptor.class, new C0088d(3));
        jVar.a(Uri.class, InputStream.class, new C0086b(applicationContext.getAssets(), 1));
        jVar.a(Uri.class, AssetFileDescriptor.class, new C0086b(applicationContext.getAssets(), 0));
        jVar.a(Uri.class, InputStream.class, new C0097m(applicationContext, 6));
        jVar.a(Uri.class, InputStream.class, new C0097m(applicationContext, 7));
        if (i11 >= 29) {
            i10 = 1;
            jVar.a(Uri.class, InputStream.class, new D2.c(applicationContext, 1));
            i9 = 0;
            jVar.a(Uri.class, ParcelFileDescriptor.class, new D2.c(applicationContext, 0));
        } else {
            i9 = 0;
            i10 = 1;
        }
        jVar.a(Uri.class, InputStream.class, new M(contentResolver, 2));
        jVar.a(Uri.class, ParcelFileDescriptor.class, new M(contentResolver, i10));
        jVar.a(Uri.class, AssetFileDescriptor.class, new M(contentResolver, i9));
        jVar.a(Uri.class, InputStream.class, new C0088d(6));
        jVar.a(URL.class, InputStream.class, new C0088d(7));
        jVar.a(Uri.class, File.class, new C0097m(applicationContext, 3));
        int i17 = 1;
        jVar.a(C2.t.class, InputStream.class, new C0096l(1));
        jVar.a(byte[].class, ByteBuffer.class, new C0088d(0));
        jVar.a(byte[].class, InputStream.class, new C0088d(i17));
        jVar.a(Uri.class, Uri.class, k8);
        jVar.a(Drawable.class, Drawable.class, k8);
        jVar.d(new A(i17), Drawable.class, Drawable.class, "legacy_append");
        jVar.j(Bitmap.class, BitmapDrawable.class, new C0091g(resources));
        jVar.j(Bitmap.class, byte[].class, kVar);
        jVar.j(Drawable.class, byte[].class, new p096m2.u(dVar, kVar, g8, 27, 0));
        jVar.j(H2.c.class, byte[].class, g8);
        if (i11 >= 23) {
            H h9 = new H(dVar, new U1.f(29, null));
            jVar.d(h9, ByteBuffer.class, Bitmap.class, "legacy_append");
            jVar.d(new C0191a(resources, h9), ByteBuffer.class, BitmapDrawable.class, "legacy_append");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            OkHttpGlideModule okHttpGlideModule = (OkHttpGlideModule) it.next();
            try {
                okHttpGlideModule.a(jVar);
            } catch (AbstractMethodError e8) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ".concat(okHttpGlideModule.getClass().getName()), e8);
            }
        }
        return jVar;
    }

    public static void i(Object obj, String str, String str2) {
        String strO = o(str);
        if (Log.isLoggable(strO, 3)) {
            Log.d(strO, String.format(str2, obj));
        }
    }

    public static int j(int i8, int i9, RoundingMode roundingMode) {
        roundingMode.getClass();
        if (i9 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i10 = i8 / i9;
        int i11 = i8 - (i9 * i10);
        if (i11 == 0) {
            return i10;
        }
        int i12 = ((i8 ^ i9) >> 31) | 1;
        switch (B4.d.f1216a[roundingMode.ordinal()]) {
            case 1:
                Cw.i(i11 == 0);
                return i10;
            case 2:
                return i10;
            case 3:
                if (i12 >= 0) {
                    return i10;
                }
                break;
            case 4:
                break;
            case 5:
                if (i12 <= 0) {
                    return i10;
                }
                break;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i11);
                int iAbs2 = iAbs - (Math.abs(i9) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        if (!((roundingMode == RoundingMode.HALF_EVEN) & ((i10 & 1) != 0))) {
                            return i10;
                        }
                    }
                } else if (iAbs2 <= 0) {
                    return i10;
                }
            default:
                throw new AssertionError();
        }
        return i10 + i12;
    }

    public static void k(String str, String str2, Exception exc) {
        String strO = o(str);
        if (Log.isLoggable(strO, 6)) {
            Log.e(strO, str2, exc);
        }
    }

    public static void l(Object obj) {
        LongSparseArray longSparseArray;
        if (!f2860e) {
            try {
                f2859d = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e8) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e8);
            }
            f2860e = true;
        }
        Class cls = f2859d;
        if (cls == null) {
            return;
        }
        if (!f2862g) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f2861f = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e9) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e9);
            }
            f2862g = true;
        }
        Field field = f2861f;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e10) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e10);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public static float m(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Q.c.b(edgeEffect);
        }
        return 0.0f;
    }

    public static int n(int i8) {
        if (i8 == 20) {
            return 63750;
        }
        if (i8 == 30) {
            return 2250000;
        }
        switch (i8) {
            case 5:
                return 80000;
            case 6:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            default:
                switch (i8) {
                    case 14:
                        return 3062500;
                    case 15:
                        return 8000;
                    case 16:
                        return 256000;
                    case 17:
                        return 336000;
                    case 18:
                        return 768000;
                    default:
                        return -2147483647;
                }
        }
    }

    public static String o(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return "TRuntime.".concat(str);
        }
        String strConcat = "TRuntime.".concat(str);
        return strConcat.length() > 23 ? strConcat.substring(0, 23) : strConcat;
    }

    public static File p(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i8 = 0; i8 < 100; i8++) {
            File file = new File(cacheDir, str + i8);
            try {
                if (file.createNewFile()) {
                    return file;
                }
            } catch (IOException unused) {
            }
        }
        return null;
    }

    public static L.a q(TextView textView) {
        int iB;
        int iF;
        TextDirectionHeuristic textDirectionHeuristic;
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 28) {
            return new L.a(p093m.d.i(textView));
        }
        TextPaint textPaint = new TextPaint(textView.getPaint());
        if (Build.VERSION.SDK_INT >= 23) {
            iB = 1;
            iF = 1;
        } else {
            iB = 0;
            iF = 0;
        }
        TextDirectionHeuristic textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        if (i8 >= 23) {
            iB = p086l.H.b(textView);
            iF = p086l.H.f(textView);
        }
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (i8 < 28 || (textView.getInputType() & 15) != 3) {
            boolean z7 = textView.getLayoutDirection() == 1;
            switch (textView.getTextDirection()) {
                case 2:
                    textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                    break;
                case 3:
                    textDirectionHeuristic = TextDirectionHeuristics.LTR;
                    break;
                case 4:
                    textDirectionHeuristic = TextDirectionHeuristics.RTL;
                    break;
                case 5:
                    textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                    break;
                case 6:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                    break;
                case 7:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
                default:
                    textDirectionHeuristic = !z7 ? TextDirectionHeuristics.FIRSTSTRONG_LTR : TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
            }
        } else {
            byte directionality = Character.getDirectionality(p093m.d.c(D.q.c(textView.getTextLocale()))[0].codePointAt(0));
            textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        return new L.a(textPaint, textDirectionHeuristic, iB, iF);
    }

    public static boolean r(ViewGroup viewGroup, View view) {
        while (view != null) {
            if (view == viewGroup) {
                return true;
            }
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                return false;
            }
            view = (View) parent;
        }
        return false;
    }

    public static int s(int i8, RoundingMode roundingMode) {
        if (i8 <= 0) {
            throw new IllegalArgumentException(O.y("x (", i8, ") must be > 0"));
        }
        switch (B4.d.f1216a[roundingMode.ordinal()]) {
            case 1:
                Cw.i((i8 > 0) & (((i8 + (-1)) & i8) == 0));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i8 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i8);
                return (31 - iNumberOfLeadingZeros) + ((~(~(((-1257966797) >>> iNumberOfLeadingZeros) - i8))) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i8);
    }

    public static MappedByteBuffer t(Context context, Uri uri) {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return map;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static float u(EdgeEffect edgeEffect, float f8, float f9) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Q.c.c(edgeEffect, f8, f9);
        }
        Q.b.a(edgeEffect, f8, f9);
        return f8;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0064  */
    public static ArrayList v(E e8) {
        ArrayList arrayList;
        int i8;
        ArrayList arrayList2;
        V0.e eVar;
        E e9 = e8;
        V0.e eVar2 = null;
        if (e8.z() != 0) {
            return null;
        }
        int i9 = 7;
        e9.M(7);
        int iL = e8.l();
        if (iL == 1684433976) {
            E e10 = new E();
            Inflater inflater = new Inflater(true);
            try {
                if (!p117p0.M.K(e9, e10, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                e9 = e10;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (iL != 1918990112) {
            return null;
        }
        ArrayList arrayList3 = new ArrayList();
        int i10 = e9.f28036b;
        int i11 = e9.f28037c;
        while (i10 < i11) {
            int iL2 = e9.l() + i10;
            if (iL2 > i10 && iL2 <= i11) {
                if (e9.l() == 1835365224) {
                    int iL3 = e9.l();
                    if (iL3 > 10000) {
                        eVar = eVar2;
                        arrayList2 = arrayList3;
                        i8 = i11;
                    } else {
                        float[] fArr = new float[iL3];
                        for (int i12 = 0; i12 < iL3; i12++) {
                            fArr[i12] = Float.intBitsToFloat(e9.l());
                        }
                        int iL4 = e9.l();
                        if (iL4 > 32000) {
                            eVar = eVar2;
                            arrayList2 = arrayList3;
                            i8 = i11;
                        } else {
                            double dLog = Math.log(2.0d);
                            i8 = i11;
                            int iCeil = (int) Math.ceil(Math.log(((double) iL3) * 2.0d) / dLog);
                            D d6 = new D(e9.f28035a, 0, eVar2);
                            d6.r(e9.f28036b * 8);
                            float[] fArr2 = new float[iL4 * 5];
                            int i13 = 5;
                            int[] iArr = new int[5];
                            int i14 = 0;
                            int i15 = 0;
                            while (true) {
                                if (i14 < iL4) {
                                    int i16 = 0;
                                    while (true) {
                                        if (i16 < i13) {
                                            int i17 = iArr[i16];
                                            int i18 = d6.i(iCeil);
                                            float[] fArr3 = fArr2;
                                            int i19 = ((i18 >> 1) ^ (-(i18 & 1))) + i17;
                                            if (i19 < iL3 && i19 >= 0) {
                                                fArr3[i15] = fArr[i19];
                                                iArr[i16] = i19;
                                                i16++;
                                                fArr2 = fArr3;
                                                i15++;
                                                i13 = 5;
                                            }
                                        } else {
                                            i14++;
                                            i13 = 5;
                                        }
                                    }
                                } else {
                                    float[] fArr4 = fArr2;
                                    d6.r((d6.g() + i9) & (-8));
                                    int i20 = 32;
                                    int i21 = d6.i(32);
                                    p016c.g[] gVarArr = new p016c.g[i21];
                                    int i22 = 0;
                                    while (true) {
                                        if (i22 < i21) {
                                            int i23 = d6.i(8);
                                            int i24 = d6.i(8);
                                            int i25 = d6.i(i20);
                                            if (i25 <= 128000) {
                                                arrayList2 = arrayList3;
                                                int iCeil2 = (int) Math.ceil(Math.log(((double) iL4) * 2.0d) / dLog);
                                                float[] fArr5 = new float[i25 * 3];
                                                float[] fArr6 = new float[i25 * 2];
                                                int i26 = 0;
                                                int i27 = 0;
                                                while (true) {
                                                    if (i26 < i25) {
                                                        int i28 = d6.i(iCeil2);
                                                        int i29 = i25;
                                                        int i30 = ((i28 >> 1) ^ (-(i28 & 1))) + i27;
                                                        if (i30 < 0 || i30 >= iL4) {
                                                            eVar = null;
                                                        } else {
                                                            int i31 = i26 * 3;
                                                            int i32 = i30 * 5;
                                                            fArr5[i31] = fArr4[i32];
                                                            fArr5[i31 + 1] = fArr4[i32 + 1];
                                                            fArr5[i31 + 2] = fArr4[i32 + 2];
                                                            int i33 = i26 * 2;
                                                            fArr6[i33] = fArr4[i32 + 3];
                                                            fArr6[i33 + 1] = fArr4[i32 + 4];
                                                            i26++;
                                                            i27 = i30;
                                                            i25 = i29;
                                                        }
                                                    } else {
                                                        gVarArr[i22] = new p016c.g(i23, fArr5, fArr6, i24);
                                                        i22++;
                                                        arrayList3 = arrayList2;
                                                        i20 = 32;
                                                    }
                                                }
                                            }
                                        } else {
                                            arrayList2 = arrayList3;
                                            eVar = new V0.e(gVarArr);
                                        }
                                    }
                                }
                                arrayList2 = arrayList3;
                                eVar = null;
                            }
                        }
                    }
                    if (eVar != null) {
                        arrayList = arrayList2;
                        arrayList.add(eVar);
                    }
                } else {
                    arrayList = arrayList3;
                    i8 = i11;
                }
                e9.L(iL2);
                i11 = i8;
                arrayList3 = arrayList;
                i10 = iL2;
                i9 = 7;
                eVar2 = null;
            }
            return null;
        }
        return arrayList3;
    }

    public static w0 w(byte[] bArr) {
        UUID[] uuidArr;
        E e8 = new E(bArr);
        if (e8.f28037c < 32) {
            return null;
        }
        e8.L(0);
        int iA = e8.a();
        int iL = e8.l();
        if (iL != iA) {
            x.f("PsshAtomUtil", "Advertised atom size (" + iL + ") does not match buffer size: " + iA);
            return null;
        }
        int iL2 = e8.l();
        if (iL2 != 1886614376) {
            U2.v("Atom type is not pssh: ", iL2, "PsshAtomUtil");
            return null;
        }
        int iE = p111o1.e.e(e8.l());
        if (iE > 1) {
            U2.v("Unsupported pssh version: ", iE, "PsshAtomUtil");
            return null;
        }
        UUID uuid = new UUID(e8.t(), e8.t());
        if (iE == 1) {
            int iD = e8.D();
            uuidArr = new UUID[iD];
            for (int i8 = 0; i8 < iD; i8++) {
                uuidArr[i8] = new UUID(e8.t(), e8.t());
            }
        } else {
            uuidArr = null;
        }
        int iD2 = e8.D();
        int iA2 = e8.a();
        if (iD2 == iA2) {
            byte[] bArr2 = new byte[iD2];
            e8.j(0, bArr2, iD2);
            return new w0(uuid, iE, bArr2, uuidArr);
        }
        x.f("PsshAtomUtil", "Atom data size (" + iD2 + ") does not match the bytes left: " + iA2);
        return null;
    }

    public static byte[] x(UUID uuid, byte[] bArr) {
        w0 w0VarW = w(bArr);
        if (w0VarW == null) {
            return null;
        }
        if (uuid.equals((UUID) w0VarW.f1121I)) {
            return (byte[]) w0VarW.f1122J;
        }
        x.f("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + ((UUID) w0VarW.f1121I) + ".");
        return null;
    }

    public static final void y(View view, S1.g gVar) {
        q0.h(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, gVar);
    }

    public static void z(TextView textView, int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            p093m.d.l(textView, i8);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i9 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i8 > Math.abs(i9)) {
            textView.setPadding(textView.getPaddingLeft(), i8 + i9, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }
}
