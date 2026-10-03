package J3;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.H;
import com.google.android.gms.common.internal.I;
import com.google.android.gms.common.internal.J;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f4168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o f4169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile J f4170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f4171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Context f4172e;

    static {
        new o(p.j0("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"), 0);
        new o(p.j0("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"), 1);
        f4168a = new o(p.j0("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"), 2);
        f4169b = new o(p.j0("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"), 3);
        f4171d = new Object();
    }

    public static synchronized void a(Context context) {
        if (f4172e != null) {
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        } else if (context != null) {
            f4172e = context.getApplicationContext();
        }
    }

    /* JADX WARN: Type inference failed for: r13v3, types: [J3.n] */
    public static z b(final String str, final p pVar, final boolean z7, boolean z8) {
        p pVar2;
        try {
            c();
            com.bumptech.glide.c.h(f4172e);
            try {
                J j8 = f4170c;
                R3.b bVar = new R3.b(f4172e.getPackageManager());
                H h8 = (H) j8;
                Parcel parcelJ0 = h8.j0();
                int i8 = Y3.a.f8133a;
                boolean z9 = true;
                parcelJ0.writeInt(1);
                int iX = AbstractC2987b.X(20293, parcelJ0);
                AbstractC2987b.Q(parcelJ0, 1, str);
                if (pVar == null) {
                    Log.w("GoogleCertificatesQuery", "certificate binder is null");
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                AbstractC2987b.L(parcelJ0, 2, pVar2);
                AbstractC2987b.v0(parcelJ0, 3, 4);
                parcelJ0.writeInt(z7 ? 1 : 0);
                AbstractC2987b.v0(parcelJ0, 4, 4);
                parcelJ0.writeInt(z8 ? 1 : 0);
                AbstractC2987b.p0(iX, parcelJ0);
                Y3.a.c(parcelJ0, bVar);
                Parcel parcelY = h8.Y(5, parcelJ0);
                if (parcelY.readInt() == 0) {
                    z9 = false;
                }
                parcelY.recycle();
                return z9 ? z.f4189d : new y(new Callable() { // from class: J3.n
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        MessageDigest messageDigest;
                        boolean z10 = z7;
                        String str2 = str;
                        p pVar3 = pVar;
                        String str3 = (z10 || !t.b(str2, pVar3, true, false).f4190a) ? "not allowed" : "debug cert rejected";
                        for (int i9 = 0; i9 < 2; i9++) {
                            try {
                                messageDigest = MessageDigest.getInstance("SHA-256");
                                if (messageDigest != null) {
                                    com.bumptech.glide.c.h(messageDigest);
                                    return str3 + ": pkg=" + str2 + ", sha256=" + P3.c.b(messageDigest.digest(pVar3.v0())) + ", atk=" + z10 + ", ver=12451000.false";
                                }
                            } catch (NoSuchAlgorithmException unused) {
                            }
                        }
                        messageDigest = null;
                        com.bumptech.glide.c.h(messageDigest);
                        return str3 + ": pkg=" + str2 + ", sha256=" + P3.c.b(messageDigest.digest(pVar3.v0())) + ", atk=" + z10 + ", ver=12451000.false";
                    }
                });
            } catch (RemoteException e8) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e8);
                return new z(false, "module call", e8);
            }
        } catch (S3.a e9) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e9);
            return new z(false, "module init: ".concat(String.valueOf(e9.getMessage())), e9);
        }
    }

    public static void c() {
        J h8;
        if (f4170c != null) {
            return;
        }
        com.bumptech.glide.c.h(f4172e);
        synchronized (f4171d) {
            try {
                if (f4170c == null) {
                    IBinder iBinderB = S3.c.c(f4172e, S3.c.f6417d, "com.google.android.gms.googlecertificates").b("com.google.android.gms.common.GoogleCertificatesImpl");
                    int i8 = I.f11798H;
                    if (iBinderB == null) {
                        h8 = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                        h8 = iInterfaceQueryLocalInterface instanceof J ? (J) iInterfaceQueryLocalInterface : new H(iBinderB, "com.google.android.gms.common.internal.IGoogleCertificatesApi", 3);
                    }
                    f4170c = h8;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
