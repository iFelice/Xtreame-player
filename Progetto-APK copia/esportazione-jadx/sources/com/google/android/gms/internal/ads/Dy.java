package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class Dy {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f12910f = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f12911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f12912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC2112uy f12914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f12915e;

    public Dy(Context context, int i8, InterfaceC2112uy interfaceC2112uy, boolean z7) {
        this.f12915e = false;
        this.f12911a = context;
        this.f12913c = Integer.toString(i8 - 1);
        this.f12912b = context.getSharedPreferences("pcvmspf", 0);
        this.f12914d = interfaceC2112uy;
        this.f12915e = z7;
    }

    public static String d(C2120v5 c2120v5) {
        C2172w5 c2172w5D = C2224x5.D();
        String strI = c2120v5.B().I();
        c2172w5D.d();
        C2224x5.J((C2224x5) c2172w5D.f20255H, strI);
        String strH = c2120v5.B().H();
        c2172w5D.d();
        C2224x5.L((C2224x5) c2172w5D.f20255H, strH);
        long jA = c2120v5.B().A();
        c2172w5D.d();
        C2224x5.N((C2224x5) c2172w5D.f20255H, jA);
        long jC = c2120v5.B().C();
        c2172w5D.d();
        C2224x5.K((C2224x5) c2172w5D.f20255H, jC);
        long jB = c2120v5.B().B();
        c2172w5D.d();
        C2224x5.M((C2224x5) c2172w5D.f20255H, jB);
        return P3.c.b(((C2224x5) c2172w5D.b()).d());
    }

    public final boolean a(C2120v5 c2120v5) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f12910f) {
            try {
                if (!Q3.b.U(new File(c(c2120v5.B().I()), "pcbc"), c2120v5.C().b())) {
                    e(4020, jCurrentTimeMillis);
                    return false;
                }
                String strD = d(c2120v5);
                SharedPreferences.Editor editorEdit = this.f12912b.edit();
                editorEdit.putString("LATMTD".concat(String.valueOf(this.f12913c)), strD);
                boolean zCommit = editorEdit.commit();
                if (zCommit) {
                    e(5015, jCurrentTimeMillis);
                } else {
                    e(4021, jCurrentTimeMillis);
                }
                return zCommit;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e2, code lost:
    
        if (com.google.android.gms.internal.ads.C2272y1.g(r7) == false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(com.google.android.gms.internal.ads.C2120v5 r17, com.google.android.gms.internal.ads.K4 r18) {
        /*
            Method dump skipped, instruction units count: 397
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.Dy.b(com.google.android.gms.internal.ads.v5, com.google.android.gms.internal.ads.K4):boolean");
    }

    public final File c(String str) {
        return new File(new File(this.f12911a.getDir("pccache", 0), this.f12913c), str);
    }

    public final void e(int i8, long j8) {
        this.f12914d.zza(i8, j8);
    }

    public final C2224x5 f(int i8) {
        C1509jH c1509jHA;
        String str = this.f12913c;
        SharedPreferences sharedPreferences = this.f12912b;
        String string = i8 == 1 ? sharedPreferences.getString("LATMTD".concat(String.valueOf(str)), null) : sharedPreferences.getString("FBAMTD".concat(String.valueOf(str)), null);
        if (string == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            byte[] bArrD = P3.c.d(string);
            VG vgY = XG.y(0, bArrD, bArrD.length);
            if (this.f12915e) {
                C1509jH c1509jH = C1509jH.f19448b;
                UH uh = UH.f16822c;
                c1509jHA = C1509jH.f19449c;
            } else {
                c1509jHA = C1509jH.a();
            }
            return C2224x5.G(vgY, c1509jHA);
        } catch (AH unused) {
            return null;
        } catch (NullPointerException unused2) {
            e(2029, jCurrentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            e(2032, jCurrentTimeMillis);
            return null;
        }
    }
}
