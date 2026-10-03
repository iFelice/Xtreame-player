package p113o3;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.InterfaceC1445i3;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import p083k3.l;

/* JADX INFO: loaded from: classes.dex */
public final class z implements InterfaceC1445i3 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public long f28005G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f28006H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f28007I;

    public z(long j8) {
        this.f28006H = Long.MIN_VALUE;
        this.f28007I = new Object();
        this.f28005G = j8;
    }

    public final void a(long j8) {
        synchronized (this.f28007I) {
            this.f28005G = j8;
        }
    }

    public final boolean b() {
        synchronized (this.f28007I) {
            try {
                l.f25980A.f25990j.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (this.f28006H + this.f28005G > jElapsedRealtime) {
                    return false;
                }
                this.f28006H = jElapsedRealtime;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1445i3
    public final long zza() {
        return this.f28006H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1445i3
    public final void zzb(MessageDigest[] messageDigestArr, long j8, int i8) throws IOException {
        MappedByteBuffer map = ((FileChannel) this.f28007I).map(FileChannel.MapMode.READ_ONLY, this.f28005G + j8, i8);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }

    public z(FileChannel fileChannel, long j8, long j9) {
        this.f28007I = fileChannel;
        this.f28005G = j8;
        this.f28006H = j9;
    }
}
