package C0;

import J6.C0207f;
import J6.InterfaceC0221u;
import J6.J;
import J6.Q;
import O0.C0296u;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay;
import java.util.Map;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.Y;
import p094m0.w0;
import p117p0.InterfaceC3172j;
import z4.q0;

/* JADX INFO: renamed from: C0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0079d implements p117p0.u, p117p0.v, InterfaceC3172j, p148t.j, p020c3.b, FirebaseInAppMessagingDisplay, p085k6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1293G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f1294H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f1295I;

    public /* synthetic */ C0079d(int i8, Object obj, Object obj2) {
        this.f1293G = i8;
        this.f1294H = obj;
        this.f1295I = obj2;
    }

    @Override // p117p0.InterfaceC3172j
    public final void accept(Object obj) {
        O0.D d6 = (O0.D) this.f1294H;
        ((O0.E) obj).M(d6.f5030a, d6.f5031b, (C0296u) this.f1295I);
    }

    @Override // p148t.j
    public final Object b(p148t.i iVar) {
        J j8 = (InterfaceC0221u) this.f1294H;
        q0.h(j8, "$this_asListenableFuture");
        ((Q) j8).r(true, new C0207f(new H1.a(0, iVar, j8), 1));
        return this.f1295I;
    }

    @Override // p117p0.v
    public final void c(Object obj, p094m0.r rVar) {
        F f8 = (F) ((InterfaceC0078c) obj);
        f8.d((Y) this.f1295I, new p096m2.l(rVar, ((A) this.f1294H).f1230K));
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay
    public final void displayMessage(p030d5.e eVar, V4.D d6) {
        ((W4.e) this.f1294H).getClass();
        throw null;
    }

    @Override // p020c3.b
    public final Object execute() {
        int i8 = this.f1293G;
        Object obj = this.f1295I;
        p004a3.j jVar = (p004a3.j) this.f1294H;
        switch (i8) {
            case 15:
                Iterable iterable = (Iterable) obj;
                p012b3.j jVar2 = (p012b3.j) jVar.f8678c;
                jVar2.getClass();
                if (iterable.iterator().hasNext()) {
                    jVar2.k().compileStatement("DELETE FROM events WHERE _id in " + p012b3.j.b0(iterable)).execute();
                }
                break;
            default:
                jVar.getClass();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    long jIntValue = ((Integer) entry.getValue()).intValue();
                    X2.c cVar = X2.c.INVALID_PAYLOD;
                    String str = (String) entry.getKey();
                    p012b3.j jVar3 = (p012b3.j) jVar.f8684i;
                    jVar3.getClass();
                    jVar3.N(new o(str, jIntValue, cVar));
                }
                break;
        }
        return null;
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        switch (this.f1293G) {
            case 0:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 1:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 2:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 3:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 4:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 5:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 6:
            default:
                w0 w0Var = (w0) this.f1295I;
                F f8 = (F) ((InterfaceC0078c) obj);
                F.d dVar = f8.f1268p;
                if (dVar != null) {
                    C3136t c3136t = (C3136t) dVar.f2962I;
                    if (c3136t.f27049w == -1) {
                        C3135s c3135sA = c3136t.a();
                        c3135sA.f27003u = w0Var.f27063a;
                        c3135sA.f27004v = w0Var.f27064b;
                        C3136t c3136t2 = new C3136t(c3135sA);
                        f8.f1268p = new F.d((String) dVar.f2963J, dVar.f2961H, 1, c3136t2);
                    }
                }
                int i8 = w0Var.f27063a;
                break;
            case 7:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 8:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 9:
                ((InterfaceC0078c) obj).getClass();
                break;
            case 10:
                ((InterfaceC0078c) obj).getClass();
                break;
        }
    }
}
