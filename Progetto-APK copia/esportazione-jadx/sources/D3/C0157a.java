package D3;

import A0.O;
import B0.w0;
import K3.AbstractC0245s;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.cast.DefaultCastOptionsProvider;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.cast.AbstractC2434d;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.BinderC2430c;
import com.google.android.gms.internal.cast.BinderC2486q;
import com.google.android.gms.internal.cast.C2438e;
import com.google.android.gms.internal.cast.C2439e0;
import com.google.android.gms.internal.cast.C2466l;
import com.google.android.gms.internal.cast.C2474n;
import com.google.android.gms.internal.cast.C2497t;
import com.google.android.gms.internal.cast.C2509w;
import com.google.android.gms.internal.cast.C2517y;
import com.google.android.gms.internal.cast.D0;
import com.google.android.gms.internal.cast.EnumC2435d0;
import com.google.android.gms.internal.cast.InterfaceC2505v;
import com.google.android.gms.internal.cast.M1;
import com.google.android.gms.internal.cast.N;
import com.google.android.gms.internal.cast.N1;
import com.google.android.gms.internal.cast.R1;
import com.google.android.gms.internal.cast.RunnableC2493s;
import com.google.protobuf.U2;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: D3.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0157a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final H3.b f2336k = new H3.b("CastContext", null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Object f2337l = new Object();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile C0157a f2338m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0163g f2340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final k f2341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0158b f2342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final H3.t f2343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BinderC2430c f2344f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C2474n f2345g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f2346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C2497t f2347i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C2438e f2348j;

    public C0157a(Context context, C0158b c0158b, List list, BinderC2486q binderC2486q, H3.t tVar) throws C0160d {
        s sVar;
        z zVar;
        InterfaceC2505v c2439e0;
        final int i8 = 0;
        final int i9 = 1;
        this.f2339a = context;
        this.f2342d = c0158b;
        this.f2343e = tVar;
        this.f2346h = list;
        this.f2345g = new C2474n(context);
        this.f2347i = binderC2486q.f22784K;
        if (TextUtils.isEmpty(c0158b.f2352G)) {
            this.f2348j = null;
        } else {
            this.f2348j = new C2438e(context, c0158b, binderC2486q);
        }
        HashMap map = new HashMap();
        C2438e c2438e = this.f2348j;
        if (c2438e != null) {
            map.put(c2438e.f22725b, c2438e.f22726c);
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                C2438e c2438e2 = (C2438e) it.next();
                com.bumptech.glide.c.i(c2438e2, "Additional SessionProvider must not be null.");
                String str = c2438e2.f22725b;
                com.bumptech.glide.c.f("Category for SessionProvider must not be null or empty string.", str);
                com.bumptech.glide.c.a("SessionProvider for category " + str + " already added", !map.containsKey(str));
                map.put(str, c2438e2.f22726c);
            }
        }
        c0158b.f2367V = new F(1);
        try {
            o oVarA = AbstractC2434d.a(context, c0158b, binderC2486q, map);
            try {
                m mVar = (m) oVarA;
                Parcel parcelV0 = mVar.v0(6, mVar.j0());
                IBinder strongBinder = parcelV0.readStrongBinder();
                if (strongBinder == null) {
                    sVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
                    sVar = iInterfaceQueryLocalInterface instanceof s ? (s) iInterfaceQueryLocalInterface : new s(strongBinder, "com.google.android.gms.cast.framework.IDiscoveryManager", 2);
                }
                parcelV0.recycle();
                this.f2341c = new k(sVar);
                try {
                    m mVar2 = (m) oVarA;
                    Parcel parcelV1 = mVar2.v0(5, mVar2.j0());
                    IBinder strongBinder2 = parcelV1.readStrongBinder();
                    if (strongBinder2 == null) {
                        zVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.cast.framework.ISessionManager");
                        zVar = iInterfaceQueryLocalInterface2 instanceof z ? (z) iInterfaceQueryLocalInterface2 : new z(strongBinder2, "com.google.android.gms.cast.framework.ISessionManager", 2);
                    }
                    parcelV1.recycle();
                    C0163g c0163g = new C0163g(zVar, context);
                    this.f2340b = c0163g;
                    com.bumptech.glide.c.f("The log tag cannot be null or empty.", "PrecacheManager");
                    if (!TextUtils.isEmpty(null)) {
                        StringBuilder sb = new StringBuilder("[");
                        sb.append((String) null);
                        sb.append("] ");
                    }
                    C2497t c2497t = this.f2347i;
                    if (c2497t != null) {
                        c2497t.f22797f = c0163g;
                        X3.d dVar = c2497t.f22794c;
                        com.bumptech.glide.c.h(dVar);
                        dVar.post(new RunnableC2493s(c2497t, 1));
                    }
                    if (Build.VERSION.SDK_INT >= 23) {
                        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(3);
                        c2439e0 = new C2509w(context, executorServiceNewFixedThreadPool instanceof M1 ? (M1) executorServiceNewFixedThreadPool : executorServiceNewFixedThreadPool instanceof ScheduledExecutorService ? new R1((ScheduledExecutorService) executorServiceNewFixedThreadPool) : new N1(executorServiceNewFixedThreadPool));
                    } else {
                        c2439e0 = new C2439e0();
                    }
                    com.bumptech.glide.c.f("The log tag cannot be null or empty.", "BaseNetUtils");
                    if (!TextUtils.isEmpty(null)) {
                        StringBuilder sb2 = new StringBuilder("[");
                        sb2.append((String) null);
                        sb2.append("] ");
                    }
                    c2439e0.zza();
                    BinderC2430c binderC2430c = new BinderC2430c();
                    this.f2344f = binderC2430c;
                    try {
                        m mVar3 = (m) oVarA;
                        Parcel parcelJ0 = mVar3.j0();
                        AbstractC2501u.d(parcelJ0, binderC2430c);
                        mVar3.r1(3, parcelJ0);
                        binderC2430c.f22657H.add(this.f2345g.f22757a);
                        if (!Collections.unmodifiableList(c0158b.f2363R).isEmpty()) {
                            H3.b bVar = f2336k;
                            Log.i(bVar.f3679a, bVar.c("Setting Route Discovery for appIds: ".concat(String.valueOf(Collections.unmodifiableList(this.f2342d.f2363R))), new Object[0]));
                            C2474n c2474n = this.f2345g;
                            List listUnmodifiableList = Collections.unmodifiableList(this.f2342d.f2363R);
                            c2474n.getClass();
                            C2474n.f22756f.b(O.y("SetRouteDiscovery for ", listUnmodifiableList.size(), " IDs"), new Object[0]);
                            LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
                            Iterator it2 = listUnmodifiableList.iterator();
                            while (it2.hasNext()) {
                                linkedHashSet.add(Cw.n0((String) it2.next()));
                            }
                            C2474n.f22756f.b("resetting routes. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(c2474n.f22759c.keySet())), new Object[0]);
                            HashMap map2 = new HashMap();
                            synchronized (c2474n.f22759c) {
                                try {
                                    for (String str2 : linkedHashSet) {
                                        C2466l c2466l = (C2466l) c2474n.f22759c.get(Cw.n0(str2));
                                        if (c2466l != null) {
                                            map2.put(str2, c2466l);
                                        }
                                    }
                                    c2474n.f22759c.clear();
                                    c2474n.f22759c.putAll(map2);
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            C2474n.f22756f.b("Routes reset. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(c2474n.f22759c.keySet())), new Object[0]);
                            synchronized (c2474n.f22760d) {
                                c2474n.f22760d.clear();
                                c2474n.f22760d.addAll(linkedHashSet);
                            }
                            c2474n.f();
                        }
                        p052g4.h hVarC = tVar.c(new String[]{"com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE", "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE", "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"});
                        p052g4.f fVar = new p052g4.f(this) { // from class: D3.D

                            /* JADX INFO: renamed from: H, reason: collision with root package name */
                            public final /* synthetic */ C0157a f2329H;

                            {
                                this.f2329H = this;
                            }

                            @Override // p052g4.f
                            public final void onSuccess(Object obj) {
                                D0 d6;
                                EnumC2435d0 enumC2435d0B;
                                switch (i8) {
                                    case 0:
                                        C0157a c0157a = this.f2329H;
                                        Bundle bundle = (Bundle) obj;
                                        if (N.f22495j) {
                                            Context context2 = c0157a.f2339a;
                                            H3.t tVar2 = c0157a.f2343e;
                                            N n7 = new N(context2, tVar2, c0157a.f2340b, c0157a.f2347i, c0157a.f2344f);
                                            int i10 = bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE") ? bundle.getInt("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", 0) : (bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED") && bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", false)) ? 1 : 0;
                                            boolean z7 = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", false);
                                            if (i10 == 0) {
                                                if (!z7) {
                                                    return;
                                                }
                                                i10 = 0;
                                                z7 = true;
                                            }
                                            String packageName = context2.getPackageName();
                                            Locale locale = Locale.ROOT;
                                            String strA = U2.A(packageName, ".client_cast_analytics_data");
                                            n7.f22503h = bundle.getLong("com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE") == 0 ? 1 : 2;
                                            U2.q.b(context2);
                                            n7.f22502g = U2.q.a().c(S2.a.f6398e).a("CAST_SENDER_SDK", new R2.b("proto"), C2517y.f22822G);
                                            if (bundle.containsKey("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE")) {
                                                n7.f22500e = Long.valueOf(bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"));
                                            }
                                            SharedPreferences sharedPreferences = context2.getApplicationContext().getSharedPreferences(strA, 0);
                                            if (i10 != 0) {
                                                K3.r rVarA = AbstractC0245s.a();
                                                rVarA.f4570c = new p096m2.l(15, tVar2, new String[]{"com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"});
                                                rVarA.f4571d = new J3.d[]{C3.y.f1623c};
                                                rVarA.f4569b = false;
                                                rVarA.f4568a = 8426;
                                                p052g4.h hVarDoRead = tVar2.doRead(rVarA.a());
                                                w0 w0Var = new w0(n7, packageName, i10, sharedPreferences);
                                                p052g4.r rVar = (p052g4.r) hVarDoRead;
                                                rVar.getClass();
                                                rVar.c(p052g4.j.f25346a, w0Var);
                                            }
                                            if (z7) {
                                                com.bumptech.glide.c.h(sharedPreferences);
                                                H3.b bVar2 = D0.f22422i;
                                                synchronized (D0.class) {
                                                    try {
                                                        if (D0.f22424k == null) {
                                                            D0.f22424k = new D0(sharedPreferences, n7, packageName);
                                                        }
                                                        d6 = D0.f22424k;
                                                    } catch (Throwable th2) {
                                                        throw th2;
                                                    }
                                                }
                                                HashSet hashSet = d6.f22430f;
                                                SharedPreferences sharedPreferences2 = d6.f22426b;
                                                String string = sharedPreferences2.getString("feature_usage_sdk_version", null);
                                                String string2 = sharedPreferences2.getString("feature_usage_package_name", null);
                                                hashSet.clear();
                                                HashSet hashSet2 = d6.f22431g;
                                                hashSet2.clear();
                                                d6.f22432h = 0L;
                                                String str3 = D0.f22423j;
                                                boolean zEquals = str3.equals(string);
                                                String str4 = d6.f22427c;
                                                if (zEquals && str4.equals(string2)) {
                                                    d6.f22432h = sharedPreferences2.getLong("feature_usage_last_report_time", 0L);
                                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                                    HashSet hashSet3 = new HashSet();
                                                    for (String str5 : sharedPreferences2.getAll().keySet()) {
                                                        if (str5.startsWith("feature_usage_timestamp_")) {
                                                            long j8 = sharedPreferences2.getLong(str5, 0L);
                                                            if (j8 != 0 && jCurrentTimeMillis - j8 > 1209600000) {
                                                                hashSet3.add(str5);
                                                            } else if (str5.startsWith("feature_usage_timestamp_reported_feature_")) {
                                                                EnumC2435d0 enumC2435d0B2 = D0.b(str5.substring(41));
                                                                if (enumC2435d0B2 != null) {
                                                                    hashSet2.add(enumC2435d0B2);
                                                                    hashSet.add(enumC2435d0B2);
                                                                }
                                                            } else if (str5.startsWith("feature_usage_timestamp_detected_feature_") && (enumC2435d0B = D0.b(str5.substring(41))) != null) {
                                                                hashSet.add(enumC2435d0B);
                                                            }
                                                        }
                                                    }
                                                    d6.c(hashSet3);
                                                    com.bumptech.glide.c.h(d6.f22429e);
                                                    com.bumptech.glide.c.h(d6.f22428d);
                                                    d6.f22429e.post(d6.f22428d);
                                                } else {
                                                    HashSet hashSet4 = new HashSet();
                                                    for (String str6 : sharedPreferences2.getAll().keySet()) {
                                                        if (str6.startsWith("feature_usage_timestamp_")) {
                                                            hashSet4.add(str6);
                                                        }
                                                    }
                                                    hashSet4.add("feature_usage_last_report_time");
                                                    d6.c(hashSet4);
                                                    sharedPreferences2.edit().putString("feature_usage_sdk_version", str3).putString("feature_usage_package_name", str4).apply();
                                                }
                                                D0.a(EnumC2435d0.CAST_CONTEXT);
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    default:
                                        this.f2329H.getClass();
                                        Cw.T("com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES", (Bundle) obj);
                                        return;
                                }
                            }
                        };
                        p052g4.r rVar = (p052g4.r) hVarC;
                        rVar.getClass();
                        p052g4.q qVar = p052g4.j.f25346a;
                        rVar.c(qVar, fVar);
                        K3.r rVarA = AbstractC0245s.a();
                        rVarA.f4570c = new F.i(13, tVar, new String[]{"com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"});
                        rVarA.f4571d = new J3.d[]{C3.y.f1624d};
                        rVarA.f4569b = false;
                        rVarA.f4568a = 8427;
                        p052g4.h hVarDoRead = tVar.doRead(rVarA.a());
                        p052g4.f fVar2 = new p052g4.f(this) { // from class: D3.D

                            /* JADX INFO: renamed from: H, reason: collision with root package name */
                            public final /* synthetic */ C0157a f2329H;

                            {
                                this.f2329H = this;
                            }

                            @Override // p052g4.f
                            public final void onSuccess(Object obj) {
                                D0 d6;
                                EnumC2435d0 enumC2435d0B;
                                switch (i9) {
                                    case 0:
                                        C0157a c0157a = this.f2329H;
                                        Bundle bundle = (Bundle) obj;
                                        if (N.f22495j) {
                                            Context context2 = c0157a.f2339a;
                                            H3.t tVar2 = c0157a.f2343e;
                                            N n7 = new N(context2, tVar2, c0157a.f2340b, c0157a.f2347i, c0157a.f2344f);
                                            int i10 = bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE") ? bundle.getInt("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", 0) : (bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED") && bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", false)) ? 1 : 0;
                                            boolean z7 = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", false);
                                            if (i10 == 0) {
                                                if (!z7) {
                                                    return;
                                                }
                                                i10 = 0;
                                                z7 = true;
                                            }
                                            String packageName = context2.getPackageName();
                                            Locale locale = Locale.ROOT;
                                            String strA = U2.A(packageName, ".client_cast_analytics_data");
                                            n7.f22503h = bundle.getLong("com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE") == 0 ? 1 : 2;
                                            U2.q.b(context2);
                                            n7.f22502g = U2.q.a().c(S2.a.f6398e).a("CAST_SENDER_SDK", new R2.b("proto"), C2517y.f22822G);
                                            if (bundle.containsKey("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE")) {
                                                n7.f22500e = Long.valueOf(bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"));
                                            }
                                            SharedPreferences sharedPreferences = context2.getApplicationContext().getSharedPreferences(strA, 0);
                                            if (i10 != 0) {
                                                K3.r rVarA2 = AbstractC0245s.a();
                                                rVarA2.f4570c = new p096m2.l(15, tVar2, new String[]{"com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"});
                                                rVarA2.f4571d = new J3.d[]{C3.y.f1623c};
                                                rVarA2.f4569b = false;
                                                rVarA2.f4568a = 8426;
                                                p052g4.h hVarDoRead2 = tVar2.doRead(rVarA2.a());
                                                w0 w0Var = new w0(n7, packageName, i10, sharedPreferences);
                                                p052g4.r rVar2 = (p052g4.r) hVarDoRead2;
                                                rVar2.getClass();
                                                rVar2.c(p052g4.j.f25346a, w0Var);
                                            }
                                            if (z7) {
                                                com.bumptech.glide.c.h(sharedPreferences);
                                                H3.b bVar2 = D0.f22422i;
                                                synchronized (D0.class) {
                                                    try {
                                                        if (D0.f22424k == null) {
                                                            D0.f22424k = new D0(sharedPreferences, n7, packageName);
                                                        }
                                                        d6 = D0.f22424k;
                                                    } catch (Throwable th2) {
                                                        throw th2;
                                                    }
                                                }
                                                HashSet hashSet = d6.f22430f;
                                                SharedPreferences sharedPreferences2 = d6.f22426b;
                                                String string = sharedPreferences2.getString("feature_usage_sdk_version", null);
                                                String string2 = sharedPreferences2.getString("feature_usage_package_name", null);
                                                hashSet.clear();
                                                HashSet hashSet2 = d6.f22431g;
                                                hashSet2.clear();
                                                d6.f22432h = 0L;
                                                String str3 = D0.f22423j;
                                                boolean zEquals = str3.equals(string);
                                                String str4 = d6.f22427c;
                                                if (zEquals && str4.equals(string2)) {
                                                    d6.f22432h = sharedPreferences2.getLong("feature_usage_last_report_time", 0L);
                                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                                    HashSet hashSet3 = new HashSet();
                                                    for (String str5 : sharedPreferences2.getAll().keySet()) {
                                                        if (str5.startsWith("feature_usage_timestamp_")) {
                                                            long j8 = sharedPreferences2.getLong(str5, 0L);
                                                            if (j8 != 0 && jCurrentTimeMillis - j8 > 1209600000) {
                                                                hashSet3.add(str5);
                                                            } else if (str5.startsWith("feature_usage_timestamp_reported_feature_")) {
                                                                EnumC2435d0 enumC2435d0B2 = D0.b(str5.substring(41));
                                                                if (enumC2435d0B2 != null) {
                                                                    hashSet2.add(enumC2435d0B2);
                                                                    hashSet.add(enumC2435d0B2);
                                                                }
                                                            } else if (str5.startsWith("feature_usage_timestamp_detected_feature_") && (enumC2435d0B = D0.b(str5.substring(41))) != null) {
                                                                hashSet.add(enumC2435d0B);
                                                            }
                                                        }
                                                    }
                                                    d6.c(hashSet3);
                                                    com.bumptech.glide.c.h(d6.f22429e);
                                                    com.bumptech.glide.c.h(d6.f22428d);
                                                    d6.f22429e.post(d6.f22428d);
                                                } else {
                                                    HashSet hashSet4 = new HashSet();
                                                    for (String str6 : sharedPreferences2.getAll().keySet()) {
                                                        if (str6.startsWith("feature_usage_timestamp_")) {
                                                            hashSet4.add(str6);
                                                        }
                                                    }
                                                    hashSet4.add("feature_usage_last_report_time");
                                                    d6.c(hashSet4);
                                                    sharedPreferences2.edit().putString("feature_usage_sdk_version", str3).putString("feature_usage_package_name", str4).apply();
                                                }
                                                D0.a(EnumC2435d0.CAST_CONTEXT);
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    default:
                                        this.f2329H.getClass();
                                        Cw.T("com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES", (Bundle) obj);
                                        return;
                                }
                            }
                        };
                        p052g4.r rVar2 = (p052g4.r) hVarDoRead;
                        rVar2.getClass();
                        rVar2.c(qVar, fVar2);
                    } catch (RemoteException e8) {
                        throw new IllegalStateException("Failed to call addAppVisibilityListener", e8);
                    }
                } catch (RemoteException e9) {
                    throw new IllegalStateException("Failed to call getSessionManagerImpl", e9);
                }
            } catch (RemoteException e10) {
                throw new IllegalStateException("Failed to call getDiscoveryManagerImpl", e10);
            }
        } catch (RemoteException e11) {
            throw new IllegalStateException("Failed to call newCastContextImpl", e11);
        }
    }

    public static C0157a a(Context context) {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        if (f2338m == null) {
            synchronized (f2337l) {
                if (f2338m == null) {
                    Context applicationContext = context.getApplicationContext();
                    DefaultCastOptionsProvider defaultCastOptionsProviderB = b(applicationContext);
                    C0158b castOptions = defaultCastOptionsProviderB.getCastOptions(applicationContext);
                    H3.t tVar = new H3.t(applicationContext, H3.t.f3727a, com.google.android.gms.common.api.c.f11760a, com.google.android.gms.common.api.i.f11764c);
                    try {
                        f2338m = new C0157a(applicationContext, castOptions, defaultCastOptionsProviderB.getAdditionalSessionProviders(applicationContext), new BinderC2486q(applicationContext, E1.H.d(applicationContext), castOptions, tVar), tVar);
                    } catch (C0160d e8) {
                        throw new RuntimeException(e8);
                    }
                }
            }
        }
        return f2338m;
    }

    public static DefaultCastOptionsProvider b(Context context) {
        try {
            Bundle bundle = Q3.c.a(context).b(128, context.getPackageName()).metaData;
            if (bundle == null) {
                H3.b bVar = f2336k;
                Log.e(bVar.f3679a, bVar.c("Bundle is null", new Object[0]));
            }
            String string = bundle.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME");
            if (string != null) {
                return (DefaultCastOptionsProvider) Class.forName(string).asSubclass(DefaultCastOptionsProvider.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (PackageManager.NameNotFoundException e8) {
            e = e8;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (ClassNotFoundException e9) {
            e = e9;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (IllegalAccessException e10) {
            e = e10;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (InstantiationException e11) {
            e = e11;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (NoSuchMethodException e12) {
            e = e12;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (NullPointerException e13) {
            e = e13;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        } catch (InvocationTargetException e14) {
            e = e14;
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }
}
