package O2;

import P2.o;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import p173w2.i;

/* JADX INFO: loaded from: classes.dex */
public final class a implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f5563c;

    public a(int i8, i iVar) {
        this.f5562b = i8;
        this.f5563c = iVar;
    }

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        this.f5563c.b(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f5562b).array());
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f5562b == aVar.f5562b && this.f5563c.equals(aVar.f5563c);
    }

    @Override // p173w2.i
    public final int hashCode() {
        return o.h(this.f5562b, this.f5563c);
    }
}
