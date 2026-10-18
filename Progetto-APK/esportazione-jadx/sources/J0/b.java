package J0;

import J6.r;
import android.content.Context;
import android.graphics.Point;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.nio.ByteBuffer;
import p094m0.C3136t;
import p094m0.P;
import p117p0.M;
import p171w0.i;
import p171w0.k;

/* JADX INFO: loaded from: classes.dex */
public final class b extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4063b;

    public b(Context context, int i8) {
        super(new p171w0.g[1], new a[1]);
        this.f4062a = context;
        this.f4063b = i8;
    }

    @Override // p171w0.k
    public final p171w0.g createInputBuffer() {
        return new p171w0.g(1, 0);
    }

    @Override // p171w0.k
    public final i createOutputBuffer() {
        return new a(this);
    }

    @Override // p171w0.k
    public final p171w0.e createUnexpectedDecodeException(Throwable th) {
        return new c("Unexpected decode error", th);
    }

    @Override // p171w0.k
    public final p171w0.e decode(p171w0.g gVar, i iVar, boolean z7) {
        c cVar;
        a aVar = (a) iVar;
        ByteBuffer byteBuffer = gVar.f30904I;
        byteBuffer.getClass();
        H1.i(byteBuffer.hasArray());
        H1.d(byteBuffer.arrayOffset() == 0);
        try {
            int iMax = this.f4063b;
            if (iMax == -1) {
                Context context = this.f4062a;
                if (context != null) {
                    Point pointV = M.v(context);
                    int i8 = pointV.x;
                    int i9 = pointV.y;
                    C3136t c3136t = gVar.f30902G;
                    if (c3136t != null) {
                        int i10 = c3136t.f27023N;
                        if (i10 != -1) {
                            i8 *= i10;
                        }
                        int i11 = c3136t.f27024O;
                        if (i11 != -1) {
                            i9 *= i11;
                        }
                    }
                    iMax = (Math.max(i8, i9) * 2) - 1;
                } else {
                    iMax = 4096;
                }
            }
            aVar.f4060G = r.f(byteBuffer.array(), byteBuffer.remaining(), iMax);
            aVar.timeUs = gVar.f30906K;
            return null;
        } catch (P e8) {
            cVar = new c("Could not decode image data with BitmapFactory.", e8);
            return cVar;
        } catch (IOException e9) {
            cVar = new c(e9);
            return cVar;
        }
    }

    @Override // p171w0.d
    public final String getName() {
        return "BitmapFactoryImageDecoder";
    }
}
