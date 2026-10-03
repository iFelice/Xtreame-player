package J6;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: renamed from: J6.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0206e extends C0212k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f4234c = AtomicIntegerFieldUpdater.newUpdater(C0206e.class, "_resumed$volatile");
    private volatile /* synthetic */ int _resumed$volatile;

    public C0206e(p185x6.e eVar, Throwable th) {
        super(false, th);
        this._resumed$volatile = 0;
    }
}
