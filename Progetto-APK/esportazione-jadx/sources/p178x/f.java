package p178x;

import java.util.ArrayList;
import java.util.Iterator;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public class f implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p f31139d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31141f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f31142g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p f31136a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31137b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31138c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31140e = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f31143h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g f31144i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f31145j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f31146k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f31147l = new ArrayList();

    public f(p pVar) {
        this.f31139d = pVar;
    }

    @Override // p178x.d
    public final void a(d dVar) {
        ArrayList<f> arrayList = this.f31147l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((f) it.next()).f31145j) {
                return;
            }
        }
        this.f31138c = true;
        p pVar = this.f31136a;
        if (pVar != null) {
            pVar.a(this);
        }
        if (this.f31137b) {
            this.f31139d.a(this);
            return;
        }
        f fVar = null;
        int i8 = 0;
        for (f fVar2 : arrayList) {
            if (!(fVar2 instanceof g)) {
                i8++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i8 == 1 && fVar.f31145j) {
            g gVar = this.f31144i;
            if (gVar != null) {
                if (!gVar.f31145j) {
                    return;
                } else {
                    this.f31141f = this.f31143h * gVar.f31142g;
                }
            }
            d(fVar.f31142g + this.f31141f);
        }
        p pVar2 = this.f31136a;
        if (pVar2 != null) {
            pVar2.a(this);
        }
    }

    public final void b(d dVar) {
        this.f31146k.add(dVar);
        if (this.f31145j) {
            dVar.a(dVar);
        }
    }

    public final void c() {
        this.f31147l.clear();
        this.f31146k.clear();
        this.f31145j = false;
        this.f31142g = 0;
        this.f31138c = false;
        this.f31137b = false;
    }

    public void d(int i8) {
        if (this.f31145j) {
            return;
        }
        this.f31145j = true;
        this.f31142g = i8;
        for (d dVar : this.f31146k) {
            dVar.a(dVar);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f31139d.f31169b.f30831g0);
        sb.append(":");
        sb.append(a.m(this.f31140e));
        sb.append("(");
        sb.append(this.f31145j ? Integer.valueOf(this.f31142g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f31147l.size());
        sb.append(":d=");
        sb.append(this.f31146k.size());
        sb.append(">");
        return sb.toString();
    }
}
