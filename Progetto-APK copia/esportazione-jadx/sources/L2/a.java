package L2;

import F2.AbstractC0195e;
import F2.C0198h;
import F2.m;
import F2.n;
import F2.s;
import F2.u;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;
import p173w2.k;
import p173w2.l;
import p173w2.p;
import y2.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Cloneable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f4630G;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Drawable f4634K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f4635L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Drawable f4636M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f4637N;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f4642S;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public Drawable f4644U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f4645V;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f4649Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Resources.Theme f4650a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f4651b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f4652c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f4653d0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f4655f0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public float f4631H = 1.0f;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public o f4632I = o.f31353c;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public com.bumptech.glide.g f4633J = com.bumptech.glide.g.f11537I;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f4638O = true;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f4639P = -1;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f4640Q = -1;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public p173w2.i f4641R = O2.c.f5565b;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f4643T = true;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public l f4646W = new l();

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public P2.d f4647X = new P2.d(0);

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public Class f4648Y = Object.class;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f4654e0 = true;

    public static boolean i(int i8, int i9) {
        return (i8 & i9) != 0;
    }

    public a a(a aVar) {
        if (this.f4651b0) {
            return clone().a(aVar);
        }
        if (i(aVar.f4630G, 2)) {
            this.f4631H = aVar.f4631H;
        }
        if (i(aVar.f4630G, 262144)) {
            this.f4652c0 = aVar.f4652c0;
        }
        if (i(aVar.f4630G, 1048576)) {
            this.f4655f0 = aVar.f4655f0;
        }
        if (i(aVar.f4630G, 4)) {
            this.f4632I = aVar.f4632I;
        }
        if (i(aVar.f4630G, 8)) {
            this.f4633J = aVar.f4633J;
        }
        if (i(aVar.f4630G, 16)) {
            this.f4634K = aVar.f4634K;
            this.f4635L = 0;
            this.f4630G &= -33;
        }
        if (i(aVar.f4630G, 32)) {
            this.f4635L = aVar.f4635L;
            this.f4634K = null;
            this.f4630G &= -17;
        }
        if (i(aVar.f4630G, 64)) {
            this.f4636M = aVar.f4636M;
            this.f4637N = 0;
            this.f4630G &= -129;
        }
        if (i(aVar.f4630G, 128)) {
            this.f4637N = aVar.f4637N;
            this.f4636M = null;
            this.f4630G &= -65;
        }
        if (i(aVar.f4630G, 256)) {
            this.f4638O = aVar.f4638O;
        }
        if (i(aVar.f4630G, IMediaList.Event.ItemAdded)) {
            this.f4640Q = aVar.f4640Q;
            this.f4639P = aVar.f4639P;
        }
        if (i(aVar.f4630G, 1024)) {
            this.f4641R = aVar.f4641R;
        }
        if (i(aVar.f4630G, 4096)) {
            this.f4648Y = aVar.f4648Y;
        }
        if (i(aVar.f4630G, 8192)) {
            this.f4644U = aVar.f4644U;
            this.f4645V = 0;
            this.f4630G &= -16385;
        }
        if (i(aVar.f4630G, Http2.INITIAL_MAX_FRAME_SIZE)) {
            this.f4645V = aVar.f4645V;
            this.f4644U = null;
            this.f4630G &= -8193;
        }
        if (i(aVar.f4630G, 32768)) {
            this.f4650a0 = aVar.f4650a0;
        }
        if (i(aVar.f4630G, 65536)) {
            this.f4643T = aVar.f4643T;
        }
        if (i(aVar.f4630G, 131072)) {
            this.f4642S = aVar.f4642S;
        }
        if (i(aVar.f4630G, 2048)) {
            this.f4647X.putAll(aVar.f4647X);
            this.f4654e0 = aVar.f4654e0;
        }
        if (i(aVar.f4630G, 524288)) {
            this.f4653d0 = aVar.f4653d0;
        }
        if (!this.f4643T) {
            this.f4647X.clear();
            int i8 = this.f4630G;
            this.f4642S = false;
            this.f4630G = i8 & (-133121);
            this.f4654e0 = true;
        }
        this.f4630G |= aVar.f4630G;
        this.f4646W.f31000b.g(aVar.f4646W.f31000b);
        r();
        return this;
    }

    public final a b() {
        return w(n.f3146c, new C0198h());
    }

    @Override // 
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public a clone() {
        try {
            a aVar = (a) super.clone();
            l lVar = new l();
            aVar.f4646W = lVar;
            lVar.f31000b.g(this.f4646W.f31000b);
            P2.d dVar = new P2.d(0);
            aVar.f4647X = dVar;
            dVar.putAll(this.f4647X);
            aVar.f4649Z = false;
            aVar.f4651b0 = false;
            return aVar;
        } catch (CloneNotSupportedException e8) {
            throw new RuntimeException(e8);
        }
    }

    public final a d(Class cls) {
        if (this.f4651b0) {
            return clone().d(cls);
        }
        this.f4648Y = cls;
        this.f4630G |= 4096;
        r();
        return this;
    }

    public final a e(y2.n nVar) {
        if (this.f4651b0) {
            return clone().e(nVar);
        }
        this.f4632I = nVar;
        this.f4630G |= 4;
        r();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            return h((a) obj);
        }
        return false;
    }

    public final a f(int i8) {
        if (this.f4651b0) {
            return clone().f(i8);
        }
        this.f4635L = i8;
        int i9 = this.f4630G | 32;
        this.f4634K = null;
        this.f4630G = i9 & (-17);
        r();
        return this;
    }

    public final a g() {
        return q(n.f3144a, new u(), true);
    }

    public final boolean h(a aVar) {
        return Float.compare(aVar.f4631H, this.f4631H) == 0 && this.f4635L == aVar.f4635L && P2.o.b(this.f4634K, aVar.f4634K) && this.f4637N == aVar.f4637N && P2.o.b(this.f4636M, aVar.f4636M) && this.f4645V == aVar.f4645V && P2.o.b(this.f4644U, aVar.f4644U) && this.f4638O == aVar.f4638O && this.f4639P == aVar.f4639P && this.f4640Q == aVar.f4640Q && this.f4642S == aVar.f4642S && this.f4643T == aVar.f4643T && this.f4652c0 == aVar.f4652c0 && this.f4653d0 == aVar.f4653d0 && this.f4632I.equals(aVar.f4632I) && this.f4633J == aVar.f4633J && this.f4646W.equals(aVar.f4646W) && this.f4647X.equals(aVar.f4647X) && this.f4648Y.equals(aVar.f4648Y) && P2.o.b(this.f4641R, aVar.f4641R) && P2.o.b(this.f4650a0, aVar.f4650a0);
    }

    public int hashCode() {
        float f8 = this.f4631H;
        char[] cArr = P2.o.f5906a;
        return P2.o.h(P2.o.h(P2.o.h(P2.o.h(P2.o.h(P2.o.h(P2.o.h(P2.o.i(P2.o.i(P2.o.i(P2.o.i(P2.o.g(this.f4640Q, P2.o.g(this.f4639P, P2.o.i(P2.o.h(P2.o.g(this.f4645V, P2.o.h(P2.o.g(this.f4637N, P2.o.h(P2.o.g(this.f4635L, P2.o.g(Float.floatToIntBits(f8), 17)), this.f4634K)), this.f4636M)), this.f4644U), this.f4638O))), this.f4642S), this.f4643T), this.f4652c0), this.f4653d0), this.f4632I), this.f4633J), this.f4646W), this.f4647X), this.f4648Y), this.f4641R), this.f4650a0);
    }

    public final a j(m mVar, AbstractC0195e abstractC0195e) {
        if (this.f4651b0) {
            return clone().j(mVar, abstractC0195e);
        }
        s(n.f3149f, mVar);
        return y(abstractC0195e, false);
    }

    public final a l(int i8, int i9) {
        if (this.f4651b0) {
            return clone().l(i8, i9);
        }
        this.f4640Q = i8;
        this.f4639P = i9;
        this.f4630G |= IMediaList.Event.ItemAdded;
        r();
        return this;
    }

    public final a m(int i8) {
        if (this.f4651b0) {
            return clone().m(i8);
        }
        this.f4637N = i8;
        int i9 = this.f4630G | 128;
        this.f4636M = null;
        this.f4630G = i9 & (-65);
        r();
        return this;
    }

    public final a n(Drawable drawable) {
        if (this.f4651b0) {
            return clone().n(drawable);
        }
        this.f4636M = drawable;
        int i8 = this.f4630G | 64;
        this.f4637N = 0;
        this.f4630G = i8 & (-129);
        r();
        return this;
    }

    public final a o() {
        com.bumptech.glide.g gVar = com.bumptech.glide.g.f11538J;
        if (this.f4651b0) {
            return clone().o();
        }
        this.f4633J = gVar;
        this.f4630G |= 8;
        r();
        return this;
    }

    public final a p(k kVar) {
        if (this.f4651b0) {
            return clone().p(kVar);
        }
        this.f4646W.f31000b.remove(kVar);
        r();
        return this;
    }

    public final a q(m mVar, AbstractC0195e abstractC0195e, boolean z7) {
        a aVarW = z7 ? w(mVar, abstractC0195e) : j(mVar, abstractC0195e);
        aVarW.f4654e0 = true;
        return aVarW;
    }

    public final void r() {
        if (this.f4649Z) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
    }

    public final a s(k kVar, Object obj) {
        if (this.f4651b0) {
            return clone().s(kVar, obj);
        }
        p102n0.c.b(kVar);
        p102n0.c.b(obj);
        this.f4646W.f31000b.put(kVar, obj);
        r();
        return this;
    }

    public final a t(p173w2.i iVar) {
        if (this.f4651b0) {
            return clone().t(iVar);
        }
        this.f4641R = iVar;
        this.f4630G |= 1024;
        r();
        return this;
    }

    public final a u() {
        if (this.f4651b0) {
            return clone().u();
        }
        this.f4638O = false;
        this.f4630G |= 256;
        r();
        return this;
    }

    public final a v(Resources.Theme theme) {
        if (this.f4651b0) {
            return clone().v(theme);
        }
        this.f4650a0 = theme;
        if (theme != null) {
            this.f4630G |= 32768;
            return s(G2.e.f3399b, theme);
        }
        this.f4630G &= -32769;
        return p(G2.e.f3399b);
    }

    public final a w(m mVar, AbstractC0195e abstractC0195e) {
        if (this.f4651b0) {
            return clone().w(mVar, abstractC0195e);
        }
        s(n.f3149f, mVar);
        return y(abstractC0195e, true);
    }

    public final a x(Class cls, p pVar, boolean z7) {
        if (this.f4651b0) {
            return clone().x(cls, pVar, z7);
        }
        p102n0.c.b(pVar);
        this.f4647X.put(cls, pVar);
        int i8 = this.f4630G;
        this.f4643T = true;
        this.f4630G = 67584 | i8;
        this.f4654e0 = false;
        if (z7) {
            this.f4630G = i8 | 198656;
            this.f4642S = true;
        }
        r();
        return this;
    }

    public final a y(p pVar, boolean z7) {
        if (this.f4651b0) {
            return clone().y(pVar, z7);
        }
        s sVar = new s(pVar, z7);
        x(Bitmap.class, pVar, z7);
        x(Drawable.class, sVar, z7);
        x(BitmapDrawable.class, sVar, z7);
        x(H2.c.class, new H2.d(pVar), z7);
        r();
        return this;
    }

    public final a z() {
        if (this.f4651b0) {
            return clone().z();
        }
        this.f4655f0 = true;
        this.f4630G |= 1048576;
        r();
        return this;
    }
}
