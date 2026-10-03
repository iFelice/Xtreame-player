package p021c4;

/* JADX INFO: renamed from: c4.a1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0565a1 extends AbstractC0604p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f11119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0574d1 f11120f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0565a1(C0574d1 c0574d1, InterfaceC0612t0 interfaceC0612t0, int i8) {
        super(interfaceC0612t0);
        this.f11119e = i8;
        this.f11120f = c0574d1;
    }

    @Override // p021c4.AbstractC0604p
    public final void b() {
        int i8 = this.f11119e;
        C0574d1 c0574d1 = this.f11120f;
        switch (i8) {
            case 0:
                c0574d1.m();
                if (c0574d1.x()) {
                    T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11047T.a("Inactivity, disconnecting from the service");
                    c0574d1.r();
                    break;
                }
                break;
            default:
                T t8 = ((C0597l0) c0574d1.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11042O.a("Tasks have been queued for a long time");
                break;
        }
    }
}
