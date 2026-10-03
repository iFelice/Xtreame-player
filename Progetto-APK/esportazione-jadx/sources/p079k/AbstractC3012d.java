package p079k;

import B0.w0;
import P1.x;
import T1.i;
import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.google.android.gms.internal.pal.AbstractC2740j;
import com.google.android.gms.internal.pal.AbstractC2777n4;
import com.google.android.gms.internal.pal.AbstractC2848w4;
import com.google.android.gms.internal.pal.AbstractC2863y3;
import com.google.android.gms.internal.pal.AbstractC2864y4;
import com.google.android.gms.internal.pal.B6;
import com.google.android.gms.internal.pal.C2675a6;
import com.google.android.gms.internal.pal.C2682b5;
import com.google.android.gms.internal.pal.C2691c6;
import com.google.android.gms.internal.pal.C2713f4;
import com.google.android.gms.internal.pal.C2730h5;
import com.google.android.gms.internal.pal.C2735i2;
import com.google.android.gms.internal.pal.C2778n5;
import com.google.android.gms.internal.pal.C2805r1;
import com.google.android.gms.internal.pal.C2809r5;
import com.google.android.gms.internal.pal.C2818s6;
import com.google.android.gms.internal.pal.C2841v5;
import com.google.android.gms.internal.pal.C2842v6;
import com.google.android.gms.internal.pal.C2873z5;
import com.google.android.gms.internal.pal.C2874z6;
import com.google.android.gms.internal.pal.C6;
import com.google.android.gms.internal.pal.D6;
import com.google.android.gms.internal.pal.E6;
import com.google.android.gms.internal.pal.G4;
import com.google.android.gms.internal.pal.G5;
import com.google.android.gms.internal.pal.H6;
import com.google.android.gms.internal.pal.I6;
import com.google.android.gms.internal.pal.InterfaceC2697d4;
import com.google.android.gms.internal.pal.InterfaceC2721g4;
import com.google.android.gms.internal.pal.InterfaceC2871z3;
import com.google.android.gms.internal.pal.J5;
import com.google.android.gms.internal.pal.J6;
import com.google.android.gms.internal.pal.K3;
import com.google.android.gms.internal.pal.L5;
import com.google.android.gms.internal.pal.M3;
import com.google.android.gms.internal.pal.M6;
import com.google.android.gms.internal.pal.N5;
import com.google.android.gms.internal.pal.N6;
import com.google.android.gms.internal.pal.P5;
import com.google.android.gms.internal.pal.Q4;
import com.google.android.gms.internal.pal.T3;
import com.google.android.gms.internal.pal.W4;
import com.google.android.gms.internal.pal.Y5;
import com.google.android.gms.internal.pal.r;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.spec.SecretKeySpec;
import p032e0.C;
import p086l.ViewOnClickListenerC3020c;
import p096m2.o;
import p109o.j;
import p132r.m;
import p155t6.b;
import p155t6.f;
import p193z.h;
import z4.q0;

