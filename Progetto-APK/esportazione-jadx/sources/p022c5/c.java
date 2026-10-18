package p022c5;

import com.google.protobuf.AbstractC2909i1;
import java.util.concurrent.Callable;
import p096m2.f;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11426b;

    public /* synthetic */ c(f fVar, Object obj, int i8) {
        this.f11425a = i8;
        this.f11426b = obj;
    }

    private final AbstractC2909i1 a() {
        throw null;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f11425a) {
            case 0:
                return a();
            default:
                throw null;
        }
    }
}
