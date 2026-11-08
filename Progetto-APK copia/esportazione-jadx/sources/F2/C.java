package F2;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class C implements p173w2.j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3111G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ByteBuffer f3112H;

    public C(int i8) {
        this.f3111G = i8;
        if (i8 != 1) {
            this.f3112H = ByteBuffer.allocate(8);
        } else {
            this.f3112H = ByteBuffer.allocate(4);
        }
    }

    private void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Long l4 = (Long) obj;
        messageDigest.update(bArr);
        synchronized (this.f3112H) {
            this.f3112H.position(0);
            messageDigest.update(this.f3112H.putLong(l4.longValue()).array());
        }
    }

    @Override // p173w2.j
    public final void h(byte[] bArr, Object obj, MessageDigest messageDigest) {
        switch (this.f3111G) {
            case 0:
                a(bArr, obj, messageDigest);
                return;
            default:
                Integer num = (Integer) obj;
                if (num == null) {
                    return;
                }
                messageDigest.update(bArr);
                synchronized (this.f3112H) {
                    this.f3112H.position(0);
                    messageDigest.update(this.f3112H.putInt(num.intValue()).array());
                    break;
                }
                return;
        }
    }
}
