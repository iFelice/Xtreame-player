package U0;

import A0.C0023x;
import A0.Y;
import D0.U;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import com.google.android.gms.internal.measurement.H1;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import p094m0.C3125h;
import p094m0.C3126i;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.b0;
import p094m0.n0;
import p094m0.o0;
import p094m0.s0;
import p094m0.t0;
import p094m0.u0;
import p094m0.v0;
import p117p0.AbstractC3164b;
import p117p0.InterfaceC3168f;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class x implements u0 {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final p093m.a f6855z = new p093m.a(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t0 f6857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray f6858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0338d f6860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0349o f6861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final InterfaceC3168f f6862g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CopyOnWriteArraySet f6863h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p016c.g f6864i = new p016c.g();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public C3136t f6865j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final U4.b f6866k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final d0 f6867l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public p117p0.I f6868m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public v0 f6869n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public B f6870o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f6871p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f6872q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Pair f6873r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f6874s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f6875t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f6876u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f6877v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f6878w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f6879x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f6880y;

    public x(C0350p c0350p) {
        this.f6856a = c0350p.f6827a;
        v vVar = c0350p.f6829c;
        H1.j(vVar);
        this.f6857b = vVar;
        this.f6858c = new SparseArray();
        z4.F f8 = z4.H.f31804H;
        this.f6867l = d0.f31844K;
        this.f6866k = n0.f26964D;
        this.f6859d = c0350p.f6830d;
        InterfaceC3168f interfaceC3168f = c0350p.f6831e;
        this.f6862g = interfaceC3168f;
        this.f6860e = new C0338d(c0350p.f6828b, interfaceC3168f);
        this.f6861f = new C0349o(this);
        this.f6863h = new CopyOnWriteArraySet();
        this.f6865j = new C3136t(new C3135s());
        this.f6871p = -9223372036854775807L;
        this.f6876u = -9223372036854775807L;
        this.f6877v = -9223372036854775807L;
        this.f6879x = -1;
        this.f6875t = 0;
    }

    public static void a(x xVar, boolean z7) {
        if (xVar.f6875t == 1) {
            xVar.f6874s++;
            xVar.f6860e.k(z7);
            while (xVar.f6864i.m() > 1) {
                xVar.f6864i.j();
            }
            if (xVar.f6864i.m() == 1) {
                w wVar = (w) xVar.f6864i.j();
                wVar.getClass();
                xVar.f6871p = wVar.f6852a;
                xVar.f6872q = wVar.f6853b;
                xVar.c();
            }
            xVar.f6876u = -9223372036854775807L;
            xVar.f6877v = -9223372036854775807L;
            xVar.f6878w = false;
            p117p0.I i8 = xVar.f6868m;
            H1.j(i8);
            i8.c(new p000a.b(xVar, 20));
        }
    }

    public final void b(Surface surface, int i8, int i9) {
        v0 v0Var = this.f6869n;
        if (v0Var == null) {
            return;
        }
        C0338d c0338d = this.f6860e;
        if (surface == null) {
            Y y7 = (Y) v0Var;
            y7.f106i = null;
            s0 s0Var = y7.f105h;
            if (s0Var != null) {
                ((C0023x) s0Var).c(null);
            }
            c0338d.i();
            return;
        }
        b0 b0Var = new b0(surface, i8, i9);
        Y y8 = (Y) v0Var;
        y8.f106i = b0Var;
        s0 s0Var2 = y8.f105h;
        if (s0Var2 != null) {
            ((C0023x) s0Var2).c(b0Var);
        }
        c0338d.n(surface, new p117p0.F(i8, i9));
    }

    public final void c() {
        C3136t c3136t = this.f6865j;
        long j8 = this.f6871p;
        int i8 = this.f6872q;
        z4.F f8 = z4.H.f31804H;
        this.f6860e.e(i8, j8, c3136t, d0.f31844K);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x004c A[Catch: p -> 0x0048, TryCatch #2 {p -> 0x0048, blocks: (B:16:0x0023, B:18:0x0029, B:20:0x002f, B:24:0x004c, B:28:0x005b, B:30:0x0061, B:26:0x0053), top: B:56:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0053 A[Catch: p -> 0x0048, TryCatch #2 {p -> 0x0048, blocks: (B:16:0x0023, B:18:0x0029, B:20:0x002f, B:24:0x004c, B:28:0x005b, B:30:0x0061, B:26:0x0053), top: B:56:0x0023 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [U0.n] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean d(C3136t c3136t, int i8) throws Q {
        boolean zX;
        final int i9 = 0;
        final int i10 = 1;
        if (i8 == 0) {
            H1.i(this.f6875t == 0);
            C3126i c3126i = c3136t.f27014E;
            if (c3126i == null || !c3126i.e()) {
                c3126i = C3126i.f26870h;
            }
            int i11 = c3126i.f26874c;
            if (i11 == 7) {
                try {
                    if (Build.VERSION.SDK_INT >= 34 || !AbstractC3164b.w()) {
                        if (i11 == 6) {
                            zX = AbstractC3164b.w();
                        } else if (i11 == 7) {
                            zX = AbstractC3164b.x("EGL_EXT_gl_colorspace_bt2020_hlg");
                        }
                        if (!zX && Build.VERSION.SDK_INT >= 29) {
                            Locale locale = Locale.US;
                            p117p0.x.f("PlaybackVidGraphWrapper", "Color transfer " + i11 + " is not supported. Falling back to OpenGl tone mapping.");
                            c3126i = C3126i.f26870h;
                        }
                    } else {
                        C3125h c3125hA = c3126i.a();
                        c3125hA.f26864c = 6;
                        c3126i = new C3126i(c3125hA.f26862a, c3125hA.f26863b, c3125hA.f26864c, c3125hA.f26867f, c3125hA.f26865d, c3125hA.f26866e);
                    }
                } catch (p117p0.p e8) {
                    throw new Q(e8, c3136t);
                }
            } else {
                if (i11 == 6) {
                    zX = AbstractC3164b.w();
                } else if (i11 == 7) {
                    zX = AbstractC3164b.x("EGL_EXT_gl_colorspace_bt2020_hlg");
                }
                if (!zX) {
                    Locale locale2 = Locale.US;
                    p117p0.x.f("PlaybackVidGraphWrapper", "Color transfer " + i11 + " is not supported. Falling back to OpenGl tone mapping.");
                    c3126i = C3126i.f26870h;
                }
            }
            Looper looperMyLooper = Looper.myLooper();
            H1.j(looperMyLooper);
            final p117p0.I iA = ((p117p0.G) this.f6862g).a(looperMyLooper, null);
            this.f6868m = iA;
            try {
                v0 v0VarA = this.f6857b.a(this.f6856a, c3126i, this, new Executor() { // from class: U0.n
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        int i12 = i9;
                        ((p117p0.I) iA).c(runnable);
                    }
                });
                this.f6869n = v0VarA;
                d0 d0Var = this.f6867l;
                Y y7 = (Y) v0VarA;
                y7.getClass();
                y7.f107j = z4.H.s(d0Var);
                v0 v0Var = this.f6869n;
                U4.b bVar = this.f6866k;
                ((Y) v0Var).getClass();
                H1.c("SingleInputVideoGraph does not use VideoCompositor, and therefore cannot apply VideoCompositorSettings", bVar.equals(n0.f26964D));
                this.f6869n.getClass();
                Pair pair = this.f6873r;
                if (pair != null) {
                    Surface surface = (Surface) pair.first;
                    p117p0.F f8 = (p117p0.F) pair.second;
                    b(surface, f8.f28039a, f8.f28040b);
                }
                C0338d c0338d = this.f6860e;
                c0338d.getClass();
                U u7 = new U(this);
                final p117p0.I i12 = this.f6868m;
                Objects.requireNonNull(i12);
                Executor executor = new Executor() { // from class: U0.n
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        int i13 = i10;
                        ((p117p0.I) i12).c(runnable);
                    }
                };
                c0338d.f6731M = u7;
                c0338d.f6732N = executor;
                this.f6875t = 1;
            } catch (o0 e9) {
                throw new Q(e9, c3136t);
            }
        } else if (this.f6875t != 1) {
            return false;
        }
        try {
            v0 v0Var2 = this.f6869n;
            v0Var2.getClass();
            ((Y) v0Var2).a(i8);
            this.f6880y++;
            return true;
        } catch (o0 e10) {
            throw new Q(e10, c3136t);
        }
    }
}
