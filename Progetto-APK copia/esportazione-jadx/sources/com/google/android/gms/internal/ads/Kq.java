package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class Kq implements InterfaceC1507jF, InterfaceC1119bo {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static Kq f14416K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f14417G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f14418H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f14419I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f14420J;

    public /* synthetic */ Kq(int i8, C0727Fc c0727Fc, C0727Fc c0727Fc2, C1204dL c1204dL) {
        this.f14418H = c1204dL;
        this.f14417G = i8;
        this.f14419I = c0727Fc;
        this.f14420J = c0727Fc2;
    }

    public static synchronized Kq e(Context context) {
        try {
            if (f14416K == null) {
                f14416K = new Kq(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f14416K;
    }

    public static /* synthetic */ void f(Kq kq, int i8) {
        synchronized (kq.f14420J) {
            try {
                if (kq.f14417G == i8) {
                    return;
                }
                kq.f14417G = i8;
                for (WeakReference weakReference : (CopyOnWriteArrayList) kq.f14419I) {
                    DO r7 = (DO) weakReference.get();
                    if (r7 != null) {
                        EO.b(r7.f12830a, i8);
                    } else {
                        ((CopyOnWriteArrayList) kq.f14419I).remove(weakReference);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1507jF
    public final byte[] a(int i8, byte[] bArr) throws InvalidAlgorithmParameterException {
        if (i8 > this.f14417G) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        ThreadLocal threadLocal = (ThreadLocal) this.f14418H;
        ((Mac) threadLocal.get()).update(bArr);
        return Arrays.copyOf(((Mac) threadLocal.get()).doFinal(), i8);
    }

    public final int b() {
        int i8;
        synchronized (this.f14420J) {
            i8 = this.f14417G;
        }
        return i8;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0086  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0073, code lost:
    
        if (com.google.android.gms.internal.ads.C2272y1.g(r0) != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c(com.google.android.gms.internal.ads.C2120v5 r9, com.google.android.gms.internal.ads.K4 r10) {
        /*
            Method dump skipped, instruction units count: 450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.Kq.c(com.google.android.gms.internal.ads.v5, com.google.android.gms.internal.ads.K4):boolean");
    }

    public final C2224x5 d(int i8) {
        String string;
        Object obj = this.f14420J;
        if (i8 == 1) {
            StringBuilder sb = new StringBuilder("LATMTD");
            sb.append(this.f14417G - 1);
            string = ((SharedPreferences) obj).getString(sb.toString(), null);
        } else {
            StringBuilder sb2 = new StringBuilder("FBAMTD");
            sb2.append(this.f14417G - 1);
            string = ((SharedPreferences) obj).getString(sb2.toString(), null);
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            byte[] bArrD = P3.c.d(string);
            C2224x5 c2224x5F = C2224x5.F(XG.y(0, bArrD, bArrD.length));
            String strI = c2224x5F.I();
            File fileH = Q3.b.H(strI, "pcam.jar", g());
            if (!fileH.exists()) {
                fileH = Q3.b.H(strI, "pcam", g());
            }
            File fileH2 = Q3.b.H(strI, "pcbc", g());
            if (fileH.exists() && fileH2.exists()) {
                return c2224x5F;
            }
            return null;
        } catch (AH unused) {
        }
    }

    public final File g() {
        File file = new File((File) this.f14418H, Integer.toString(this.f14417G - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
    public final void zza(Object obj) {
        ((InterfaceC1255eL) obj).m(this.f14417G);
    }

    public Kq(Context context) {
        this.f14418H = new Handler(Looper.getMainLooper());
        this.f14419I = new CopyOnWriteArrayList();
        this.f14420J = new Object();
        this.f14417G = 0;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new p039f.G(12, this), intentFilter);
    }

    public Kq(Context context, int i8) {
        this.f14420J = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        Q3.b.D(dir, false);
        this.f14418H = dir;
        File dir2 = context.getDir("tmppccache", 0);
        Q3.b.D(dir2, true);
        this.f14419I = dir2;
        this.f14417G = i8;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public Kq(String str, SecretKeySpec secretKeySpec) throws GeneralSecurityException {
        int i8;
        int i9 = 0;
        LG lg = new LG(this, i9);
        this.f14418H = lg;
        if (Cw.f0(2)) {
            this.f14419I = str;
            this.f14420J = secretKeySpec;
            if (secretKeySpec.getEncoded().length >= 16) {
                switch (str.hashCode()) {
                    case -1823053428:
                        if (!str.equals("HMACSHA1")) {
                            i9 = -1;
                        }
                        break;
                    case 392315023:
                        if (!str.equals("HMACSHA224")) {
                            i9 = -1;
                        } else {
                            i9 = 1;
                        }
                        break;
                    case 392315118:
                        if (!str.equals("HMACSHA256")) {
                            i9 = -1;
                        } else {
                            i9 = 2;
                        }
                        break;
                    case 392316170:
                        if (!str.equals("HMACSHA384")) {
                            i9 = -1;
                        } else {
                            i9 = 3;
                        }
                        break;
                    case 392317873:
                        if (!str.equals("HMACSHA512")) {
                            i9 = -1;
                        } else {
                            i9 = 4;
                        }
                        break;
                    default:
                        i9 = -1;
                        break;
                }
                if (i9 == 0) {
                    i8 = 20;
                } else if (i9 == 1) {
                    i8 = 28;
                } else if (i9 == 2) {
                    i8 = 32;
                } else if (i9 == 3) {
                    i8 = 48;
                } else {
                    if (i9 != 4) {
                        throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
                    }
                    i8 = 64;
                }
                this.f14417G = i8;
                lg.get();
                return;
            }
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
