package p166v2;

import C2.B;
import C2.C;
import C2.t;
import okhttp3.Call;
import p173w2.l;

/* JADX INFO: loaded from: classes.dex */
public final class c implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Call.Factory f30562a;

    public c(Call.Factory factory) {
        this.f30562a = factory;
    }

    @Override // C2.C
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, l lVar) {
        t tVar = (t) obj;
        return new B(tVar, new a(this.f30562a, tVar));
    }
}
