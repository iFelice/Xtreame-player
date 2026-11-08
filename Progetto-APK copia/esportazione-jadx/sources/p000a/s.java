package p000a;

import C6.a;
import D6.h;

/* JADX INFO: loaded from: classes.dex */
public final class s extends h implements a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8608G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ x f8609H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s(x xVar, int i8) {
        super(0);
        this.f8608G = i8;
        this.f8609H = xVar;
    }

    @Override // C6.a
    public final Object invoke() {
        p155t6.h hVar = p155t6.h.f30319a;
        x xVar = this.f8609H;
        int i8 = this.f8608G;
        switch (i8) {
            case 0:
                switch (i8) {
                    case 0:
                        xVar.c();
                        break;
                    default:
                        xVar.b();
                        break;
                }
                break;
            default:
                switch (i8) {
                    case 0:
                        xVar.c();
                        break;
                    default:
                        xVar.b();
                        break;
                }
                break;
        }
        return hVar;
    }
}
