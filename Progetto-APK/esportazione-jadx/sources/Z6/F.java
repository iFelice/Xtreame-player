package Z6;

import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public final class F extends TimeZone {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f8485G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f8486H;

    public F(boolean z7, int i8, int i9) {
        if (i8 >= 24) {
            throw new IllegalArgumentException(i8 + " hours out of range");
        }
        if (i9 >= 60) {
            throw new IllegalArgumentException(i9 + " minutes out of range");
        }
        int i10 = ((i8 * 60) + i9) * 60000;
        this.f8485G = z7 ? -i10 : i10;
        StringBuilder sb = new StringBuilder(9);
        sb.append("GMT");
        sb.append(z7 ? '-' : '+');
        sb.append((char) ((i8 / 10) + 48));
        sb.append((char) ((i8 % 10) + 48));
        sb.append(':');
        sb.append((char) ((i9 / 10) + 48));
        sb.append((char) ((i9 % 10) + 48));
        this.f8486H = sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof F) {
            return this.f8486H == ((F) obj).f8486H;
        }
        return false;
    }

    @Override // java.util.TimeZone
    public final String getID() {
        return this.f8486H;
    }

    @Override // java.util.TimeZone
    public final int getOffset(int i8, int i9, int i10, int i11, int i12, int i13) {
        return this.f8485G;
    }

    @Override // java.util.TimeZone
    public final int getRawOffset() {
        return this.f8485G;
    }

    public final int hashCode() {
        return this.f8485G;
    }

    @Override // java.util.TimeZone
    public final boolean inDaylightTime(Date date) {
        return false;
    }

    @Override // java.util.TimeZone
    public final void setRawOffset(int i8) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return "[GmtTimeZone id=\"" + this.f8486H + "\",offset=" + this.f8485G + ']';
    }

    @Override // java.util.TimeZone
    public final boolean useDaylightTime() {
        return false;
    }
}
