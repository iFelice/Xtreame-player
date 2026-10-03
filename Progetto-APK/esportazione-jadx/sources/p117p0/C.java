package p117p0;

import J2.t;
import K0.k;
import K0.l;
import Q3.b;
import android.content.Context;
import android.os.Build;
import com.google.android.gms.internal.ads.Cw;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import p039f.RunnableC3004t;
import p086l.C3061x;
import p094m0.C3121d;
import p094m0.C3136t;
import p094m0.O;
import z4.C3253q;
import z4.C3256u;
import z4.I;
import z4.V;
import z4.W;
import z4.c0;
import z4.i0;

/* JADX INFO: loaded from: classes.dex */
public final class C implements k {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static C f28021L;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f28022G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f28023H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f28024I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f28025J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f28026K;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C(int i8) {
        this(4, 4);
        if (i8 == 4) {
            return;
        }
        this.f28022G = 0;
        this.f28023H = false;
        this.f28024I = null;
        this.f28025J = null;
        this.f28026K = null;
    }

    public static synchronized C b(Context context) {
        try {
            if (f28021L == null) {
                f28021L = new C(context, 0);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f28021L;
    }

    public final i0 a() {
        Object[] objArr;
        I i8 = (I) this.f28026K;
        if (i8 != null) {
            throw i8.a();
        }
        int i9 = this.f28022G;
        if (((Comparator) this.f28024I) == null) {
            objArr = (Object[]) this.f28025J;
        } else {
            if (this.f28023H) {
                this.f28025J = Arrays.copyOf((Object[]) this.f28025J, i9 * 2);
            }
            objArr = (Object[]) this.f28025J;
            Comparator comparator = (Comparator) this.f28024I;
            Map.Entry[] entryArr = new Map.Entry[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                int i11 = i10 * 2;
                Object obj = objArr[i11];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i11 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i10] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            c0 c3256u = comparator instanceof c0 ? (c0) comparator : new C3256u(comparator);
            V v5 = W.f31828G;
            c3256u.getClass();
            Arrays.sort(entryArr, 0, i9, new C3253q(v5, c3256u));
            for (int i12 = 0; i12 < i9; i12++) {
                int i13 = i12 * 2;
                objArr[i13] = entryArr[i12].getKey();
                objArr[i13 + 1] = entryArr[i12].getValue();
            }
        }
        this.f28023H = true;
        i0 i0VarE = i0.e(i9, objArr, this);
        I i14 = (I) this.f28026K;
        if (i14 == null) {
            return i0VarE;
        }
        throw i14.a();
    }

    public final int c() {
        int i8;
        synchronized (this.f28026K) {
            i8 = this.f28022G;
        }
        return i8;
    }

    public final void d(Object obj, Object obj2) {
        int i8 = (this.f28022G + 1) * 2;
        Object[] objArr = (Object[]) this.f28025J;
        if (i8 > objArr.length) {
            this.f28025J = Arrays.copyOf(objArr, b.f(objArr.length, i8));
            this.f28023H = false;
        }
        Cw.e(obj, obj2);
        Object[] objArr2 = (Object[]) this.f28025J;
        int i9 = this.f28022G;
        int i10 = i9 * 2;
        objArr2[i10] = obj;
        objArr2[i10 + 1] = obj2;
        this.f28022G = i9 + 1;
    }

    public final void e(Collection collection) {
        if (collection instanceof Collection) {
            int size = (collection.size() + this.f28022G) * 2;
            Object[] objArr = (Object[]) this.f28025J;
            if (size > objArr.length) {
                this.f28025J = Arrays.copyOf(objArr, b.f(objArr.length, size));
                this.f28023H = false;
            }
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            d(entry.getKey(), entry.getValue());
        }
    }

    public final void f() {
        for (B b8 : (CopyOnWriteArrayList) this.f28025J) {
            if (b8.f28018a.get() == null) {
                ((CopyOnWriteArrayList) this.f28025J).remove(b8);
            }
        }
    }

    public final void g(int i8) {
        f();
        synchronized (this.f28026K) {
            try {
                if (this.f28023H && this.f28022G == i8) {
                    return;
                }
                this.f28023H = true;
                this.f28022G = i8;
                for (B b8 : (CopyOnWriteArrayList) this.f28025J) {
                    b8.getClass();
                    b8.f28019b.execute(new p000a.b(b8, 5));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0061  */
    @Override // K0.k
    public final l y(C3061x c3061x) {
        int i8;
        t tVar;
        Context context;
        int i9 = Build.VERSION.SDK_INT;
        if (i9 < 23 || ((i8 = this.f28022G) != 1 && (i8 != 0 || (i9 < 31 && ((context = (Context) this.f28024I) == null || i9 < 28 || !context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen")))))) {
            return new U4.b(24).y(c3061x);
        }
        int i10 = O.i(((C3136t) c3061x.f26412I).f27041o);
        x.e("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + M.G(i10));
        Object obj = this.f28025J;
        if (((p190y4.t) obj) != null) {
            Object obj2 = this.f28026K;
            if (((p190y4.t) obj2) != null) {
                tVar = new t((p190y4.t) obj, (p190y4.t) obj2);
            } else {
                tVar = new t(i10, 2);
            }
        } else {
            tVar = new t(i10, 2);
        }
        tVar.f4125H = this.f28023H;
        return tVar.y(c3061x);
    }

    public C(int i8, int i9) {
        if (i9 != 4) {
            this.f28026K = C3121d.f26823b;
            this.f28022G = i8;
        } else {
            this.f28025J = new Object[i8 * 2];
            this.f28022G = 0;
            this.f28023H = false;
        }
    }

    public C(Context context, int i8) {
        if (i8 == 2) {
            this.f28024I = context;
            this.f28022G = 0;
            this.f28023H = false;
            this.f28025J = null;
            this.f28026K = null;
            return;
        }
        if (i8 != 3) {
            this.f28024I = AbstractC3164b.s();
            this.f28025J = new CopyOnWriteArrayList();
            this.f28026K = new Object();
            this.f28022G = 0;
            ((Executor) this.f28024I).execute(new RunnableC3004t(6, this, context));
            return;
        }
        this.f28024I = context != null ? context.getApplicationContext() : null;
        this.f28022G = 2000;
        this.f28026K = InterfaceC3168f.f28080a;
        this.f28023H = true;
        HashMap map = new HashMap(8);
        this.f28025J = map;
        map.put(0, 1000000L);
        ((Map) this.f28025J).put(2, -9223372036854775807L);
        ((Map) this.f28025J).put(3, -9223372036854775807L);
        ((Map) this.f28025J).put(4, -9223372036854775807L);
        ((Map) this.f28025J).put(5, -9223372036854775807L);
        ((Map) this.f28025J).put(10, -9223372036854775807L);
        ((Map) this.f28025J).put(9, -9223372036854775807L);
        ((Map) this.f28025J).put(7, -9223372036854775807L);
    }
}
