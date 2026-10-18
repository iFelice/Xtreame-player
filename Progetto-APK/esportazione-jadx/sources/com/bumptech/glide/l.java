package com.bumptech.glide;

import F2.C0198h;
import F2.u;
import J2.t;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class l extends L2.a {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final Context f11552g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final n f11553h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final Class f11554i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final f f11555j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public o f11556k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Object f11557l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public ArrayList f11558m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public l f11559n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public l f11560o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f11561p0 = true;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f11562q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f11563r0;

    static {
    }

    public l(b bVar, n nVar, Class cls, Context context) {
        L2.f fVar;
        this.f11553h0 = nVar;
        this.f11554i0 = cls;
        this.f11552g0 = context;
        Map map = nVar.f11595G.f11499I.f11530f;
        o oVar = (o) map.get(cls);
        if (oVar == null) {
            for (Map.Entry entry : map.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    oVar = (o) entry.getValue();
                }
            }
        }
        this.f11556k0 = oVar == null ? f.f11524k : oVar;
        this.f11555j0 = bVar.f11499I;
        Iterator it = nVar.f11603O.iterator();
        while (it.hasNext()) {
            A((L2.e) it.next());
        }
        synchronized (nVar) {
            fVar = nVar.f11604P;
        }
        a(fVar);
    }

    public final l A(L2.e eVar) {
        if (this.f4651b0) {
            return clone().A(eVar);
        }
        if (eVar != null) {
            if (this.f11558m0 == null) {
                this.f11558m0 = new ArrayList();
            }
            this.f11558m0.add(eVar);
        }
        r();
        return this;
    }

    @Override // L2.a
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final l a(L2.a aVar) {
        p102n0.c.b(aVar);
        return (l) super.a(aVar);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x008e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0145  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final L2.c C(int i8, int i9, g gVar, o oVar, L2.a aVar, L2.d dVar, M2.i iVar, Object obj) {
        L2.d dVar2;
        L2.d bVar;
        L2.c hVar;
        int i10;
        g gVar2;
        int i11;
        int i12;
        if (this.f11560o0 != null) {
            bVar = new L2.b(obj, dVar);
            dVar2 = bVar;
        } else {
            dVar2 = null;
            bVar = dVar;
        }
        l lVar = this.f11559n0;
        if (lVar == null) {
            Object obj2 = this.f11557l0;
            ArrayList arrayList = this.f11558m0;
            f fVar = this.f11555j0;
            hVar = new L2.h(this.f11552g0, fVar, obj, obj2, this.f11554i0, aVar, i8, i9, gVar, iVar, arrayList, bVar, fVar.f11531g, oVar.f11605G);
        } else {
            if (this.f11563r0) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            o oVar2 = lVar.f11561p0 ? oVar : lVar.f11556k0;
            if (L2.a.i(lVar.f4630G, 8)) {
                gVar2 = this.f11559n0.f4633J;
            } else {
                int iOrdinal = gVar.ordinal();
                if (iOrdinal == 0 || iOrdinal == 1) {
                    gVar2 = g.f11535G;
                } else if (iOrdinal == 2) {
                    gVar2 = g.f11536H;
                } else {
                    if (iOrdinal != 3) {
                        throw new IllegalArgumentException("unknown priority: " + this.f4633J);
                    }
                    gVar2 = g.f11537I;
                }
            }
            g gVar3 = gVar2;
            l lVar2 = this.f11559n0;
            int i13 = lVar2.f4640Q;
            int i14 = lVar2.f4639P;
            if (P2.o.j(i8, i9)) {
                l lVar3 = this.f11559n0;
                if (P2.o.j(lVar3.f4640Q, lVar3.f4639P)) {
                    i11 = i14;
                    i12 = i13;
                } else {
                    i12 = aVar.f4640Q;
                    i11 = aVar.f4639P;
                }
            } else {
                i11 = i14;
                i12 = i13;
            }
            L2.i iVar2 = new L2.i(obj, bVar);
            Object obj3 = this.f11557l0;
            ArrayList arrayList2 = this.f11558m0;
            f fVar2 = this.f11555j0;
            L2.h hVar2 = new L2.h(this.f11552g0, fVar2, obj, obj3, this.f11554i0, aVar, i8, i9, gVar, iVar, arrayList2, iVar2, fVar2.f11531g, oVar.f11605G);
            this.f11563r0 = true;
            l lVar4 = this.f11559n0;
            L2.c cVarC = lVar4.C(i12, i11, gVar3, oVar2, lVar4, iVar2, iVar, obj);
            this.f11563r0 = false;
            iVar2.f4694c = hVar2;
            iVar2.f4695d = cVarC;
            hVar = iVar2;
        }
        L2.b bVar2 = dVar2;
        if (bVar2 == 0) {
            return hVar;
        }
        l lVar5 = this.f11560o0;
        int i15 = lVar5.f4640Q;
        int i16 = lVar5.f4639P;
        if (P2.o.j(i8, i9)) {
            l lVar6 = this.f11560o0;
            if (P2.o.j(lVar6.f4640Q, lVar6.f4639P)) {
                i10 = i16;
            } else {
                int i17 = aVar.f4640Q;
                i10 = aVar.f4639P;
                i15 = i17;
            }
        } else {
            i10 = i16;
        }
        l lVar7 = this.f11560o0;
        L2.c cVarC2 = lVar7.C(i15, i10, lVar7.f4633J, lVar7.f11556k0, lVar7, bVar2, iVar, obj);
        bVar2.f4658c = hVar;
        bVar2.f4659d = cVarC2;
        return bVar2;
    }

    @Override // L2.a
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final l clone() {
        l lVar = (l) super.clone();
        lVar.f11556k0 = lVar.f11556k0.clone();
        if (lVar.f11558m0 != null) {
            lVar.f11558m0 = new ArrayList(lVar.f11558m0);
        }
        l lVar2 = lVar.f11559n0;
        if (lVar2 != null) {
            lVar.f11559n0 = lVar2.clone();
        }
        l lVar3 = lVar.f11560o0;
        if (lVar3 != null) {
            lVar.f11560o0 = lVar3.clone();
        }
        return lVar;
    }

    public final void E(M2.i iVar, L2.a aVar) {
        p102n0.c.b(iVar);
        if (!this.f11562q0) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        Object obj = new Object();
        o oVar = this.f11556k0;
        L2.c cVarC = C(aVar.f4640Q, aVar.f4639P, aVar.f4633J, oVar, aVar, null, iVar, obj);
        L2.c cVarH = iVar.h();
        if (cVarC.d(cVarH) && (aVar.f4638O || !cVarH.isComplete())) {
            p102n0.c.c(cVarH, "Argument must not be null");
            if (cVarH.isRunning()) {
                return;
            }
            cVarH.g();
            return;
        }
        this.f11553h0.k(iVar);
        iVar.c(cVarC);
        n nVar = this.f11553h0;
        synchronized (nVar) {
            nVar.f11600L.f4128G.add(iVar);
            t tVar = nVar.f11598J;
            ((Set) tVar.f4127J).add(cVarC);
            if (tVar.f4125H) {
                cVarC.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                ((Set) tVar.f4126I).add(cVarC);
            } else {
                cVarC.g();
            }
        }
    }

    public final void F(ImageView imageView) {
        L2.a aVarJ;
        M2.i bVar;
        P2.o.a();
        p102n0.c.b(imageView);
        if (!L2.a.i(this.f4630G, 2048) && this.f4643T && imageView.getScaleType() != null) {
            switch (k.f11550a[imageView.getScaleType().ordinal()]) {
                case 1:
                    aVarJ = clone().j(F2.n.f3146c, new C0198h());
                    break;
                case 2:
                    aVarJ = clone().q(F2.n.f3145b, new F2.i(), false);
                    break;
                case 3:
                case 4:
                case 5:
                    aVarJ = clone().q(F2.n.f3144a, new u(), false);
                    break;
                case 6:
                    aVarJ = clone().q(F2.n.f3145b, new F2.i(), false);
                    break;
                default:
                    aVarJ = this;
                    break;
            }
        } else {
            aVarJ = this;
        }
        this.f11555j0.f11527c.getClass();
        Class cls = this.f11554i0;
        if (Bitmap.class.equals(cls)) {
            bVar = new M2.b(imageView, 0);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
            }
            bVar = new M2.b(imageView, 1);
        }
        E(bVar, aVarJ);
    }

    public final l G(Object obj) {
        if (this.f4651b0) {
            return clone().G(obj);
        }
        this.f11557l0 = obj;
        this.f11562q0 = true;
        r();
        return this;
    }

    public final l H(G2.c cVar) {
        if (this.f4651b0) {
            return clone().H(cVar);
        }
        this.f11556k0 = cVar;
        this.f11561p0 = false;
        r();
        return this;
    }

    @Override // L2.a
    public final boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (super.equals(lVar)) {
            return Objects.equals(this.f11554i0, lVar.f11554i0) && this.f11556k0.equals(lVar.f11556k0) && Objects.equals(this.f11557l0, lVar.f11557l0) && Objects.equals(this.f11558m0, lVar.f11558m0) && Objects.equals(this.f11559n0, lVar.f11559n0) && Objects.equals(this.f11560o0, lVar.f11560o0) && this.f11561p0 == lVar.f11561p0 && this.f11562q0 == lVar.f11562q0;
        }
        return false;
    }

    @Override // L2.a
    public final int hashCode() {
        return P2.o.i(P2.o.i(P2.o.h(P2.o.h(P2.o.h(P2.o.h(P2.o.h(P2.o.h(P2.o.h(super.hashCode(), this.f11554i0), this.f11556k0), this.f11557l0), this.f11558m0), this.f11559n0), this.f11560o0), null), this.f11561p0), this.f11562q0);
    }
}
