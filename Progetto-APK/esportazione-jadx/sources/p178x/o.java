package p178x;

import E3.f;
import com.google.protobuf.U2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import okhttp3.HttpUrl;
import p000a.r;
import p156u.d;
import p170w.e;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f31162f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f31163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f31166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31167e;

    public final void a(ArrayList arrayList) {
        int size = this.f31163a.size();
        if (this.f31167e != -1 && size > 0) {
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                o oVar = (o) arrayList.get(i8);
                if (this.f31167e == oVar.f31164b) {
                    c(this.f31165c, oVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(d dVar, int i8) {
        int iN;
        int iN2;
        ArrayList arrayList = this.f31163a;
        if (arrayList.size() == 0) {
            return 0;
        }
        e eVar = (e) ((p170w.d) arrayList.get(0)).f30810S;
        dVar.t();
        eVar.b(dVar, false);
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            ((p170w.d) arrayList.get(i9)).b(dVar, false);
        }
        if (i8 == 0 && eVar.f30878y0 > 0) {
            f.a(eVar, dVar, arrayList, 0);
        }
        if (i8 == 1 && eVar.f30879z0 > 0) {
            f.a(eVar, dVar, arrayList, 1);
        }
        try {
            dVar.p();
        } catch (Exception e8) {
            System.err.println(e8.toString() + "\n" + Arrays.toString(e8.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", HttpUrl.FRAGMENT_ENCODE_SET));
        }
        this.f31166d = new ArrayList();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            p170w.d dVar2 = (p170w.d) arrayList.get(i10);
            n nVar = new n();
            nVar.f31161g = new WeakReference(dVar2);
            nVar.f31155a = d.n(dVar2.f30799H);
            nVar.f31156b = d.n(dVar2.f30800I);
            nVar.f31157c = d.n(dVar2.f30801J);
            nVar.f31158d = d.n(dVar2.f30802K);
            nVar.f31159e = d.n(dVar2.f30803L);
            nVar.f31160f = i8;
            this.f31166d.add(nVar);
        }
        if (i8 == 0) {
            iN = d.n(eVar.f30799H);
            iN2 = d.n(eVar.f30801J);
            dVar.t();
        } else {
            iN = d.n(eVar.f30800I);
            iN2 = d.n(eVar.f30802K);
            dVar.t();
        }
        return iN2 - iN;
    }

    public final void c(int i8, o oVar) {
        for (p170w.d dVar : this.f31163a) {
            ArrayList arrayList = oVar.f31163a;
            if (!arrayList.contains(dVar)) {
                arrayList.add(dVar);
            }
            int i9 = oVar.f31164b;
            if (i8 == 0) {
                dVar.f30843m0 = i9;
            } else {
                dVar.f30845n0 = i9;
            }
        }
        this.f31167e = oVar.f31164b;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i8 = this.f31165c;
        if (i8 == 0) {
            str = "Horizontal";
        } else if (i8 == 1) {
            str = "Vertical";
        } else {
            str = i8 == 2 ? "Both" : "Unknown";
        }
        sb.append(str);
        sb.append(" [");
        String strH = r.h(sb, this.f31164b, "] <");
        for (p170w.d dVar : this.f31163a) {
            StringBuilder sbL = r.l(strH, " ");
            sbL.append(dVar.f30831g0);
            strH = sbL.toString();
        }
        return U2.A(strH, " >");
    }
}
