package p094m0;

import com.google.android.gms.common.api.d;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import p117p0.M;
import z4.E;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public class j0 {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f26880A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f26881B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f26882C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public HashMap f26883D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public HashSet f26884E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f26885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f26887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f26888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f26890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f26891g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f26892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f26893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f26894j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f26895k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f26896l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public H f26897m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public H f26898n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f26899o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public H f26900p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f26901q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f26902r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f26903s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public H f26904t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public i0 f26905u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public H f26906v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f26907w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f26908x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f26909y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f26910z;

    public j0() {
        this.f26885a = d.API_PRIORITY_OTHER;
        this.f26886b = d.API_PRIORITY_OTHER;
        this.f26887c = d.API_PRIORITY_OTHER;
        this.f26888d = d.API_PRIORITY_OTHER;
        this.f26893i = d.API_PRIORITY_OTHER;
        this.f26894j = d.API_PRIORITY_OTHER;
        this.f26895k = true;
        this.f26896l = true;
        F f8 = H.f31804H;
        d0 d0Var = d0.f31844K;
        this.f26897m = d0Var;
        this.f26898n = d0Var;
        this.f26899o = 0;
        this.f26900p = d0Var;
        this.f26901q = 0;
        this.f26902r = d.API_PRIORITY_OTHER;
        this.f26903s = d.API_PRIORITY_OTHER;
        this.f26904t = d0Var;
        this.f26905u = i0.f26879a;
        this.f26906v = d0Var;
        this.f26907w = 0;
        this.f26908x = true;
        this.f26909y = 0;
        this.f26910z = false;
        this.f26880A = false;
        this.f26881B = false;
        this.f26882C = false;
        this.f26883D = new HashMap();
        this.f26884E = new HashSet();
    }

    public void a(h0 h0Var) {
        this.f26883D.put(h0Var.f26868a, h0Var);
    }

    public k0 b() {
        return new k0(this);
    }

    public j0 c(int i8) {
        Iterator it = this.f26883D.values().iterator();
        while (it.hasNext()) {
            if (((h0) it.next()).f26868a.f26859c == i8) {
                it.remove();
            }
        }
        return this;
    }

    public final void d(k0 k0Var) {
        this.f26885a = k0Var.f26917a;
        this.f26886b = k0Var.f26918b;
        this.f26887c = k0Var.f26919c;
        this.f26888d = k0Var.f26920d;
        this.f26889e = k0Var.f26921e;
        this.f26890f = k0Var.f26922f;
        this.f26891g = k0Var.f26923g;
        this.f26892h = k0Var.f26924h;
        this.f26893i = k0Var.f26925i;
        this.f26894j = k0Var.f26926j;
        this.f26895k = k0Var.f26927k;
        this.f26896l = k0Var.f26928l;
        this.f26897m = k0Var.f26929m;
        this.f26898n = k0Var.f26930n;
        this.f26899o = k0Var.f26931o;
        this.f26900p = k0Var.f26932p;
        this.f26901q = k0Var.f26933q;
        this.f26902r = k0Var.f26934r;
        this.f26903s = k0Var.f26935s;
        this.f26904t = k0Var.f26936t;
        this.f26905u = k0Var.f26937u;
        this.f26906v = k0Var.f26938v;
        this.f26907w = k0Var.f26939w;
        this.f26908x = k0Var.f26940x;
        this.f26909y = k0Var.f26941y;
        this.f26910z = k0Var.f26942z;
        this.f26880A = k0Var.f26912A;
        this.f26881B = k0Var.f26913B;
        this.f26882C = k0Var.f26914C;
        this.f26884E = new HashSet(k0Var.f26916E);
        this.f26883D = new HashMap(k0Var.f26915D);
    }

    public j0 e() {
        this.f26909y = -3;
        return this;
    }

    public j0 f(h0 h0Var) {
        g0 g0Var = h0Var.f26868a;
        c(g0Var.f26859c);
        this.f26883D.put(g0Var, h0Var);
        return this;
    }

    public j0 g() {
        return h(new String[0]);
    }

    public j0 h(String... strArr) {
        E eQ = H.q();
        for (String str : strArr) {
            str.getClass();
            eQ.g0(M.S(str));
        }
        this.f26906v = eQ.m0();
        this.f26908x = false;
        return this;
    }

    public j0 i() {
        this.f26907w = 0;
        this.f26908x = false;
        return this;
    }

    public j0 j(int i8, boolean z7) {
        if (z7) {
            this.f26884E.add(Integer.valueOf(i8));
        } else {
            this.f26884E.remove(Integer.valueOf(i8));
        }
        return this;
    }

    public j0(k0 k0Var) {
        d(k0Var);
    }
}
