package J6;

import java.util.concurrent.CancellationException;
import z4.q0;

/* JADX INFO: renamed from: J6.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0211j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Throwable f4240c;

    public /* synthetic */ C0211j(Object obj, CancellationException cancellationException, int i8) {
        this(obj, (Object) null, (i8 & 16) != 0 ? null : cancellationException);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0211j)) {
            return false;
        }
        C0211j c0211j = (C0211j) obj;
        return q0.c(this.f4238a, c0211j.f4238a) && q0.c(null, null) && q0.c(null, null) && q0.c(this.f4239b, c0211j.f4239b) && q0.c(this.f4240c, c0211j.f4240c);
    }

    public final int hashCode() {
        Object obj = this.f4238a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 29791;
        Object obj2 = this.f4239b;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f4240c;
        return iHashCode2 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f4238a + ", cancelHandler=null, onCancellation=null, idempotentResume=" + this.f4239b + ", cancelCause=" + this.f4240c + ')';
    }

    public C0211j(Object obj, Object obj2, Throwable th) {
        this.f4238a = obj;
        this.f4239b = obj2;
        this.f4240c = th;
    }
}
