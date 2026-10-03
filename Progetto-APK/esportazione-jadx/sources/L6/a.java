package L6;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p018c1.d;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends d {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4730I = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4731H;
    private volatile /* synthetic */ Object _state$volatile;

    public a(Object obj) {
        super(7);
        this._state$volatile = obj;
    }
}
