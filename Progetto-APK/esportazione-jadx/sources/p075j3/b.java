package p075j3;

import J3.a;
import J3.f;
import J3.g;
import V3.d;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.c;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import p171w0.j;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f25697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f25698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f25699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f25700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f25701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f25702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f25703g;

    public b(Context context) {
        this(context, 30000L, false);
    }

    public static a a(Context context) {
        b bVar = new b(context, -1L, true);
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            bVar.d(false);
            a aVarF = bVar.f();
            e(aVarF, SystemClock.elapsedRealtime() - jElapsedRealtime, null);
            bVar.c();
            return aVarF;
        } catch (Throwable th) {
            try {
                e(null, -1L, th);
                throw th;
            } catch (Throwable th2) {
                bVar.c();
                throw th2;
            }
        }
    }

    public static boolean b(Context context) {
        boolean z7;
        b bVar = new b(context, -1L, false);
        try {
            bVar.d(false);
            c.g("Calling this from your main thread can lead to deadlock");
            synchronized (bVar) {
                try {
                    if (!bVar.f25699c) {
                        synchronized (bVar.f25700d) {
                            c cVar = bVar.f25701e;
                            if (cVar == null || !cVar.f25707J) {
                                throw new IOException("AdvertisingIdClient is not connected.");
                            }
                        }
                        try {
                            bVar.d(false);
                            if (!bVar.f25699c) {
                                throw new IOException("AdvertisingIdClient cannot reconnect.");
                            }
                        } catch (Exception e8) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.", e8);
                        }
                    }
                    c.h(bVar.f25697a);
                    c.h(bVar.f25698b);
                    try {
                        V3.b bVar2 = (V3.b) bVar.f25698b;
                        bVar2.getClass();
                        Parcel parcelObtain = Parcel.obtain();
                        parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                        Parcel parcelY = bVar2.Y(6, parcelObtain);
                        int i8 = V3.a.f7105a;
                        z7 = parcelY.readInt() != 0;
                        parcelY.recycle();
                    } catch (RemoteException e9) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e9);
                        throw new IOException("Remote exception");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            bVar.g();
            bVar.c();
            return z7;
        } catch (Throwable th2) {
            bVar.c();
            throw th2;
        }
    }

    public static void e(a aVar, long j8, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap map = new HashMap();
            map.put("app_context", "1");
            if (aVar != null) {
                map.put("limit_ad_tracking", true != aVar.f25696b ? "0" : "1");
                String str = aVar.f25695a;
                if (str != null) {
                    map.put("ad_id_size", Integer.toString(str.length()));
                }
            }
            if (th != null) {
                map.put("error", th.getClass().getName());
            }
            map.put("tag", "AdvertisingIdClient");
            map.put("time_spent", Long.toString(j8));
            new j(2, map).start();
        }
    }

    public final void c() {
        c.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f25702f == null || this.f25697a == null) {
                    return;
                }
                try {
                    if (this.f25699c) {
                        O3.a.a().b(this.f25702f, this.f25697a);
                    }
                } catch (Throwable th) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
                }
                this.f25699c = false;
                this.f25698b = null;
                this.f25697a = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void d(boolean z7) {
        c.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f25699c) {
                    c();
                }
                Context context = this.f25702f;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int iC = f.f4145b.c(context, 12451000);
                    if (iC != 0 && iC != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    a aVar = new a();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!O3.a.a().c(context, context.getClass().getName(), intent, aVar, 1, null)) {
                            throw new IOException("Connection failure");
                        }
                        this.f25697a = aVar;
                        try {
                            IBinder iBinderA = aVar.a(TimeUnit.MILLISECONDS);
                            int i8 = V3.c.f7107G;
                            IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                            this.f25698b = iInterfaceQueryLocalInterface instanceof d ? (d) iInterfaceQueryLocalInterface : new V3.b(iBinderA);
                            this.f25699c = true;
                            if (z7) {
                                g();
                            }
                        } catch (InterruptedException unused) {
                            throw new IOException("Interrupted exception");
                        } catch (Throwable th) {
                            throw new IOException(th);
                        }
                    } catch (Throwable th2) {
                        throw new IOException(th2);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new g();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final a f() {
        a aVar;
        c.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.f25699c) {
                    synchronized (this.f25700d) {
                        c cVar = this.f25701e;
                        if (cVar == null || !cVar.f25707J) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        d(false);
                        if (!this.f25699c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e8) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e8);
                    }
                }
                c.h(this.f25697a);
                c.h(this.f25698b);
                try {
                    V3.b bVar = (V3.b) this.f25698b;
                    bVar.getClass();
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    Parcel parcelY = bVar.Y(1, parcelObtain);
                    String string = parcelY.readString();
                    parcelY.recycle();
                    V3.b bVar2 = (V3.b) this.f25698b;
                    bVar2.getClass();
                    Parcel parcelObtain2 = Parcel.obtain();
                    parcelObtain2.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    int i8 = V3.a.f7105a;
                    parcelObtain2.writeInt(1);
                    Parcel parcelY2 = bVar2.Y(2, parcelObtain2);
                    boolean z7 = parcelY2.readInt() != 0;
                    parcelY2.recycle();
                    aVar = new a(string, z7);
                } catch (RemoteException e9) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e9);
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        g();
        return aVar;
    }

    public final void finalize() throws Throwable {
        c();
        super.finalize();
    }

    public final void g() {
        synchronized (this.f25700d) {
            c cVar = this.f25701e;
            if (cVar != null) {
                cVar.f25706I.countDown();
                try {
                    this.f25701e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j8 = this.f25703g;
            if (j8 > 0) {
                this.f25701e = new c(this, j8);
            }
        }
    }

    public b(Context context, long j8, boolean z7) {
        Context applicationContext;
        this.f25700d = new Object();
        c.h(context);
        if (z7 && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f25702f = context;
        this.f25699c = false;
        this.f25703g = j8;
    }
}
