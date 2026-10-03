package L2;

import P2.o;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import okhttp3.HttpUrl;
import p000a.r;
import p039f.ExecutorC3006v;
import y2.D;
import y2.k;
import y2.p;
import y2.t;
import y2.z;

/* JADX INFO: loaded from: classes.dex */
public final class h implements c, M2.h, g {

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final boolean f4662D = Log.isLoggable("GlideRequest", 2);

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f4663A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final RuntimeException f4664B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f4665C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Q2.e f4667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f4669d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d f4670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f4671f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final com.bumptech.glide.f f4672g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f4673h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Class f4674i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f4675j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f4676k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f4677l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final com.bumptech.glide.g f4678m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final M2.i f4679n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List f4680o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final N2.f f4681p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Executor f4682q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public D f4683r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public k f4684s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f4685t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile p f4686u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Drawable f4687v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Drawable f4688w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f4689x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f4690y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f4691z;

    public h(Context context, com.bumptech.glide.f fVar, Object obj, Object obj2, Class cls, a aVar, int i8, int i9, com.bumptech.glide.g gVar, M2.i iVar, ArrayList arrayList, d dVar, p pVar, N2.f fVar2) {
        ExecutorC3006v executorC3006v = P2.g.f5891a;
        this.f4666a = f4662D ? String.valueOf(hashCode()) : null;
        this.f4667b = new Q2.e();
        this.f4668c = obj;
        this.f4671f = context;
        this.f4672g = fVar;
        this.f4673h = obj2;
        this.f4674i = cls;
        this.f4675j = aVar;
        this.f4676k = i8;
        this.f4677l = i9;
        this.f4678m = gVar;
        this.f4679n = iVar;
        this.f4669d = null;
        this.f4680o = arrayList;
        this.f4670e = dVar;
        this.f4686u = pVar;
        this.f4681p = fVar2;
        this.f4682q = executorC3006v;
        this.f4665C = 1;
        if (this.f4664B == null && fVar.f11532h.f24776a.containsKey(com.bumptech.glide.d.class)) {
            this.f4664B = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // L2.c
    public final boolean a() {
        boolean z7;
        synchronized (this.f4668c) {
            z7 = this.f4665C == 4;
        }
        return z7;
    }

    public final void b() {
        if (this.f4663A) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
        this.f4667b.a();
        this.f4679n.f(this);
        k kVar = this.f4684s;
        if (kVar != null) {
            synchronized (((p) kVar.f31312c)) {
                ((t) kVar.f31310a).j((g) kVar.f31311b);
            }
            this.f4684s = null;
        }
    }

    public final Drawable c() {
        int i8;
        if (this.f4688w == null) {
            a aVar = this.f4675j;
            Drawable drawable = aVar.f4636M;
            this.f4688w = drawable;
            if (drawable == null && (i8 = aVar.f4637N) > 0) {
                Resources.Theme theme = aVar.f4650a0;
                Context context = this.f4671f;
                if (theme == null) {
                    theme = context.getTheme();
                }
                this.f4688w = com.bumptech.glide.d.j(context, context, i8, theme);
            }
        }
        return this.f4688w;
    }

    @Override // L2.c
    public final void clear() {
        synchronized (this.f4668c) {
            try {
                if (this.f4663A) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f4667b.a();
                if (this.f4665C == 6) {
                    return;
                }
                b();
                D d6 = this.f4683r;
                if (d6 != null) {
                    this.f4683r = null;
                } else {
                    d6 = null;
                }
                d dVar = this.f4670e;
                if (dVar == null || dVar.c(this)) {
                    this.f4679n.i(c());
                }
                this.f4665C = 6;
                if (d6 != null) {
                    this.f4686u.getClass();
                    p.g(d6);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // L2.c
    public final boolean d(c cVar) {
        int i8;
        int i9;
        Object obj;
        Class cls;
        a aVar;
        com.bumptech.glide.g gVar;
        int size;
        int i10;
        int i11;
        Object obj2;
        Class cls2;
        a aVar2;
        com.bumptech.glide.g gVar2;
        int size2;
        if (!(cVar instanceof h)) {
            return false;
        }
        synchronized (this.f4668c) {
            try {
                i8 = this.f4676k;
                i9 = this.f4677l;
                obj = this.f4673h;
                cls = this.f4674i;
                aVar = this.f4675j;
                gVar = this.f4678m;
                List list = this.f4680o;
                size = list != null ? list.size() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        h hVar = (h) cVar;
        synchronized (hVar.f4668c) {
            try {
                i10 = hVar.f4676k;
                i11 = hVar.f4677l;
                obj2 = hVar.f4673h;
                cls2 = hVar.f4674i;
                aVar2 = hVar.f4675j;
                gVar2 = hVar.f4678m;
                List list2 = hVar.f4680o;
                size2 = list2 != null ? list2.size() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i8 == i10 && i9 == i11) {
            char[] cArr = o.f5906a;
            if (obj != null ? obj.equals(obj2) : obj2 == null) {
                if (cls.equals(cls2) && (aVar != null ? aVar.h(aVar2) : aVar2 == null) && gVar == gVar2 && size == size2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean e() {
        d dVar = this.f4670e;
        return dVar == null || !dVar.getRoot().a();
    }

    @Override // L2.c
    public final boolean f() {
        boolean z7;
        synchronized (this.f4668c) {
            z7 = this.f4665C == 6;
        }
        return z7;
    }

    @Override // L2.c
    public final void g() {
        d dVar;
        int i8;
        synchronized (this.f4668c) {
            try {
                if (this.f4663A) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f4667b.a();
                int i9 = P2.i.f5894b;
                this.f4685t = SystemClock.elapsedRealtimeNanos();
                if (this.f4673h == null) {
                    if (o.j(this.f4676k, this.f4677l)) {
                        this.f4690y = this.f4676k;
                        this.f4691z = this.f4677l;
                    }
                    if (this.f4689x == null) {
                        a aVar = this.f4675j;
                        Drawable drawable = aVar.f4644U;
                        this.f4689x = drawable;
                        if (drawable == null && (i8 = aVar.f4645V) > 0) {
                            Resources.Theme theme = aVar.f4650a0;
                            Context context = this.f4671f;
                            if (theme == null) {
                                theme = context.getTheme();
                            }
                            this.f4689x = com.bumptech.glide.d.j(context, context, i8, theme);
                        }
                    }
                    i(new z("Received null model"), this.f4689x == null ? 5 : 3);
                    return;
                }
                int i10 = this.f4665C;
                if (i10 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (i10 == 4) {
                    k(this.f4683r, p173w2.a.f30985K, false);
                    return;
                }
                List<e> list = this.f4680o;
                if (list != null) {
                    for (e eVar : list) {
                    }
                }
                this.f4665C = 3;
                if (o.j(this.f4676k, this.f4677l)) {
                    l(this.f4676k, this.f4677l);
                } else {
                    this.f4679n.b(this);
                }
                int i11 = this.f4665C;
                if ((i11 == 2 || i11 == 3) && ((dVar = this.f4670e) == null || dVar.i(this))) {
                    this.f4679n.g(c());
                }
                if (f4662D) {
                    h("finished run method in " + P2.i.a(this.f4685t));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(String str) {
        StringBuilder sbL = r.l(str, " this: ");
        sbL.append(this.f4666a);
        Log.v("GlideRequest", sbL.toString());
    }

    public final void i(z zVar, int i8) {
        int i9;
        int i10;
        this.f4667b.a();
        synchronized (this.f4668c) {
            try {
                zVar.getClass();
                int i11 = this.f4672g.f11533i;
                if (i11 <= i8) {
                    Log.w("Glide", "Load failed for [" + this.f4673h + "] with dimensions [" + this.f4690y + "x" + this.f4691z + "]", zVar);
                    if (i11 <= 4) {
                        zVar.e();
                    }
                }
                Drawable drawableC = null;
                this.f4684s = null;
                this.f4665C = 5;
                d dVar = this.f4670e;
                if (dVar != null) {
                    dVar.h(this);
                }
                this.f4663A = true;
                try {
                    List<e> list = this.f4680o;
                    if (list != null) {
                        for (e eVar : list) {
                            e();
                            ((X4.c) eVar).a(zVar);
                        }
                    }
                    e eVar2 = this.f4669d;
                    if (eVar2 != null) {
                        e();
                        ((X4.c) eVar2).a(zVar);
                    }
                    d dVar2 = this.f4670e;
                    if (dVar2 == null || dVar2.i(this)) {
                        if (this.f4673h == null) {
                            if (this.f4689x == null) {
                                a aVar = this.f4675j;
                                Drawable drawable = aVar.f4644U;
                                this.f4689x = drawable;
                                if (drawable == null && (i10 = aVar.f4645V) > 0) {
                                    Resources.Theme theme = aVar.f4650a0;
                                    Context context = this.f4671f;
                                    if (theme == null) {
                                        theme = context.getTheme();
                                    }
                                    this.f4689x = com.bumptech.glide.d.j(context, context, i10, theme);
                                }
                            }
                            drawableC = this.f4689x;
                        }
                        if (drawableC == null) {
                            if (this.f4687v == null) {
                                a aVar2 = this.f4675j;
                                Drawable drawable2 = aVar2.f4634K;
                                this.f4687v = drawable2;
                                if (drawable2 == null && (i9 = aVar2.f4635L) > 0) {
                                    Resources.Theme theme2 = aVar2.f4650a0;
                                    Context context2 = this.f4671f;
                                    if (theme2 == null) {
                                        theme2 = context2.getTheme();
                                    }
                                    this.f4687v = com.bumptech.glide.d.j(context2, context2, i9, theme2);
                                }
                            }
                            drawableC = this.f4687v;
                        }
                        if (drawableC == null) {
                            drawableC = c();
                        }
                        this.f4679n.d(drawableC);
                    }
                    this.f4663A = false;
                } catch (Throwable th) {
                    this.f4663A = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // L2.c
    public final boolean isComplete() {
        boolean z7;
        synchronized (this.f4668c) {
            z7 = this.f4665C == 4;
        }
        return z7;
    }

    @Override // L2.c
    public final boolean isRunning() {
        boolean z7;
        synchronized (this.f4668c) {
            int i8 = this.f4665C;
            z7 = i8 == 2 || i8 == 3;
        }
        return z7;
    }

    public final void j(D d6, Object obj, p173w2.a aVar) {
        e();
        this.f4665C = 4;
        this.f4683r = d6;
        if (this.f4672g.f11533i <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + aVar + " for " + this.f4673h + " with size [" + this.f4690y + "x" + this.f4691z + "] in " + P2.i.a(this.f4685t) + " ms");
        }
        d dVar = this.f4670e;
        if (dVar != null) {
            dVar.e(this);
        }
        this.f4663A = true;
        try {
            List list = this.f4680o;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((X4.c) ((e) it.next())).getClass();
                    p190y4.k.S("Image Downloading  Success : " + ((Drawable) obj));
                }
            }
            if (this.f4669d != null) {
                p190y4.k.S("Image Downloading  Success : " + ((Drawable) obj));
            }
            this.f4679n.a(obj, this.f4681p.a(aVar));
        } finally {
            this.f4663A = false;
        }
    }

    public final void k(D d6, p173w2.a aVar, boolean z7) {
        this.f4667b.a();
        D d8 = null;
        try {
            synchronized (this.f4668c) {
                try {
                    this.f4684s = null;
                    if (d6 == null) {
                        i(new z("Expected to receive a Resource<R> with an object of " + this.f4674i + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = d6.get();
                    try {
                        if (obj != null && this.f4674i.isAssignableFrom(obj.getClass())) {
                            d dVar = this.f4670e;
                            if (dVar == null || dVar.b(this)) {
                                j(d6, obj, aVar);
                                return;
                            }
                            this.f4683r = null;
                            this.f4665C = 4;
                            this.f4686u.getClass();
                            p.g(d6);
                            return;
                        }
                        this.f4683r = null;
                        StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                        sb.append(this.f4674i);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : HttpUrl.FRAGMENT_ENCODE_SET);
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(d6);
                        sb.append("}.");
                        sb.append(obj != null ? HttpUrl.FRAGMENT_ENCODE_SET : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        i(new z(sb.toString()), 5);
                        this.f4686u.getClass();
                        p.g(d6);
                    } catch (Throwable th) {
                        d8 = d6;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (d8 != null) {
                this.f4686u.getClass();
                p.g(d8);
            }
            throw th3;
        }
    }

    public final void l(int i8, int i9) throws Throwable {
        Object obj;
        int iRound = i8;
        this.f4667b.a();
        Object obj2 = this.f4668c;
        synchronized (obj2) {
            try {
                try {
                    boolean z7 = f4662D;
                    if (z7) {
                        h("Got onSizeReady in " + P2.i.a(this.f4685t));
                    }
                    if (this.f4665C == 3) {
                        this.f4665C = 2;
                        float f8 = this.f4675j.f4631H;
                        if (iRound != Integer.MIN_VALUE) {
                            iRound = Math.round(iRound * f8);
                        }
                        this.f4690y = iRound;
                        this.f4691z = i9 == Integer.MIN_VALUE ? i9 : Math.round(f8 * i9);
                        if (z7) {
                            h("finished setup for calling load in " + P2.i.a(this.f4685t));
                        }
                        p pVar = this.f4686u;
                        com.bumptech.glide.f fVar = this.f4672g;
                        Object obj3 = this.f4673h;
                        a aVar = this.f4675j;
                        try {
                            obj = obj2;
                            try {
                                this.f4684s = pVar.a(fVar, obj3, aVar.f4641R, this.f4690y, this.f4691z, aVar.f4648Y, this.f4674i, this.f4678m, aVar.f4632I, aVar.f4647X, aVar.f4642S, aVar.f4654e0, aVar.f4646W, aVar.f4638O, aVar.f4652c0, aVar.f4655f0, aVar.f4653d0, this, this.f4682q);
                                if (this.f4665C != 2) {
                                    this.f4684s = null;
                                }
                                if (z7) {
                                    h("finished onSizeReady in " + P2.i.a(this.f4685t));
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            obj = obj2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    obj = obj2;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @Override // L2.c
    public final void pause() {
        synchronized (this.f4668c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.f4668c) {
            obj = this.f4673h;
            cls = this.f4674i;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
