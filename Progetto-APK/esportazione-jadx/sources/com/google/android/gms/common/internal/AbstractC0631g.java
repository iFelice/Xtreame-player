package com.google.android.gms.common.internal;

import K3.C0234g;
import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0631g {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    private volatile String zzA;
    private volatile Q3.a zzB;
    private J3.b zzC;
    private boolean zzD;
    private volatile S zzE;
    X zza;
    final Handler zzb;
    protected InterfaceC0628d zzc;
    protected AtomicInteger zzd;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private volatile String zzk;
    private final Context zzl;
    private final Looper zzm;
    private final AbstractC0637m zzn;
    private final J3.f zzo;
    private final Object zzp;
    private final Object zzq;
    private InterfaceC0639o zzr;
    private IInterface zzs;
    private final ArrayList zzt;
    private O zzu;
    private int zzv;
    private final InterfaceC0626b zzw;
    private final InterfaceC0627c zzx;
    private final int zzy;
    private final String zzz;
    private static final J3.d[] zze = new J3.d[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    /* JADX WARN: Illegal instructions before constructor call */
    public AbstractC0631g(Context context, Looper looper, int i8, InterfaceC0626b interfaceC0626b, InterfaceC0627c interfaceC0627c) {
        V vA = AbstractC0637m.a(context);
        J3.f fVar = J3.f.f4145b;
        com.bumptech.glide.c.h(interfaceC0626b);
        com.bumptech.glide.c.h(interfaceC0627c);
        this(context, looper, vA, fVar, i8, interfaceC0626b, interfaceC0627c, null);
    }

    public static void zzj(AbstractC0631g abstractC0631g, S s7) {
        abstractC0631g.zzE = s7;
        if (abstractC0631g.usesClientTelemetry()) {
            C0634j c0634j = s7.f11814J;
            r rVarA = r.a();
            C0642s c0642s = c0634j == null ? null : c0634j.f11853G;
            synchronized (rVarA) {
                try {
                    if (c0642s == null) {
                        c0642s = r.f11891c;
                    } else {
                        C0642s c0642s2 = rVarA.f11892a;
                        if (c0642s2 == null || c0642s2.f11893G < c0642s.f11893G) {
                        }
                    }
                    rVarA.f11892a = c0642s;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static /* bridge */ /* synthetic */ void zzk(AbstractC0631g abstractC0631g, int i8) {
        int i9;
        int i10;
        synchronized (abstractC0631g.zzp) {
            i9 = abstractC0631g.zzv;
        }
        if (i9 == 3) {
            abstractC0631g.zzD = true;
            i10 = 5;
        } else {
            i10 = 4;
        }
        Handler handler = abstractC0631g.zzb;
        handler.sendMessage(handler.obtainMessage(i10, abstractC0631g.zzd.get(), 16));
    }

    public static /* bridge */ /* synthetic */ boolean zzn(AbstractC0631g abstractC0631g, int i8, int i9, IInterface iInterface) {
        synchronized (abstractC0631g.zzp) {
            try {
                if (abstractC0631g.zzv != i8) {
                    return false;
                }
                abstractC0631g.c(i9, iInterface);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzo(AbstractC0631g abstractC0631g) {
        if (abstractC0631g.zzD || TextUtils.isEmpty(abstractC0631g.getServiceDescriptor()) || TextUtils.isEmpty(abstractC0631g.getLocalStartServiceAction())) {
            return false;
        }
        try {
            Class.forName(abstractC0631g.getServiceDescriptor());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final void c(int i8, IInterface iInterface) {
        X x7;
        com.bumptech.glide.c.b((i8 == 4) == (iInterface != null));
        synchronized (this.zzp) {
            try {
                this.zzv = i8;
                this.zzs = iInterface;
                Bundle bundle = null;
                if (i8 == 1) {
                    O o4 = this.zzu;
                    if (o4 != null) {
                        AbstractC0637m abstractC0637m = this.zzn;
                        String str = this.zza.f11834a;
                        com.bumptech.glide.c.h(str);
                        String str2 = this.zza.f11835b;
                        zze();
                        abstractC0637m.d(str, str2, o4, this.zza.f11836c);
                        this.zzu = null;
                    }
                } else if (i8 == 2 || i8 == 3) {
                    O o7 = this.zzu;
                    if (o7 != null && (x7 = this.zza) != null) {
                        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + x7.f11834a + " on " + x7.f11835b);
                        AbstractC0637m abstractC0637m2 = this.zzn;
                        String str3 = this.zza.f11834a;
                        com.bumptech.glide.c.h(str3);
                        String str4 = this.zza.f11835b;
                        zze();
                        abstractC0637m2.d(str3, str4, o7, this.zza.f11836c);
                        this.zzd.incrementAndGet();
                    }
                    O o8 = new O(this, this.zzd.get());
                    this.zzu = o8;
                    X x8 = (this.zzv != 3 || getLocalStartServiceAction() == null) ? new X(getStartServicePackage(), getStartServiceAction(), getUseDynamicLookup()) : new X(getContext().getPackageName(), getLocalStartServiceAction(), false);
                    this.zza = x8;
                    if (x8.f11836c && getMinApkVersion() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.zza.f11834a)));
                    }
                    AbstractC0637m abstractC0637m3 = this.zzn;
                    String str5 = this.zza.f11834a;
                    com.bumptech.glide.c.h(str5);
                    J3.b bVarC = abstractC0637m3.c(new T(str5, this.zza.f11835b, this.zza.f11836c), o8, zze(), getBindServiceExecutor());
                    if (bVarC.f4133H != 0) {
                        X x9 = this.zza;
                        Log.w("GmsClient", "unable to connect to service: " + x9.f11834a + " on " + x9.f11835b);
                        int i9 = bVarC.f4133H;
                        if (i9 == -1) {
                            i9 = 16;
                        }
                        if (bVarC.f4134I != null) {
                            bundle = new Bundle();
                            bundle.putParcelable(KEY_PENDING_INTENT, bVarC.f4134I);
                        }
                        zzl(i9, bundle, this.zzd.get());
                    }
                } else if (i8 == 4) {
                    com.bumptech.glide.c.h(iInterface);
                    onConnectedLocked(iInterface);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void checkAvailabilityAndConnect() {
        int iC = this.zzo.c(this.zzl, getMinApkVersion());
        if (iC == 0) {
            connect(new C0629e(this));
        } else {
            c(1, null);
            triggerNotAvailable(new C0629e(this), iC, null);
        }
    }

    public final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public void connect(InterfaceC0628d interfaceC0628d) {
        com.bumptech.glide.c.i(interfaceC0628d, "Connection progress callbacks cannot be null.");
        this.zzc = interfaceC0628d;
        c(2, null);
    }

    public abstract IInterface createServiceInterface(IBinder iBinder);

    public void disconnect() {
        this.zzd.incrementAndGet();
        synchronized (this.zzt) {
            try {
                int size = this.zzt.size();
                for (int i8 = 0; i8 < size; i8++) {
                    ((E) this.zzt.get(i8)).d();
                }
                this.zzt.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.zzq) {
            this.zzr = null;
        }
        c(1, null);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i8;
        IInterface iInterface;
        InterfaceC0639o interfaceC0639o;
        synchronized (this.zzp) {
            i8 = this.zzv;
            iInterface = this.zzs;
        }
        synchronized (this.zzq) {
            interfaceC0639o = this.zzr;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i8 == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i8 == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i8 == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i8 == 4) {
            printWriter.print("CONNECTED");
        } else if (i8 != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (interfaceC0639o == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(((G) interfaceC0639o).f11797G)));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzh > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j8 = this.zzh;
            printWriterAppend.println(j8 + " " + simpleDateFormat.format(new Date(j8)));
        }
        if (this.zzg > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i9 = this.zzf;
            if (i9 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i9 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i9 != 3) {
                printWriter.append((CharSequence) String.valueOf(i9));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter printWriterAppend2 = printWriter.append(" lastSuspendedTime=");
            long j9 = this.zzg;
            printWriterAppend2.println(j9 + " " + simpleDateFormat.format(new Date(j9)));
        }
        if (this.zzj > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) a7.b.f(this.zzi));
            PrintWriter printWriterAppend3 = printWriter.append(" lastFailedTime=");
            long j10 = this.zzj;
            printWriterAppend3.println(j10 + " " + simpleDateFormat.format(new Date(j10)));
        }
    }

    public boolean enableLocalFallback() {
        return false;
    }

    public Account getAccount() {
        return null;
    }

    public J3.d[] getApiFeatures() {
        return zze;
    }

    public Q3.a getAttributionSourceWrapper() {
        return null;
    }

    public final J3.d[] getAvailableFeatures() {
        S s7 = this.zzE;
        if (s7 == null) {
            return null;
        }
        return s7.f11812H;
    }

    public Executor getBindServiceExecutor() {
        return null;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.zzl;
    }

    public String getEndpointPackageName() {
        X x7;
        if (!isConnected() || (x7 = this.zza) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return x7.f11835b;
    }

    public int getGCoreServiceId() {
        return this.zzy;
    }

    public Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    public String getLastDisconnectMessage() {
        return this.zzk;
    }

    public String getLocalStartServiceAction() {
        return null;
    }

    public final Looper getLooper() {
        return this.zzm;
    }

    public int getMinApkVersion() {
        return J3.f.f4144a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void getRemoteService(InterfaceC0638n interfaceC0638n, Set<Scope> set) {
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        String str = Build.VERSION.SDK_INT < 31 ? this.zzA : this.zzA;
        int i8 = this.zzy;
        int i9 = J3.f.f4144a;
        Scope[] scopeArr = C0635k.f11859U;
        Bundle bundle = new Bundle();
        J3.d[] dVarArr = C0635k.f11860V;
        C0635k c0635k = new C0635k(6, i8, i9, null, null, scopeArr, bundle, null, dVarArr, dVarArr, true, 0, false, str);
        c0635k.f11864J = this.zzl.getPackageName();
        c0635k.f11867M = getServiceRequestExtraArgs;
        if (set != null) {
            c0635k.f11866L = (Scope[]) set.toArray(new Scope[0]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            if (account == null) {
                account = new Account(DEFAULT_ACCOUNT, "com.google");
            }
            c0635k.f11868N = account;
            if (interfaceC0638n != 0) {
                c0635k.f11865K = ((AbstractC2276y5) interfaceC0638n).f21992H;
            }
        } else if (requiresAccount()) {
            c0635k.f11868N = getAccount();
        }
        c0635k.f11869O = zze;
        c0635k.f11870P = getApiFeatures();
        if (usesClientTelemetry()) {
            c0635k.f11873S = true;
        }
        try {
            synchronized (this.zzq) {
                try {
                    InterfaceC0639o interfaceC0639o = this.zzr;
                    if (interfaceC0639o != null) {
                        ((G) interfaceC0639o).Y(new N(this, this.zzd.get()), c0635k);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (DeadObjectException e8) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e8);
            triggerConnectionSuspended(3);
        } catch (RemoteException e9) {
            e = e9;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzd.get());
        } catch (SecurityException e10) {
            throw e10;
        } catch (RuntimeException e11) {
            e = e11;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzd.get());
        }
    }

    public Set<Scope> getScopes() {
        return Collections.emptySet();
    }

    public final IInterface getService() {
        IInterface iInterface;
        synchronized (this.zzp) {
            try {
                if (this.zzv == 5) {
                    throw new DeadObjectException();
                }
                checkConnected();
                iInterface = this.zzs;
                com.bumptech.glide.c.i(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            try {
                InterfaceC0639o interfaceC0639o = this.zzr;
                if (interfaceC0639o == null) {
                    return null;
                }
                return ((G) interfaceC0639o).asBinder();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract String getServiceDescriptor();

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public abstract String getStartServiceAction();

    public String getStartServicePackage() {
        return "com.google.android.gms";
    }

    public C0634j getTelemetryConfiguration() {
        S s7 = this.zzE;
        if (s7 == null) {
            return null;
        }
        return s7.f11814J;
    }

    public boolean getUseDynamicLookup() {
        return getMinApkVersion() >= 211700000;
    }

    public boolean hasConnectionInfo() {
        return this.zzE != null;
    }

    public boolean isConnected() {
        boolean z7;
        synchronized (this.zzp) {
            z7 = this.zzv == 4;
        }
        return z7;
    }

    public boolean isConnecting() {
        boolean z7;
        synchronized (this.zzp) {
            int i8 = this.zzv;
            z7 = true;
            if (i8 != 2 && i8 != 3) {
                z7 = false;
            }
        }
        return z7;
    }

    public void onConnectedLocked(IInterface iInterface) {
        this.zzh = System.currentTimeMillis();
    }

    public void onConnectionFailed(J3.b bVar) {
        this.zzi = bVar.f4133H;
        this.zzj = System.currentTimeMillis();
    }

    public void onConnectionSuspended(int i8) {
        this.zzf = i8;
        this.zzg = System.currentTimeMillis();
    }

    public void onPostInitHandler(int i8, IBinder iBinder, Bundle bundle, int i9) {
        this.zzb.sendMessage(this.zzb.obtainMessage(1, i9, -1, new P(this, i8, iBinder, bundle)));
    }

    public void onUserSignOut(InterfaceC0630f interfaceC0630f) {
        C0234g c0234g = (C0234g) interfaceC0630f;
        ((K3.z) c0234g.f4552G).f4592S.f4550S.post(new K3.M(c0234g, 2));
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void setAttributionTag(String str) {
        this.zzA = str;
    }

    public void triggerConnectionSuspended(int i8) {
        this.zzb.sendMessage(this.zzb.obtainMessage(6, this.zzd.get(), i8));
    }

    public void triggerNotAvailable(InterfaceC0628d interfaceC0628d, int i8, PendingIntent pendingIntent) {
        com.bumptech.glide.c.i(interfaceC0628d, "Connection progress callbacks cannot be null.");
        this.zzc = interfaceC0628d;
        this.zzb.sendMessage(this.zzb.obtainMessage(3, this.zzd.get(), i8, pendingIntent));
    }

    public boolean usesClientTelemetry() {
        return false;
    }

    public final String zze() {
        String str = this.zzz;
        return str == null ? this.zzl.getClass().getName() : str;
    }

    public final void zzl(int i8, Bundle bundle, int i9) {
        this.zzb.sendMessage(this.zzb.obtainMessage(7, i9, -1, new Q(this, i8, bundle)));
    }

    public AbstractC0631g(Context context, Looper looper, V v5, J3.f fVar, int i8, InterfaceC0626b interfaceC0626b, InterfaceC0627c interfaceC0627c, String str) {
        this.zzk = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList();
        this.zzv = 1;
        this.zzC = null;
        this.zzD = false;
        this.zzE = null;
        this.zzd = new AtomicInteger(0);
        com.bumptech.glide.c.i(context, "Context must not be null");
        this.zzl = context;
        com.bumptech.glide.c.i(looper, "Looper must not be null");
        this.zzm = looper;
        com.bumptech.glide.c.i(v5, "Supervisor must not be null");
        this.zzn = v5;
        com.bumptech.glide.c.i(fVar, "API availability must not be null");
        this.zzo = fVar;
        this.zzb = new M(this, looper);
        this.zzy = i8;
        this.zzw = interfaceC0626b;
        this.zzx = interfaceC0627c;
        this.zzz = str;
    }

    public void disconnect(String str) {
        this.zzk = str;
        disconnect();
    }

    public void setAttributionSourceWrapper(Q3.a aVar) {
    }
}
