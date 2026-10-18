package p162u6;

import C6.p;
import H6.c;
import H6.d;
import S3.e;
import java.util.Iterator;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f30540b;

    public /* synthetic */ n(Object obj, int i8) {
        this.f30539a = i8;
        this.f30540b = obj;
    }

    @Override // H6.c
    public final Iterator iterator() {
        int i8 = this.f30539a;
        Object obj = this.f30540b;
        switch (i8) {
            case 0:
                return ((Iterable) obj).iterator();
            case 1:
                p pVar = (p) obj;
                q0.h(pVar, "block");
                d dVar = new d();
                dVar.f3787J = e.c(dVar, dVar, pVar);
                return dVar;
            case 2:
                return (Iterator) obj;
            default:
                return new I6.d((CharSequence) obj);
        }
    }
}
