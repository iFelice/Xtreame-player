package p193z;

import android.view.ViewGroup;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f31579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f31580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f31581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f31582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final n f31583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public HashMap f31584f;

    public j() {
        m mVar = new m();
        mVar.f31663a = 0;
        mVar.f31664b = 0;
        mVar.f31665c = 1.0f;
        mVar.f31666d = Float.NaN;
        this.f31580b = mVar;
        l lVar = new l();
        lVar.f31654a = -1;
        lVar.f31655b = 0;
        lVar.f31656c = -1;
        lVar.f31657d = Float.NaN;
        lVar.f31658e = Float.NaN;
        lVar.f31659f = Float.NaN;
        lVar.f31660g = -1;
        lVar.f31661h = null;
        lVar.f31662i = -1;
        this.f31581c = lVar;
        k kVar = new k();
        kVar.f31612a = false;
        kVar.f31618d = -1;
        kVar.f31620e = -1;
        kVar.f31622f = -1.0f;
        kVar.f31624g = true;
        kVar.f31626h = -1;
        kVar.f31628i = -1;
        kVar.f31630j = -1;
        kVar.f31632k = -1;
        kVar.f31634l = -1;
        kVar.f31636m = -1;
        kVar.f31638n = -1;
        kVar.f31640o = -1;
        kVar.f31642p = -1;
        kVar.f31643q = -1;
        kVar.f31644r = -1;
        kVar.f31645s = -1;
        kVar.f31646t = -1;
        kVar.f31647u = -1;
        kVar.f31648v = -1;
        kVar.f31649w = 0.5f;
        kVar.f31650x = 0.5f;
        kVar.f31651y = null;
        kVar.f31652z = -1;
        kVar.f31586A = 0;
        kVar.f31587B = 0.0f;
        kVar.f31588C = -1;
        kVar.f31589D = -1;
        kVar.f31590E = -1;
        kVar.f31591F = 0;
        kVar.f31592G = 0;
        kVar.f31593H = 0;
        kVar.f31594I = 0;
        kVar.f31595J = 0;
        kVar.f31596K = 0;
        kVar.f31597L = 0;
        kVar.f31598M = Integer.MIN_VALUE;
        kVar.f31599N = Integer.MIN_VALUE;
        kVar.f31600O = Integer.MIN_VALUE;
        kVar.f31601P = Integer.MIN_VALUE;
        kVar.f31602Q = Integer.MIN_VALUE;
        kVar.f31603R = Integer.MIN_VALUE;
        kVar.f31604S = Integer.MIN_VALUE;
        kVar.f31605T = -1.0f;
        kVar.f31606U = -1.0f;
        kVar.f31607V = 0;
        kVar.f31608W = 0;
        kVar.f31609X = 0;
        kVar.f31610Y = 0;
        kVar.f31611Z = 0;
        kVar.f31613a0 = 0;
        kVar.f31615b0 = 0;
        kVar.f31617c0 = 0;
        kVar.f31619d0 = 1.0f;
        kVar.f31621e0 = 1.0f;
        kVar.f31623f0 = -1;
        kVar.f31625g0 = 0;
        kVar.f31627h0 = -1;
        kVar.f31635l0 = false;
        kVar.f31637m0 = false;
        kVar.f31639n0 = true;
        kVar.f31641o0 = 0;
        this.f31582d = kVar;
        n nVar = new n();
        nVar.f31668a = 0.0f;
        nVar.f31669b = 0.0f;
        nVar.f31670c = 0.0f;
        nVar.f31671d = 1.0f;
        nVar.f31672e = 1.0f;
        nVar.f31673f = Float.NaN;
        nVar.f31674g = Float.NaN;
        nVar.f31675h = -1;
        nVar.f31676i = 0.0f;
        nVar.f31677j = 0.0f;
        nVar.f31678k = 0.0f;
        nVar.f31679l = false;
        nVar.f31680m = 0.0f;
        this.f31583e = nVar;
        this.f31584f = new HashMap();
    }

    public final void a(e eVar) {
        k kVar = this.f31582d;
        eVar.f31514e = kVar.f31626h;
        eVar.f31516f = kVar.f31628i;
        eVar.f31518g = kVar.f31630j;
        eVar.f31520h = kVar.f31632k;
        eVar.f31522i = kVar.f31634l;
        eVar.f31524j = kVar.f31636m;
        eVar.f31526k = kVar.f31638n;
        eVar.f31528l = kVar.f31640o;
        eVar.f31530m = kVar.f31642p;
        eVar.f31532n = kVar.f31643q;
        eVar.f31534o = kVar.f31644r;
        eVar.f31540s = kVar.f31645s;
        eVar.f31541t = kVar.f31646t;
        eVar.f31542u = kVar.f31647u;
        eVar.f31543v = kVar.f31648v;
        ((ViewGroup.MarginLayoutParams) eVar).leftMargin = kVar.f31591F;
        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = kVar.f31592G;
        ((ViewGroup.MarginLayoutParams) eVar).topMargin = kVar.f31593H;
        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = kVar.f31594I;
        eVar.f31480A = kVar.f31603R;
        eVar.f31481B = kVar.f31602Q;
        eVar.f31545x = kVar.f31599N;
        eVar.f31547z = kVar.f31601P;
        eVar.f31484E = kVar.f31649w;
        eVar.f31485F = kVar.f31650x;
        eVar.f31536p = kVar.f31652z;
        eVar.f31538q = kVar.f31586A;
        eVar.f31539r = kVar.f31587B;
        eVar.f31486G = kVar.f31651y;
        eVar.f31499T = kVar.f31588C;
        eVar.f31500U = kVar.f31589D;
        eVar.f31488I = kVar.f31605T;
        eVar.f31487H = kVar.f31606U;
        eVar.f31490K = kVar.f31608W;
        eVar.f31489J = kVar.f31607V;
        eVar.f31502W = kVar.f31635l0;
        eVar.f31503X = kVar.f31637m0;
        eVar.f31491L = kVar.f31609X;
        eVar.f31492M = kVar.f31610Y;
        eVar.f31495P = kVar.f31611Z;
        eVar.f31496Q = kVar.f31613a0;
        eVar.f31493N = kVar.f31615b0;
        eVar.f31494O = kVar.f31617c0;
        eVar.f31497R = kVar.f31619d0;
        eVar.f31498S = kVar.f31621e0;
        eVar.f31501V = kVar.f31590E;
        eVar.f31510c = kVar.f31622f;
        eVar.f31506a = kVar.f31618d;
        eVar.f31508b = kVar.f31620e;
        ((ViewGroup.MarginLayoutParams) eVar).width = kVar.f31614b;
        ((ViewGroup.MarginLayoutParams) eVar).height = kVar.f31616c;
        String str = kVar.f31633k0;
        if (str != null) {
            eVar.f31504Y = str;
        }
        eVar.f31505Z = kVar.f31641o0;
        eVar.setMarginStart(kVar.f31596K);
        eVar.setMarginEnd(kVar.f31595J);
        eVar.a();
    }

    public final Object clone() {
        j jVar = new j();
        k kVar = jVar.f31582d;
        kVar.getClass();
        k kVar2 = this.f31582d;
        kVar.f31612a = kVar2.f31612a;
        kVar.f31614b = kVar2.f31614b;
        kVar.f31616c = kVar2.f31616c;
        kVar.f31618d = kVar2.f31618d;
        kVar.f31620e = kVar2.f31620e;
        kVar.f31622f = kVar2.f31622f;
        kVar.f31624g = kVar2.f31624g;
        kVar.f31626h = kVar2.f31626h;
        kVar.f31628i = kVar2.f31628i;
        kVar.f31630j = kVar2.f31630j;
        kVar.f31632k = kVar2.f31632k;
        kVar.f31634l = kVar2.f31634l;
        kVar.f31636m = kVar2.f31636m;
        kVar.f31638n = kVar2.f31638n;
        kVar.f31640o = kVar2.f31640o;
        kVar.f31642p = kVar2.f31642p;
        kVar.f31643q = kVar2.f31643q;
        kVar.f31644r = kVar2.f31644r;
        kVar.f31645s = kVar2.f31645s;
        kVar.f31646t = kVar2.f31646t;
        kVar.f31647u = kVar2.f31647u;
        kVar.f31648v = kVar2.f31648v;
        kVar.f31649w = kVar2.f31649w;
        kVar.f31650x = kVar2.f31650x;
        kVar.f31651y = kVar2.f31651y;
        kVar.f31652z = kVar2.f31652z;
        kVar.f31586A = kVar2.f31586A;
        kVar.f31587B = kVar2.f31587B;
        kVar.f31588C = kVar2.f31588C;
        kVar.f31589D = kVar2.f31589D;
        kVar.f31590E = kVar2.f31590E;
        kVar.f31591F = kVar2.f31591F;
        kVar.f31592G = kVar2.f31592G;
        kVar.f31593H = kVar2.f31593H;
        kVar.f31594I = kVar2.f31594I;
        kVar.f31595J = kVar2.f31595J;
        kVar.f31596K = kVar2.f31596K;
        kVar.f31597L = kVar2.f31597L;
        kVar.f31598M = kVar2.f31598M;
        kVar.f31599N = kVar2.f31599N;
        kVar.f31600O = kVar2.f31600O;
        kVar.f31601P = kVar2.f31601P;
        kVar.f31602Q = kVar2.f31602Q;
        kVar.f31603R = kVar2.f31603R;
        kVar.f31604S = kVar2.f31604S;
        kVar.f31605T = kVar2.f31605T;
        kVar.f31606U = kVar2.f31606U;
        kVar.f31607V = kVar2.f31607V;
        kVar.f31608W = kVar2.f31608W;
        kVar.f31609X = kVar2.f31609X;
        kVar.f31610Y = kVar2.f31610Y;
        kVar.f31611Z = kVar2.f31611Z;
        kVar.f31613a0 = kVar2.f31613a0;
        kVar.f31615b0 = kVar2.f31615b0;
        kVar.f31617c0 = kVar2.f31617c0;
        kVar.f31619d0 = kVar2.f31619d0;
        kVar.f31621e0 = kVar2.f31621e0;
        kVar.f31623f0 = kVar2.f31623f0;
        kVar.f31625g0 = kVar2.f31625g0;
        kVar.f31627h0 = kVar2.f31627h0;
        kVar.f31633k0 = kVar2.f31633k0;
        int[] iArr = kVar2.f31629i0;
        if (iArr == null || kVar2.f31631j0 != null) {
            kVar.f31629i0 = null;
        } else {
            kVar.f31629i0 = Arrays.copyOf(iArr, iArr.length);
        }
        kVar.f31631j0 = kVar2.f31631j0;
        kVar.f31635l0 = kVar2.f31635l0;
        kVar.f31637m0 = kVar2.f31637m0;
        kVar.f31639n0 = kVar2.f31639n0;
        kVar.f31641o0 = kVar2.f31641o0;
        l lVar = jVar.f31581c;
        lVar.getClass();
        l lVar2 = this.f31581c;
        lVar2.getClass();
        lVar.f31654a = lVar2.f31654a;
        lVar.f31656c = lVar2.f31656c;
        lVar.f31658e = lVar2.f31658e;
        lVar.f31657d = lVar2.f31657d;
        m mVar = jVar.f31580b;
        mVar.getClass();
        m mVar2 = this.f31580b;
        mVar2.getClass();
        mVar.f31663a = mVar2.f31663a;
        mVar.f31665c = mVar2.f31665c;
        mVar.f31666d = mVar2.f31666d;
        mVar.f31664b = mVar2.f31664b;
        n nVar = jVar.f31583e;
        nVar.getClass();
        n nVar2 = this.f31583e;
        nVar2.getClass();
        nVar.f31668a = nVar2.f31668a;
        nVar.f31669b = nVar2.f31669b;
        nVar.f31670c = nVar2.f31670c;
        nVar.f31671d = nVar2.f31671d;
        nVar.f31672e = nVar2.f31672e;
        nVar.f31673f = nVar2.f31673f;
        nVar.f31674g = nVar2.f31674g;
        nVar.f31675h = nVar2.f31675h;
        nVar.f31676i = nVar2.f31676i;
        nVar.f31677j = nVar2.f31677j;
        nVar.f31678k = nVar2.f31678k;
        nVar.f31679l = nVar2.f31679l;
        nVar.f31680m = nVar2.f31680m;
        jVar.f31579a = this.f31579a;
        return jVar;
    }
}
