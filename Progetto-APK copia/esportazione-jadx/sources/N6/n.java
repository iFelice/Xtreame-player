package N6;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4987e = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f4988f = AtomicLongFieldUpdater.newUpdater(n.class, "_state$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final p120p3.e f4989g = new p120p3.e("REMOVE_FROZEN", 5);
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f4993d;

    public n(int i8, boolean z7) {
        this.f4990a = i8;
        this.f4991b = z7;
        int i9 = i8 - 1;
        this.f4992c = i9;
        this.f4993d = new AtomicReferenceArray(i8);
        if (i9 > 1073741823) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if ((i8 & i9) != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public final int a(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f4988f;
            long j8 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j8) != 0) {
                return (2305843009213693952L & j8) != 0 ? 2 : 1;
            }
            int i8 = (int) (1073741823 & j8);
            int i9 = (int) ((1152921503533105152L & j8) >> 30);
            int i10 = this.f4992c;
            if (((i9 + 2) & i10) == (i8 & i10)) {
                return 1;
            }
            boolean z7 = this.f4991b;
            AtomicReferenceArray atomicReferenceArray = this.f4993d;
            if (z7 || atomicReferenceArray.get(i9 & i10) == null) {
                if (f4988f.compareAndSet(this, j8, ((-1152921503533105153L) & j8) | (((long) ((i9 + 1) & 1073741823)) << 30))) {
                    atomicReferenceArray.set(i9 & i10, obj);
                    n nVarC = this;
                    while ((atomicLongFieldUpdater.get(nVarC) & 1152921504606846976L) != 0) {
                        nVarC = nVarC.c();
                        AtomicReferenceArray atomicReferenceArray2 = nVarC.f4993d;
                        int i11 = nVarC.f4992c & i9;
                        Object obj2 = atomicReferenceArray2.get(i11);
                        if ((obj2 instanceof m) && ((m) obj2).f4986a == i9) {
                            atomicReferenceArray2.set(i11, obj);
                        } else {
                            nVarC = null;
                        }
                        if (nVarC == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
            } else {
                int i12 = this.f4990a;
                if (i12 < 1024 || ((i9 - i8) & 1073741823) > (i12 >> 1)) {
                    return 1;
                }
            }
        }
    }

    public final boolean b() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j8;
        do {
            atomicLongFieldUpdater = f4988f;
            j8 = atomicLongFieldUpdater.get(this);
            if ((j8 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j8) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j8, 2305843009213693952L | j8));
        return true;
    }

    public final n c() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j8;
        while (true) {
            atomicLongFieldUpdater = f4988f;
            j8 = atomicLongFieldUpdater.get(this);
            if ((j8 & 1152921504606846976L) != 0) {
                break;
            }
            long j9 = j8 | 1152921504606846976L;
            if (atomicLongFieldUpdater.compareAndSet(this, j8, j9)) {
                j8 = j9;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4987e;
            n nVar = (n) atomicReferenceFieldUpdater.get(this);
            if (nVar != null) {
                return nVar;
            }
            n nVar2 = new n(this.f4990a * 2, this.f4991b);
            int i8 = (int) (1073741823 & j8);
            int i9 = (int) ((1152921503533105152L & j8) >> 30);
            while (true) {
                int i10 = this.f4992c;
                int i11 = i8 & i10;
                if (i11 == (i10 & i9)) {
                    break;
                }
                Object mVar = this.f4993d.get(i11);
                if (mVar == null) {
                    mVar = new m(i8);
                }
                nVar2.f4993d.set(nVar2.f4992c & i8, mVar);
                i8++;
            }
            atomicLongFieldUpdater.set(nVar2, (-1152921504606846977L) & j8);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, nVar2) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    public final Object d() {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f4988f;
            long j8 = atomicLongFieldUpdater.get(this);
            if ((j8 & 1152921504606846976L) != 0) {
                return f4989g;
            }
            int i8 = (int) (j8 & 1073741823);
            int i9 = (int) ((1152921503533105152L & j8) >> 30);
            int i10 = this.f4992c;
            int i11 = i8 & i10;
            if ((i9 & i10) == i11) {
                return null;
            }
            AtomicReferenceArray atomicReferenceArray = this.f4993d;
            Object obj = atomicReferenceArray.get(i11);
            boolean z7 = this.f4991b;
            if (obj == null) {
                if (z7) {
                    return null;
                }
            } else {
                if (obj instanceof m) {
                    return null;
                }
                long j9 = (i8 + 1) & 1073741823;
                if (atomicLongFieldUpdater.compareAndSet(this, j8, (j8 & (-1073741824)) | j9)) {
                    atomicReferenceArray.set(i11, null);
                    return obj;
                }
                if (z7) {
                    n nVarC = this;
                    while (true) {
                        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f4988f;
                        long j10 = atomicLongFieldUpdater2.get(nVarC);
                        int i12 = (int) (j10 & 1073741823);
                        if ((j10 & 1152921504606846976L) != 0) {
                            nVarC = nVarC.c();
                        } else {
                            if (atomicLongFieldUpdater2.compareAndSet(nVarC, j10, (j10 & (-1073741824)) | j9)) {
                                nVarC.f4993d.set(nVarC.f4992c & i12, null);
                                nVarC = null;
                            } else {
                                continue;
                            }
                        }
                        if (nVarC == null) {
                            return obj;
                        }
                    }
                }
            }
        }
    }
}
