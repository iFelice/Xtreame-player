package J3;

import A0.O;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.internal.H;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.AbstractC2118v3;
import com.google.android.gms.internal.ads.C1053aa;
import com.google.android.gms.internal.ads.C1105ba;
import com.google.android.gms.internal.ads.C1259ea;
import com.google.android.gms.internal.ads.C1602l6;
import com.google.android.gms.internal.ads.C1706n6;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.C2040te;
import com.google.android.gms.internal.ads.C2066u3;
import com.google.android.gms.internal.ads.C2274y3;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.InterfaceC1910r3;
import com.google.android.gms.internal.ads.No;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.RunnableC0878Pf;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import p039f.AbstractC2987b;
import p090l3.C3099q;
import p113o3.I;

/* JADX INFO: loaded from: classes.dex */
public final class k implements P2.h, InterfaceC1910r3 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static k f4151I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object f4152G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile Object f4153H;

    public k(int i8) {
        if (i8 != 5) {
            this.f4152G = new CopyOnWriteArraySet();
        } else {
            this.f4152G = new ArrayList();
            this.f4153H = Y5.g.f8159J;
        }
    }

    public static k b(Context context) {
        com.bumptech.glide.c.h(context);
        synchronized (k.class) {
            try {
                if (f4151I == null) {
                    t.a(context);
                    k kVar = new k();
                    kVar.f4152G = context.getApplicationContext();
                    f4151I = kVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f4151I;
    }

    public static final p f(PackageInfo packageInfo, p... pVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            q qVar = new q(packageInfo.signatures[0].toByteArray());
            for (int i8 = 0; i8 < pVarArr.length; i8++) {
                if (pVarArr[i8].equals(qVar)) {
                    return pVarArr[i8];
                }
            }
        }
        return null;
    }

    public static final boolean g(PackageInfo packageInfo, boolean z7) {
        PackageInfo packageInfo2;
        if (!z7) {
            packageInfo2 = packageInfo;
        } else if (packageInfo != null) {
            if ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z7 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
            }
            packageInfo2 = packageInfo;
        } else {
            packageInfo2 = null;
        }
        if (packageInfo != null && packageInfo2.signatures != null) {
            if ((z7 ? f(packageInfo2, s.f4167a) : f(packageInfo2, s.f4167a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    public final A2.a a() {
        if (((A2.a) this.f4153H) == null) {
            synchronized (this) {
                try {
                    if (((A2.a) this.f4153H) == null) {
                        this.f4153H = ((A2.d) this.f4152G).a();
                    }
                    if (((A2.a) this.f4153H) == null) {
                        this.f4153H = new U1.f(19, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (A2.a) this.f4153H;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0119 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x011b  */
    /* JADX WARN: Code duplicated, block: B:31:0x011f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0127 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0129  */
    /* JADX WARN: Code duplicated, block: B:37:0x0133 A[LOOP:1: B:35:0x012e->B:37:0x0133, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:40:0x0150  */
    /* JADX WARN: Code duplicated, block: B:56:0x013f A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1910r3
    public final C2066u3 c(AbstractC2118v3 abstractC2118v3) throws C2274y3 {
        C1105ba c1105ba;
        C1105ba c1105ba2;
        HashMap map;
        String[] strArr;
        Map mapC = abstractC2118v3.c();
        int size = mapC.size();
        String[] strArr2 = new String[size];
        String[] strArr3 = new String[size];
        int i8 = 0;
        int i9 = 0;
        for (Map.Entry entry : mapC.entrySet()) {
            strArr2[i9] = (String) entry.getKey();
            strArr3[i9] = (String) entry.getValue();
            i9++;
        }
        C1053aa c1053aa = new C1053aa(abstractC2118v3.f21431I, strArr2, strArr3);
        p083k3.l lVar = p083k3.l.f25980A;
        lVar.f25990j.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            C2040te c2040te = new C2040te();
            this.f4153H = new C1706n6((Context) this.f4152G, lVar.f25998r.j(), new C1259ea(this, c2040te), new C1602l6(c2040te), 1);
            ((C1706n6) this.f4153H).checkAvailabilityAndConnect();
            No no = new No(c1053aa);
            C1936re c1936re = AbstractC1988se.f20906a;
            D4.b bVarE2 = Cw.e2(Cw.d2(c2040te, no, c1936re), ((Integer) C3099q.f26624d.f26627c.a(Q7.f15826f4)).intValue(), TimeUnit.MILLISECONDS, AbstractC1988se.f20909d);
            bVarE2.a(new RunnableC0878Pf(this, 11), c1936re);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bVarE2.get();
            lVar.f25990j.getClass();
            I.k("Http assets remote cache took " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
            Parcelable.Creator<C1105ba> creator = C1105ba.CREATOR;
            if (parcelFileDescriptor == null) {
                p120p3.h.d("File descriptor is empty, returning null.");
            } else {
                DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
                try {
                    try {
                        int i10 = dataInputStream.readInt();
                        byte[] bArr = new byte[i10];
                        dataInputStream.readFully(bArr, 0, i10);
                        AbstractC2987b.e(dataInputStream);
                        Parcel parcelObtain = Parcel.obtain();
                        try {
                            parcelObtain.unmarshall(bArr, 0, i10);
                            parcelObtain.setDataPosition(0);
                            C1105ba c1105baCreateFromParcel = creator.createFromParcel(parcelObtain);
                            parcelObtain.recycle();
                            c1105ba = c1105baCreateFromParcel;
                            c1105ba2 = c1105ba;
                            if (c1105ba2 == null) {
                                return null;
                            }
                            if (!c1105ba2.f18045G) {
                                throw new C2274y3(c1105ba2.f18046H);
                            }
                            if (c1105ba2.f18049K.length != c1105ba2.f18050L.length) {
                                return null;
                            }
                            map = new HashMap();
                            while (true) {
                                strArr = c1105ba2.f18049K;
                                if (i8 < strArr.length) {
                                    return new C2066u3(c1105ba2.f18047I, c1105ba2.f18048J, map, C2066u3.a(map), c1105ba2.f18051M);
                                }
                                map.put(strArr[i8], c1105ba2.f18050L[i8]);
                                i8++;
                            }
                        } catch (Throwable th) {
                            parcelObtain.recycle();
                            throw th;
                        }
                    } catch (IOException e8) {
                        p120p3.h.e("Could not read from parcel file descriptor", e8);
                        AbstractC2987b.e(dataInputStream);
                        c1105ba = null;
                    }
                } catch (Throwable th2) {
                    AbstractC2987b.e(dataInputStream);
                    throw th2;
                }
            }
            c1105ba = null;
            c1105ba2 = c1105ba;
            if (c1105ba2 == null) {
                return null;
            }
            if (!c1105ba2.f18045G) {
                throw new C2274y3(c1105ba2.f18046H);
            }
            if (c1105ba2.f18049K.length != c1105ba2.f18050L.length) {
                return null;
            }
            map = new HashMap();
            while (true) {
                strArr = c1105ba2.f18049K;
                if (i8 < strArr.length) {
                    return new C2066u3(c1105ba2.f18047I, c1105ba2.f18048J, map, C2066u3.a(map), c1105ba2.f18051M);
                }
                map.put(strArr[i8], c1105ba2.f18050L[i8]);
                i8++;
            }
        } catch (InterruptedException | ExecutionException unused) {
            p083k3.l.f25980A.f25990j.getClass();
            I.k("Http assets remote cache took " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
            return null;
        } catch (Throwable th3) {
            p083k3.l.f25980A.f25990j.getClass();
            I.k("Http assets remote cache took " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
            throw th3;
        }
    }

    public final void d(Y5.g gVar) {
        p190y4.k.s(gVar, "newState");
        if (((Y5.g) this.f4153H) == gVar || ((Y5.g) this.f4153H) == Y5.g.f8160K) {
            return;
        }
        this.f4153H = gVar;
        if (((ArrayList) this.f4152G).isEmpty()) {
            return;
        }
        ArrayList arrayList = (ArrayList) this.f4152G;
        this.f4152G = new ArrayList();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            O.I(it.next());
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:78:0x01ab  */
    public final boolean e(int i8) {
        z zVar;
        int length;
        boolean zZzi;
        ApplicationInfo applicationInfo;
        z zVar2;
        String[] packagesForUid = ((Context) this.f4152G).getPackageManager().getPackagesForUid(i8);
        Exception exc = null;
        boolean z7 = false;
        if (packagesForUid == null || (length = packagesForUid.length) == 0) {
            zVar = new z(false, "no pkgs", null);
        } else {
            zVar = null;
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    com.bumptech.glide.c.h(zVar);
                    break;
                }
                String str = packagesForUid[i9];
                if (str == null) {
                    zVar = new z(z7, "null pkg", exc);
                } else if (str.equals((String) this.f4153H)) {
                    zVar = z.f4189d;
                } else {
                    o oVar = t.f4168a;
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            t.c();
                            zZzi = ((H) t.f4170c).zzi();
                        } catch (S3.a | RemoteException e8) {
                            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e8);
                            zZzi = false;
                        }
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        if (zZzi) {
                            boolean zB = j.b((Context) this.f4152G);
                            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads2 = StrictMode.allowThreadDiskReads();
                            try {
                                com.bumptech.glide.c.h(t.f4172e);
                                try {
                                    t.c();
                                    Context context = (Context) R3.b.v0(R3.b.j0(new R3.b(t.f4172e)));
                                    try {
                                        H h8 = (H) t.f4170c;
                                        Parcel parcelJ0 = h8.j0();
                                        int i10 = Y3.a.f8133a;
                                        parcelJ0.writeInt(1);
                                        int iX = AbstractC2987b.X(20293, parcelJ0);
                                        AbstractC2987b.Q(parcelJ0, 1, str);
                                        AbstractC2987b.v0(parcelJ0, 2, 4);
                                        parcelJ0.writeInt(zB ? 1 : 0);
                                        AbstractC2987b.v0(parcelJ0, 3, 4);
                                        parcelJ0.writeInt(0);
                                        AbstractC2987b.L(parcelJ0, 4, new R3.b(context));
                                        AbstractC2987b.v0(parcelJ0, 5, 4);
                                        parcelJ0.writeInt(0);
                                        AbstractC2987b.v0(parcelJ0, 6, 4);
                                        parcelJ0.writeInt(1);
                                        AbstractC2987b.p0(iX, parcelJ0);
                                        Parcel parcelY = h8.Y(6, parcelJ0);
                                        w wVar = (w) Y3.a.a(parcelY, w.CREATOR);
                                        parcelY.recycle();
                                        if (wVar.f4180G) {
                                            com.bumptech.glide.c.w(wVar.f4183J);
                                            zVar = new z(true, null, null);
                                        } else {
                                            String str2 = wVar.f4181H;
                                            PackageManager.NameNotFoundException nameNotFoundException = AbstractC2987b.W(wVar.f4182I) == 4 ? new PackageManager.NameNotFoundException() : null;
                                            if (str2 == null) {
                                                str2 = "error checking package certificate";
                                            }
                                            com.bumptech.glide.c.w(wVar.f4183J);
                                            AbstractC2987b.W(wVar.f4182I);
                                            zVar = new z(false, str2, nameNotFoundException);
                                        }
                                    } catch (RemoteException e9) {
                                        Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e9);
                                        zVar2 = new z(false, "module call", e9);
                                        zVar = zVar2;
                                    }
                                } catch (S3.a e10) {
                                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                                    zVar2 = new z(false, "module init: ".concat(String.valueOf(e10.getMessage())), e10);
                                }
                                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads2);
                            } catch (Throwable th) {
                                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads2);
                                throw th;
                            }
                        } else {
                            try {
                                PackageInfo packageInfo = ((Context) this.f4152G).getPackageManager().getPackageInfo(str, 64);
                                boolean zB2 = j.b((Context) this.f4152G);
                                if (packageInfo == null) {
                                    zVar = new z(false, "null pkg", null);
                                } else {
                                    Signature[] signatureArr = packageInfo.signatures;
                                    if (signatureArr == null || signatureArr.length != 1) {
                                        zVar = new z(false, "single cert required", null);
                                    } else {
                                        q qVar = new q(packageInfo.signatures[0].toByteArray());
                                        String str3 = packageInfo.packageName;
                                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads3 = StrictMode.allowThreadDiskReads();
                                        try {
                                            z zVarB = t.b(str3, qVar, zB2, false);
                                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads3);
                                            if (!zVarB.f4190a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0) {
                                                zVar = zVarB;
                                            } else {
                                                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads4 = StrictMode.allowThreadDiskReads();
                                                try {
                                                    z zVarB2 = t.b(str3, qVar, false, true);
                                                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads4);
                                                    if (zVarB2.f4190a) {
                                                        zVar = new z(false, "debuggable release cert app rejected", null);
                                                    } else {
                                                        zVar = zVarB;
                                                    }
                                                } catch (Throwable th2) {
                                                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads4);
                                                    throw th2;
                                                }
                                            }
                                        } catch (Throwable th3) {
                                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads3);
                                            throw th3;
                                        }
                                    }
                                }
                            } catch (PackageManager.NameNotFoundException e11) {
                                zVar = new z(false, "no pkg ".concat(str), e11);
                            }
                        }
                        if (zVar.f4190a) {
                            this.f4153H = str;
                        }
                    } catch (Throwable th4) {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        throw th4;
                    }
                }
                if (zVar.f4190a) {
                    break;
                }
                i9++;
                exc = null;
                z7 = false;
            }
        }
        if (!zVar.f4190a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            Throwable th5 = zVar.f4192c;
            if (th5 != null) {
                Log.d("GoogleCertificatesRslt", zVar.a(), th5);
            } else {
                Log.d("GoogleCertificatesRslt", zVar.a());
            }
        }
        return zVar.f4190a;
    }

    @Override // P2.h
    public final Object get() {
        if (this.f4153H == null) {
            synchronized (this) {
                try {
                    if (this.f4153H == null) {
                        Object obj = ((P2.h) this.f4152G).get();
                        p102n0.c.c(obj, "Argument must not be null");
                        this.f4153H = obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f4153H;
    }

    public /* synthetic */ k(Object obj) {
        this.f4152G = obj;
    }
}
