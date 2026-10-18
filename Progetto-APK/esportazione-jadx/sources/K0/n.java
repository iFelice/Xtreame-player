package K0;

import android.media.MediaCodec;
import android.os.Build;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public class n extends p171w0.e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f4354G;

    public n(IllegalStateException illegalStateException, o oVar) {
        StringBuilder sb = new StringBuilder("Decoder failed: ");
        sb.append(oVar == null ? null : oVar.f4355a);
        super(sb.toString(), illegalStateException);
        boolean z7 = illegalStateException instanceof MediaCodec.CodecException;
        this.f4354G = Build.VERSION.SDK_INT >= 23 ? z7 ? ((MediaCodec.CodecException) illegalStateException).getErrorCode() : 0 : M.x(z7 ? ((MediaCodec.CodecException) illegalStateException).getDiagnosticInfo() : null);
    }
}