/* JADX INFO: renamed from: k.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3012d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f25765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f25766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f25767c;

    public AbstractC3012d(x xVar) {
        q0.h(xVar, "database");
        this.f25765a = xVar;
        this.f25766b = new AtomicBoolean(false);
        this.f25767c = new f(new C(this, 1));
    }

    public final i c() {
        ((x) this.f25765a).a();
        return ((AtomicBoolean) this.f25766b).compareAndSet(false, true) ? (i) ((f) ((b) this.f25767c)).a() : d();
    }

    public final i d() {
        String strE = e();
        x xVar = (x) this.f25765a;
        xVar.getClass();
        xVar.a();
        xVar.b();
        return xVar.g().getWritableDatabase().m(strE);
    }

    public abstract String e();

    public U4.b f() {
        return (U4.b) this.f25766b;
    }

    public abstract View g();

    public View.OnClickListener h() {
        return null;
    }

    public abstract ImageView i();

    public final MenuItem j(MenuItem menuItem) {
        if (!(menuItem instanceof I.b)) {
            return menuItem;
        }
        I.b bVar = (I.b) menuItem;
        if (((m) this.f25766b) == null) {
            this.f25766b = new m();
        }
        MenuItem menuItem2 = (MenuItem) ((m) this.f25766b).get(bVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        v vVar = new v((Context) this.f25765a, bVar);
        ((m) this.f25766b).put(bVar, vVar);
        return vVar;
    }

    public abstract ViewGroup k();

    public abstract ViewTreeObserver.OnGlobalLayoutListener l(HashMap map, ViewOnClickListenerC3020c viewOnClickListenerC3020c);

    public final void m(i iVar) {
        q0.h(iVar, "statement");
        if (iVar == ((i) ((f) ((b) this.f25767c)).a())) {
            ((AtomicBoolean) this.f25766b).set(false);
        }
    }

    public AbstractC2777n4 n() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract int o();

    public abstract AbstractC2740j p(r rVar);

    public abstract String q();

    public abstract void r(AbstractC2740j abstractC2740j);

    public final Object s(AbstractC2740j abstractC2740j, Class cls) throws GeneralSecurityException {
        G4 g8;
        Object c2713f4;
        AbstractC2848w4 abstractC2848w4 = (AbstractC2848w4) ((Map) this.f25766b).get(cls);
        if (abstractC2848w4 == null) {
            throw new IllegalArgumentException(p000a.r.g("Requested primitive class ", cls.getCanonicalName(), " not supported."));
        }
        int i8 = 3;
        switch (((K3) abstractC2848w4).f23579b) {
            case 0:
                W4 w7 = (W4) abstractC2740j;
                M6 m7 = (M6) new M3(1).s(w7.p(), M6.class);
                InterfaceC2871z3 interfaceC2871z3 = (InterfaceC2871z3) new M3(13).s(w7.q(), InterfaceC2871z3.class);
                w7.q().q().getClass();
                return new I6(m7, interfaceC2871z3);
            case 1:
                C2682b5 c2682b5 = (C2682b5) abstractC2740j;
                return new B6(c2682b5.r().p(), c2682b5.q().m());
            case 2:
                C2730h5 c2730h5 = (C2730h5) abstractC2740j;
                return new C6(c2730h5.q().p(), c2730h5.p().m());
            case 3:
                return new D6(((C2778n5) abstractC2740j).p().p(), 0);
            case 4:
                return new T3(((C2809r5) abstractC2740j).p().p());
            case 5:
                return new D6(((C2873z5) abstractC2740j).p().p(), 1);
            case 6:
                AbstractC2863y3.a(((C2818s6) abstractC2740j).p().o());
                throw null;
            case 7:
                AbstractC2863y3.a(((C2842v6) abstractC2740j).p().o());
                throw null;
            case 8:
                return new D6(((C2874z6) abstractC2740j).p().p(), 2);
            case 9:
                return new E6(((C2841v5) abstractC2740j).p().p());
            case 10:
                J5 j8 = (J5) abstractC2740j;
                G5 g5N = j8.p().n();
                N5 n5P = g5N.p();
                ECPrivateKey eCPrivateKeyU0 = AbstractC2864y4.u0(AbstractC2864y4.Q(n5P.q()), j8.q().p());
                h hVar = new h(g5N.m().o());
                byte[] bArrP = n5P.o().p();
                String strG = AbstractC2864y4.G(n5P.r());
                AbstractC2864y4.Z(g5N.s());
                j jVar = new j();
                jVar.f27592G = eCPrivateKeyU0;
                jVar.f27593H = new C2805r1(eCPrivateKeyU0, 11);
                jVar.f27595J = bArrP;
                jVar.f27594I = strG;
                jVar.f27596K = hVar;
                c2713f4 = jVar;
                break;
            case 11:
                L5 l8 = (L5) abstractC2740j;
                G5 g5N2 = l8.n();
                N5 n5P2 = g5N2.p();
                int iQ = AbstractC2864y4.Q(n5P2.q());
                byte[] bArrP2 = l8.r().p();
                byte[] bArrP3 = l8.s().p();
                ECParameterSpec eCParameterSpecC0 = AbstractC2864y4.C0(iQ);
                ECPoint eCPoint = new ECPoint(new BigInteger(1, bArrP2), new BigInteger(1, bArrP3));
                AbstractC2864y4.f0(eCPoint, eCParameterSpecC0.getCurve());
                return new H6((ECPublicKey) ((KeyFactory) J6.f23573i.a("EC")).generatePublic(new ECPublicKeySpec(eCPoint, eCParameterSpecC0)), n5P2.o().p(), AbstractC2864y4.G(n5P2.r()), AbstractC2864y4.Z(g5N2.s()), new h(g5N2.m().o()));
            case 12:
                C2675a6 c2675a6 = (C2675a6) abstractC2740j;
                if (!c2675a6.u()) {
                    throw new IllegalArgumentException("HpkePrivateKey is missing public_key field.");
                }
                if (!c2675a6.p().v()) {
                    throw new IllegalArgumentException("HpkePrivateKey.public_key is missing params field.");
                }
                if (c2675a6.q().i() == 0) {
                    throw new IllegalArgumentException("HpkePrivateKey.private_key is empty.");
                }
                Y5 y5N = c2675a6.p().n();
                InterfaceC2721g4 interfaceC2721g4F = AbstractC2864y4.F(y5N);
                C2805r1 c2805r1T = AbstractC2864y4.T(y5N);
                InterfaceC2697d4 interfaceC2697d4H = AbstractC2864y4.h(y5N);
                int iQ2 = y5N.q();
                if (iQ2 - 2 != 1) {
                    throw new IllegalArgumentException("Unable to determine KEM-encoding length for ".concat(AbstractC2864y4.B(iQ2)));
                }
                int iQ3 = c2675a6.p().n().q() - 2;
                if (iQ3 == 1) {
                    byte[] bArrP4 = c2675a6.q().p();
                    g8 = new G4(1, bArrP4, AbstractC2864y4.X(bArrP4));
                } else {
                    if (iQ3 != 2 && iQ3 != 3 && iQ3 != 4) {
                        throw new GeneralSecurityException("Unrecognized HPKE KEM identifier");
                    }
                    byte[] bArrP5 = c2675a6.q().p();
                    byte[] bArrP6 = c2675a6.p().r().p();
                    int iQ4 = c2675a6.p().n().q() - 2;
                    if (iQ4 == 2) {
                        i8 = 1;
                    } else if (iQ4 == 3) {
                        i8 = 2;
                    } else if (iQ4 != 4) {
                        throw new GeneralSecurityException("Unrecognized NIST HPKE KEM identifier");
                    }
                    ECPublicKey eCPublicKeyZ0 = AbstractC2864y4.z0(AbstractC2864y4.C0(i8), bArrP6);
                    ECPrivateKey eCPrivateKeyU1 = AbstractC2864y4.u0(i8, bArrP5);
                    AbstractC2864y4.o0(eCPrivateKeyU1, eCPublicKeyZ0);
                    AbstractC2864y4.f0(eCPublicKeyZ0.getW(), eCPrivateKeyU1.getParams().getCurve());
                    g8 = new G4(0, bArrP5, bArrP6);
                }
                o oVar = new o();
                oVar.f27236G = g8;
                oVar.f27237H = interfaceC2721g4F;
                oVar.f27239J = c2805r1T;
                oVar.f27238I = interfaceC2697d4H;
                return oVar;
            case 13:
                C2691c6 c2691c6 = (C2691c6) abstractC2740j;
                if (c2691c6.r().i() == 0) {
                    throw new IllegalArgumentException("HpkePublicKey.public_key is empty.");
                }
                Y5 y5N2 = c2691c6.n();
                c2713f4 = new C2713f4(c2691c6, AbstractC2864y4.F(y5N2), AbstractC2864y4.T(y5N2), AbstractC2864y4.h(y5N2));
                break;
                break;
            case 14:
                Q4 q7 = (Q4) abstractC2740j;
                return new N6(new C2735i2(q7.q().p()), q7.p().m());
            default:
                P5 p7 = (P5) abstractC2740j;
                int iQ5 = p7.q().q();
                SecretKeySpec secretKeySpec = new SecretKeySpec(p7.r().p(), "HMAC");
                int iM = p7.q().m();
                int i9 = iQ5 - 2;
                if (i9 == 1) {
                    return new N6(new w0("HMACSHA1", secretKeySpec), iM);
                }
                if (i9 == 2) {
                    return new N6(new w0("HMACSHA384", secretKeySpec), iM);
                }
                if (i9 == 3) {
                    return new N6(new w0("HMACSHA256", secretKeySpec), iM);
                }
                if (i9 == 4) {
                    return new N6(new w0("HMACSHA512", secretKeySpec), iM);
                }
                if (i9 == 5) {
                    return new N6(new w0("HMACSHA224", secretKeySpec), iM);
                }
                throw new GeneralSecurityException("unknown hash");
        }
        return c2713f4;
    }

    public AbstractC3012d(Class cls, AbstractC2848w4... abstractC2848w4Arr) {
        this.f25765a = cls;
        HashMap map = new HashMap();
        for (int i8 = 0; i8 <= 0; i8++) {
            AbstractC2848w4 abstractC2848w4 = abstractC2848w4Arr[i8];
            boolean zContainsKey = map.containsKey(abstractC2848w4.f24055a);
            Class cls2 = abstractC2848w4.f24055a;
            if (!zContainsKey) {
                map.put(cls2, abstractC2848w4);
            } else {
                throw new IllegalArgumentException("KeyTypeManager constructed with duplicate factories for primitive ".concat(String.valueOf(cls2.getCanonicalName())));
            }
        }
        this.f25767c = abstractC2848w4Arr[0].f24055a;
        this.f25766b = Collections.unmodifiableMap(map);
    }

    public AbstractC3012d(Context context) {
        this.f25765a = context;
    }
}
