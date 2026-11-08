package J3;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class y extends z {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Callable f4188e;

    public /* synthetic */ y(n nVar) {
        super(false, null, null);
        this.f4188e = nVar;
    }

    @Override // J3.z
    public final String a() {
        try {
            return (String) this.f4188e.call();
        } catch (Exception e8) {
            throw new RuntimeException(e8);
        }
    }
}
