package E1;

import C0.C0079d;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f2725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f2726f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f2727g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f2728h;

    public e0(Context context) {
        this(context, new E3.c(-1, 0, 0));
    }

    public final void a() {
        Object obj;
        Object obj2;
        int i8;
        if (this.f2722b) {
            ArrayList arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT >= 30) {
                Intent intent = new Intent("android.media.MediaRoute2ProviderService");
                ArrayList arrayList2 = new ArrayList();
                Iterator<ResolveInfo> it = ((PackageManager) this.f2725e).queryIntentServices(intent, 0).iterator();
                while (it.hasNext()) {
                    arrayList2.add(it.next().serviceInfo);
                }
                arrayList = arrayList2;
            }
            Iterator<ResolveInfo> it2 = ((PackageManager) this.f2725e).queryIntentServices(new Intent("android.media.MediaRouteProviderService"), 0).iterator();
            int i9 = 0;
            while (true) {
                boolean zHasNext = it2.hasNext();
                obj = this.f2726f;
                obj2 = this.f2723c;
                if (!zHasNext) {
                    break;
                }
                ServiceInfo serviceInfo = it2.next().serviceInfo;
                if (serviceInfo != null) {
                    if (H.f2649c != null && H.c().g() && !arrayList.isEmpty()) {
                        Iterator it3 = arrayList.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                ServiceInfo serviceInfo2 = (ServiceInfo) it3.next();
                                if (!serviceInfo.packageName.equals(serviceInfo2.packageName) || !serviceInfo.name.equals(serviceInfo2.name)) {
                                }
                            }
                        }
                    }
                    String str = serviceInfo.packageName;
                    String str2 = serviceInfo.name;
                    ArrayList arrayList3 = (ArrayList) obj;
                    int size = arrayList3.size();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= size) {
                            i10 = -1;
                            break;
                        }
                        ComponentName componentName = ((a0) arrayList3.get(i10)).f2698i;
                        if (componentName.getPackageName().equals(str) && componentName.getClassName().equals(str2)) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                    if (i10 < 0) {
                        a0 a0Var = new a0(this.f2721a, new ComponentName(serviceInfo.packageName, serviceInfo.name));
                        a0Var.f2705p = new C0079d(13, this, a0Var);
                        if (!a0Var.f2701l) {
                            a0Var.f2701l = true;
                            a0Var.m();
                        }
                        i8 = i9 + 1;
                        arrayList3.add(i9, a0Var);
                        ((A) ((d0) obj2)).a(a0Var, false);
                    } else if (i10 >= i9) {
                        a0 a0Var2 = (a0) arrayList3.get(i10);
                        if (!a0Var2.f2701l) {
                            a0Var2.f2701l = true;
                            a0Var2.m();
                        }
                        if (a0Var2.f2703n == null && a0Var2.f2701l && (a0Var2.f2789e != null || !a0Var2.f2700k.isEmpty())) {
                            a0Var2.l();
                            a0Var2.i();
                        }
                        i8 = i9 + 1;
                        Collections.swap(arrayList3, i10, i9);
                    }
                    i9 = i8;
                }
            }
            ArrayList arrayList4 = (ArrayList) obj;
            if (i9 < arrayList4.size()) {
                for (int size2 = arrayList4.size() - 1; size2 >= i9; size2--) {
                    a0 a0Var3 = (a0) arrayList4.get(size2);
                    ((A) ((d0) obj2)).j(a0Var3);
                    arrayList4.remove(a0Var3);
                    a0Var3.f2705p = null;
                    if (a0Var3.f2701l) {
                        a0Var3.f2701l = false;
                        a0Var3.m();
                    }
                }
            }
        }
    }

    public final void b(Uri uri) {
        if (uri == null) {
            c();
            return;
        }
        if (uri.equals((Uri) this.f2724d)) {
            return;
        }
        c();
        this.f2724d = uri;
        E3.c cVar = (E3.c) this.f2723c;
        int i8 = cVar.f2838H;
        Context context = this.f2721a;
        if (i8 == 0 || cVar.f2839I == 0) {
            this.f2725e = new F3.c(context, 0, 0, this);
        } else {
            this.f2725e = new F3.c(context, i8, cVar.f2839I, this);
        }
        F3.c cVar2 = (F3.c) this.f2725e;
        com.bumptech.glide.c.h(cVar2);
        Uri uri2 = (Uri) this.f2724d;
        com.bumptech.glide.c.h(uri2);
        cVar2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uri2);
    }

    public final void c() {
        F3.c cVar = (F3.c) this.f2725e;
        if (cVar != null) {
            cVar.cancel(true);
            this.f2725e = null;
        }
        this.f2724d = null;
        this.f2727g = null;
        this.f2722b = false;
    }

    public e0(Context context, E3.c cVar) {
        this.f2721a = context;
        this.f2723c = cVar;
        this.f2726f = new F2.G(26);
        c();
    }

    public e0(Context context, A a8) {
        this.f2726f = new ArrayList();
        this.f2727g = new p039f.G(this, 4);
        this.f2728h = new RunnableC0184t(this, 1);
        this.f2721a = context;
        this.f2723c = a8;
        this.f2724d = new Handler();
        this.f2725e = context.getPackageManager();
    }
}
