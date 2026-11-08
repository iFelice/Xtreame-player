package W0;

import com.google.android.gms.internal.ads.AbstractC2290yJ;
import com.google.android.gms.internal.ads.BJ;
import com.google.android.gms.internal.ads.C1003Ye;
import com.google.android.gms.internal.ads.C1017Ze;
import com.google.android.gms.internal.ads.J3;
import com.google.android.gms.internal.ads.K3;
import com.google.android.gms.internal.ads.M3;
import com.google.android.gms.internal.ads.N3;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f7458a;

    public final long a(ByteBuffer byteBuffer) {
        N3 n7;
        M3 m7;
        long j8 = this.f7458a;
        if (j8 > 0) {
            return j8;
        }
        try {
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.flip();
            J3 j9 = new J3(new C1003Ye(byteBufferDuplicate), C1017Ze.f17783c);
            C1003Ye c1003Ye = j9.f22016H;
            ArrayList arrayList = j9.f22020L;
            List bj = arrayList;
            if (c1003Ye != null && j9.f22017I != AbstractC2290yJ.f22014M) {
                bj = arrayList;
                bj = new BJ(arrayList, j9);
            }
            bj = arrayList;
            Iterator it = bj.iterator();
            while (true) {
                n7 = null;
                if (!it.hasNext()) {
                    m7 = null;
                    break;
                }
                K3 k8 = (K3) it.next();
                if (k8 instanceof M3) {
                    m7 = (M3) k8;
                    break;
                }
            }
            C1003Ye c1003Ye2 = m7.f22016H;
            ArrayList arrayList2 = m7.f22020L;
            List<K3> bj2 = arrayList2;
            if (c1003Ye2 != null && m7.f22017I != AbstractC2290yJ.f22014M) {
                bj2 = arrayList2;
                bj2 = new BJ(arrayList2, m7);
            }
            bj2 = arrayList2;
            for (K3 k9 : bj2) {
                if (k9 instanceof N3) {
                    n7 = (N3) k9;
                    break;
                }
            }
            long j10 = (n7.f14873S * 1000) / n7.f14872R;
            this.f7458a = j10;
            return j10;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
