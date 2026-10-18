package com.bumptech.glide;

import B0.C0041c;
import D0.U;
import F2.G;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.integration.okhttp3.OkHttpGlideModule;
import com.google.android.gms.internal.measurement.Q1;
import com.google.android.gms.internal.measurement.U1;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p032e0.u;
import y2.ThreadFactoryC3229a;
import y2.p;

/* JADX INFO: loaded from: classes.dex */
public final class b implements ComponentCallbacks2 {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static volatile b f11495N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static volatile boolean f11496O;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p196z2.d f11497G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final A2.f f11498H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final f f11499I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p196z2.h f11500J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final J2.n f11501K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final G f11502L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final ArrayList f11503M = new ArrayList();

    public b(Context context, p pVar, A2.f fVar, p196z2.d dVar, p196z2.h hVar, J2.n nVar, G g8, int i8, U u7, p132r.f fVar2, List list, ArrayList arrayList, Q1 q7, u uVar) {
        this.f11497G = dVar;
        this.f11500J = hVar;
        this.f11498H = fVar;
        this.f11501K = nVar;
        this.f11502L = g8;
        this.f11499I = new f(context, hVar, new C0041c(this, arrayList, q7), new G(10), u7, fVar2, list, pVar, uVar, i8);
    }

    public static b a(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f11495N == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e8) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e8);
            } catch (InstantiationException e9) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e9);
            } catch (NoSuchMethodException e10) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e10);
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e11);
            }
            synchronized (b.class) {
                if (f11495N == null) {
                    if (f11496O) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f11496O = true;
                    try {
                        b(context, generatedAppGlideModule);
                        f11496O = false;
                    } catch (Throwable th) {
                        f11496O = false;
                        throw th;
                    }
                }
            }
        }
        return f11495N;
    }

    public static void b(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        e eVar = new e();
        Context applicationContext = context.getApplicationContext();
        Collections.emptyList();
        if (Log.isLoggable("ManifestParser", 3)) {
            Log.d("ManifestParser", "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        int i8 = 6;
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(U1.e(str));
                        if (Log.isLoggable("ManifestParser", 3)) {
                            Log.d("ManifestParser", "Loaded Glide module: " + str);
                        }
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Finished loading Glide modules");
                }
            } else if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Got null app info metadata");
            }
        } catch (PackageManager.NameNotFoundException e8) {
            if (Log.isLoggable("ManifestParser", 6)) {
                Log.e("ManifestParser", "Failed to parse glide modules", e8);
            }
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            HashSet hashSet = new HashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                OkHttpGlideModule okHttpGlideModule = (OkHttpGlideModule) it.next();
                if (hashSet.contains(okHttpGlideModule.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + okHttpGlideModule);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + ((OkHttpGlideModule) it2.next()).getClass());
            }
        }
        eVar.f11521n = null;
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((OkHttpGlideModule) it3.next()).getClass();
        }
        B2.c cVar = eVar.f11514g;
        U1.f fVar = B2.b.f1205a;
        if (cVar == null) {
            ThreadFactoryC3229a threadFactoryC3229a = new ThreadFactoryC3229a();
            if (B2.c.f1207I == 0) {
                B2.c.f1207I = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i9 = B2.c.f1207I;
            if (TextUtils.isEmpty("source")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: source");
            }
            eVar.f11514g = new B2.c(new ThreadPoolExecutor(i9, i9, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new B2.a(threadFactoryC3229a, "source", fVar, false)));
        }
        if (eVar.f11515h == null) {
            int i10 = B2.c.f1207I;
            ThreadFactoryC3229a threadFactoryC3229a2 = new ThreadFactoryC3229a();
            if (TextUtils.isEmpty("disk-cache")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: disk-cache");
            }
            eVar.f11515h = new B2.c(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new B2.a(threadFactoryC3229a2, "disk-cache", fVar, true)));
        }
        if (eVar.f11522o == null) {
            if (B2.c.f1207I == 0) {
                B2.c.f1207I = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i11 = B2.c.f1207I >= 4 ? 2 : 1;
            ThreadFactoryC3229a threadFactoryC3229a3 = new ThreadFactoryC3229a();
            if (TextUtils.isEmpty("animation")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: animation");
            }
            eVar.f11522o = new B2.c(new ThreadPoolExecutor(i11, i11, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new B2.a(threadFactoryC3229a3, "animation", fVar, true)));
        }
        if (eVar.f11517j == null) {
            eVar.f11517j = new A2.i(new A2.h(applicationContext));
        }
        if (eVar.f11518k == null) {
            eVar.f11518k = new G(i8);
        }
        if (eVar.f11511d == null) {
            int i12 = eVar.f11517j.f630a;
            if (i12 > 0) {
                eVar.f11511d = new p196z2.i(i12);
            } else {
                eVar.f11511d = new U4.b();
            }
        }
        if (eVar.f11512e == null) {
            eVar.f11512e = new p196z2.h(eVar.f11517j.f632c);
        }
        if (eVar.f11513f == null) {
            eVar.f11513f = new A2.f(eVar.f11517j.f631b);
        }
        if (eVar.f11516i == null) {
            eVar.f11516i = new A2.e(new p096m2.e(10, applicationContext, "image_manager_disk_cache"));
        }
        if (eVar.f11510c == null) {
            eVar.f11510c = new p(eVar.f11513f, eVar.f11516i, eVar.f11515h, eVar.f11514g, new B2.c(new ThreadPoolExecutor(0, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, B2.c.f1206H, TimeUnit.MILLISECONDS, new SynchronousQueue(), new B2.a(new ThreadFactoryC3229a(), "source-unlimited", fVar, false))), eVar.f11522o);
        }
        List list = eVar.f11523p;
        if (list == null) {
            eVar.f11523p = Collections.emptyList();
        } else {
            eVar.f11523p = Collections.unmodifiableList(list);
        }
        u uVar = eVar.f11509b;
        uVar.getClass();
        u uVar2 = new u();
        uVar2.f24776a = Collections.unmodifiableMap(new HashMap(uVar.f24776a));
        b bVar = new b(applicationContext, eVar.f11510c, eVar.f11513f, eVar.f11511d, eVar.f11512e, new J2.n(eVar.f11521n), eVar.f11518k, eVar.f11519l, eVar.f11520m, eVar.f11508a, eVar.f11523p, arrayList, generatedAppGlideModule, uVar2);
        applicationContext.registerComponentCallbacks(bVar);
        f11495N = bVar;
    }

    public static n d(Context context) {
        p102n0.c.c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return a(context).f11501K.b(context);
    }

    public final void c(n nVar) {
        synchronized (this.f11503M) {
            try {
                if (!this.f11503M.contains(nVar)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.f11503M.remove(nVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        P2.o.a();
        this.f11498H.e(0L);
        this.f11497G.K();
        this.f11500J.a();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i8) {
        P2.o.a();
        synchronized (this.f11503M) {
            try {
                Iterator it = this.f11503M.iterator();
                while (it.hasNext()) {
                    ((n) it.next()).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f11498H.f(i8);
        this.f11497G.G(i8);
        this.f11500J.i(i8);
    }
}
