package M4;

import com.google.android.gms.internal.ads.Cw;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f4798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f4799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f4800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4802f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c f4803g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Set f4804h;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(g gVar, g[] gVarArr, int i8) {
        this(gVar, gVarArr);
        this.f4797a = 0;
    }

    public static a c(g gVar) {
        return new a(gVar, new g[0], 0);
    }

    public static a d(Class cls) {
        return new a(cls, new Class[0], 0);
    }

    public final void a(d dVar) {
        if (!(!this.f4799c.contains(dVar.f4805a))) {
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }
        this.f4800d.add(dVar);
    }

    public final a b() {
        if (this.f4803g != null) {
            return new a(this.f4798b, new HashSet(this.f4799c), new HashSet(this.f4800d), this.f4801e, this.f4802f, this.f4803g, this.f4804h);
        }
        throw new IllegalStateException("Missing required property: factory.");
    }

    public final void e() {
        if (!(this.f4801e == 0)) {
            throw new IllegalStateException("Instantiation type has already been set.");
        }
        this.f4801e = 2;
    }

    public final String toString() {
        switch (this.f4797a) {
            case 1:
                return "Component<" + Arrays.toString(this.f4799c.toArray()) + ">{" + this.f4801e + ", type=" + this.f4802f + ", deps=" + Arrays.toString(this.f4800d.toArray()) + "}";
            default:
                return super.toString();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(Class cls, Class[] clsArr, int i8) {
        this(cls, clsArr);
        this.f4797a = 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(String str, HashSet hashSet, HashSet hashSet2, int i8, int i9, c cVar, Set set) {
        this(str, hashSet, hashSet2, i8, i9, cVar, set, 0);
        this.f4797a = 1;
    }

    public a(String str, HashSet hashSet, HashSet hashSet2, int i8, int i9, c cVar, Set set, int i10) {
        this.f4797a = 1;
        this.f4798b = str;
        this.f4799c = Collections.unmodifiableSet(hashSet);
        this.f4800d = Collections.unmodifiableSet(hashSet2);
        this.f4801e = i8;
        this.f4802f = i9;
        this.f4803g = cVar;
        this.f4804h = Collections.unmodifiableSet(set);
    }

    public a(Class cls, Class[] clsArr) {
        this.f4797a = 0;
        this.f4798b = null;
        HashSet hashSet = new HashSet();
        this.f4799c = hashSet;
        this.f4800d = new HashSet();
        this.f4801e = 0;
        this.f4802f = 0;
        this.f4804h = new HashSet();
        hashSet.add(new g(f.class, cls));
        for (Class cls2 : clsArr) {
            Cw.h(cls2, "Null interface");
            this.f4799c.add(new g(f.class, cls2));
        }
    }

    public a(g gVar, g[] gVarArr) {
        this.f4797a = 0;
        this.f4798b = null;
        HashSet hashSet = new HashSet();
        this.f4799c = hashSet;
        this.f4800d = new HashSet();
        this.f4801e = 0;
        this.f4802f = 0;
        this.f4804h = new HashSet();
        hashSet.add(gVar);
        for (g gVar2 : gVarArr) {
            Cw.h(gVar2, "Null interface");
        }
        Collections.addAll(this.f4799c, gVarArr);
    }
}
