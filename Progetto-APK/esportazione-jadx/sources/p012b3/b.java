package p012b3;

import U2.h;
import U2.i;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f9839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f9840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f9841c;

    public b(long j8, i iVar, h hVar) {
        this.f9839a = j8;
        if (iVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f9840b = iVar;
        this.f9841c = hVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f9839a == bVar.f9839a && this.f9840b.equals(bVar.f9840b) && this.f9841c.equals(bVar.f9841c);
    }

    public final int hashCode() {
        long j8 = this.f9839a;
        return this.f9841c.hashCode() ^ ((((((int) ((j8 >>> 32) ^ j8)) ^ 1000003) * 1000003) ^ this.f9840b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f9839a + ", transportContext=" + this.f9840b + ", event=" + this.f9841c + "}";
    }
}
