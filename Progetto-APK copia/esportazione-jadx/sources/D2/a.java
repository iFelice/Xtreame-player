package D2;

import C2.A;
import C2.B;
import C2.C;
import C2.C0091g;
import C2.t;
import java.util.ArrayDeque;
import p173w2.k;
import p173w2.l;

/* JADX INFO: loaded from: classes.dex */
public final class a implements C {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f2305b = k.a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0091g f2306a;

    public a(C0091g c0091g) {
        this.f2306a = c0091g;
    }

    @Override // C2.C
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, l lVar) {
        t tVar = (t) obj;
        C0091g c0091g = this.f2306a;
        if (c0091g != null) {
            A a8 = A.a(tVar);
            Object objA = ((P2.k) c0091g.f1387H).a(a8);
            ArrayDeque arrayDeque = A.f1343d;
            synchronized (arrayDeque) {
                arrayDeque.offer(a8);
            }
            t tVar2 = (t) objA;
            if (tVar2 == null) {
                ((P2.k) c0091g.f1387H).d(A.a(tVar), tVar);
            } else {
                tVar = tVar2;
            }
        }
        return new B(tVar, new com.bumptech.glide.load.data.l(tVar, ((Integer) lVar.c(f2305b)).intValue()));
    }
}
