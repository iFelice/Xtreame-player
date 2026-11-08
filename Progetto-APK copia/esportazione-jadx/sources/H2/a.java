package H2;

import A0.O;
import F2.G;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;
import p096m2.l;
import p173w2.n;
import y2.D;

/* JADX INFO: loaded from: classes.dex */
public final class a implements n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final G f3631f = new G(2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final A2.c f3632g = new A2.c(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f3634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final A2.c f3635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final G f3636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l f3637e;

    public a(Context context, List list, p196z2.d dVar, p196z2.h hVar) {
        G g8 = f3631f;
        this.f3633a = context.getApplicationContext();
        this.f3634b = list;
        this.f3636d = g8;
        this.f3637e = new l(11, dVar, hVar);
        this.f3635c = f3632g;
    }

    public static int d(p159u2.c cVar, int i8, int i9) {
        int iMin = Math.min(cVar.f30462g / i9, cVar.f30461f / i8);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            StringBuilder sbD = O.D("Downsampling GIF, sampleSize: ", iMax, ", target dimens: [", i8, "x");
            sbD.append(i9);
            sbD.append("], actual dimens: [");
            sbD.append(cVar.f30461f);
            sbD.append("x");
            sbD.append(cVar.f30462g);
            sbD.append("]");
            Log.v("BufferGifDecoder", sbD.toString());
        }
        return iMax;
    }

    @Override // p173w2.n
    public final boolean a(Object obj, p173w2.l lVar) {
        return !((Boolean) lVar.c(i.f3673b)).booleanValue() && Q3.b.k(this.f3634b, (ByteBuffer) obj) == ImageHeaderParser$ImageType.GIF;
    }

    @Override // p173w2.n
    public final D b(Object obj, int i8, int i9, p173w2.l lVar) {
        p159u2.d dVar;
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        A2.c cVar = this.f3635c;
        synchronized (cVar) {
            try {
                p159u2.d dVar2 = (p159u2.d) cVar.f620a.poll();
                if (dVar2 == null) {
                    dVar2 = new p159u2.d();
                }
                dVar = dVar2;
                dVar.f30468b = null;
                Arrays.fill(dVar.f30467a, (byte) 0);
                dVar.f30469c = new p159u2.c();
                dVar.f30470d = 0;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                dVar.f30468b = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                dVar.f30468b.order(ByteOrder.LITTLE_ENDIAN);
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            return c(byteBuffer, i8, i9, dVar, lVar);
        } finally {
            this.f3635c.c(dVar);
        }
    }

    public final G2.d c(ByteBuffer byteBuffer, int i8, int i9, p159u2.d dVar, p173w2.l lVar) throws Throwable {
        Bitmap.Config config;
        int i10 = P2.i.f5894b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int i11 = 2;
        try {
            p159u2.c cVarB = dVar.b();
            if (cVarB.f30458c > 0 && cVarB.f30457b == 0) {
                if (lVar.c(i.f3672a) == p173w2.b.f30988H) {
                    try {
                        config = Bitmap.Config.RGB_565;
                    } catch (Throwable th) {
                        th = th;
                    }
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                int iD = d(cVarB, i8, i9);
                G g8 = this.f3636d;
                l lVar2 = this.f3637e;
                g8.getClass();
                p159u2.e eVar = new p159u2.e(lVar2, cVarB, byteBuffer, iD);
                eVar.c(config);
                eVar.f30481k = (eVar.f30481k + 1) % eVar.f30482l.f30458c;
                Bitmap bitmapB = eVar.b();
                if (bitmapB == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        Log.v("BufferGifDecoder", "Decoded GIF from stream in " + P2.i.a(jElapsedRealtimeNanos));
                    }
                    return null;
                }
                G2.d dVar2 = new G2.d(new c(new b(new h(com.bumptech.glide.b.a(this.f3633a), eVar, i8, i9, E2.d.f2824b, bitmapB))), 1);
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + P2.i.a(jElapsedRealtimeNanos));
                }
                return dVar2;
                if (Log.isLoggable("BufferGifDecoder", i11)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + P2.i.a(jElapsedRealtimeNanos));
                }
                throw th;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + P2.i.a(jElapsedRealtimeNanos));
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            i11 = 2;
        }
    }
}
